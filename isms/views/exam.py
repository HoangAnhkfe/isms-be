#!/usr/bin/python -tt
# -*- coding: utf-8 -*-

"""exam.py
Define all api in exam pages
"""
import datetime
from logging import getLogger
from flask import Blueprint, render_template, request, session
from routes import IsmsRouter
from schemas import *
from flask_sqlalchemy import SQLAlchemy
from libs.constants import CategoryTypeEnum, StatusTypeEnum
from config import SHORT_TIME_FORMAT
from libs.user_permission import UserTypeEnum, user_required, get_admin_type_in_session
db = SQLAlchemy()
logger = getLogger(__name__)
mod = Blueprint('exam', __name__, url_prefix='/exam', static_folder="static", template_folder="../templates/home")


@mod.route('/<int:detail_id>/<int:user_detail_id>')
@user_required
def example(detail_id, user_detail_id):
    """
    Get example for user_id
    - Step 1: Get existed example
    - Step 2: Create new example if non existed
    :param detail_id:
    :param user_detail_id:
    :return:
    """
    detail = db.session.query(Detail).filter(Detail.id == detail_id).first()
    user_detail = db.session.query(Userdetail).filter(Userdetail.id == user_detail_id).first()
    list_question = get_list_question_id_of_user_detail_in_db(user_detail_id)
    start_time = user_detail.start_time.strftime(SHORT_TIME_FORMAT)
    if not list_question:
        create_user_question(user_detail_id, detail)
        list_question = get_list_question_id_of_user_detail_in_db(user_detail_id)
    return render_template('example.html', SDKRouter=IsmsRouter,
                           detail=detail,
                           list_question=list_question, category_type=CategoryTypeEnum, start_time=start_time,
                           user_detail=user_detail)


@mod.route('<int:user_detail_id>/answer/<int:user_question_id>', methods=['POST'])
@user_required
def update_answer_user_question(user_detail_id, user_question_id):
    answer_id = request.form['answer_id']
    answer = db.session.query(Answer).filter_by(id=answer_id).first()
    db.session.query(Userquestion).filter_by(id=user_question_id).update(
        dict(answer_id=answer_id, status=answer.is_correct))
    db.session.commit()
    current_date = datetime.datetime.now()
    db.session.query(Userdetail).filter_by(id=user_detail_id).update(dict(end_time=current_date))
    db.session.commit()
    return 'success'


@mod.route('/<int:detail_id>/submit/<int:user_detail_id>', methods=['POST'])
@user_required
def submit_exam(detail_id, user_detail_id):
    detail = db.session.query(Detail).filter_by(id=detail_id).first()
    list_question = get_list_question_id_of_user_detail_in_db(user_detail_id)
    result = get_result_exam_pass_or_fail(qms_pass=detail.qms_pass, isms_pass=detail.isms_pass,
                                          list_question=list_question)
    exam_status = StatusTypeEnum.FAIL.value
    if result:
        exam_status = StatusTypeEnum.PASS.value
    current_date = datetime.datetime.now()
    db.session.query(Userdetail).filter_by(id=user_detail_id).update(dict(end_time=current_date, status_id=exam_status))
    db.session.commit()
    session.pop('user', None)
    session.pop('user_status', None)
    return 'success'


@mod.route('<int:detail_id>/result/<int:user_detail_id>')
def get_result_exam(detail_id, user_detail_id):
    detail = db.session.query(Detail).filter(Detail.id == detail_id).first()
    user_detail, user_status = db.session.query(Userdetail, Maexamplestatu.status).join(Maexamplestatu,
                                                                                        Maexamplestatu.id == Userdetail.status_id).filter(
        Userdetail.id == user_detail_id).first()
    list_question = get_list_question_id_of_user_detail_in_db(user_detail_id)
    true_total = get_total_result_answer_of_user_detail(list_question, True)
    false_total = get_total_result_answer_of_user_detail(list_question, False)
    start_time = user_detail.start_time.strftime(SHORT_TIME_FORMAT)
    time = user_detail.end_time - user_detail.start_time
    return render_template('example_result.html', SDKRouter=IsmsRouter,
                           detail=detail,
                           list_question=list_question, category_type=CategoryTypeEnum, start_time=start_time,
                           user_detail=user_detail,
                           true_total=true_total,
                           false_total=false_total,
                           result=user_status,
                           time=time
                           )


def get_result_exam_pass_or_fail(qms_pass, isms_pass, list_question):
    """
    Get result exam of user pass or fail
    :param qms_pass:
    :param isms_pass:
    :param list_question:
    :return: True or False
    """
    qms_total = get_result_answer_true_or_false_of_user_detail_by_category(list_question, CategoryTypeEnum.QMS_Category.value)
    isms_total = get_result_answer_true_or_false_of_user_detail_by_category(list_question, CategoryTypeEnum.ISMS_Category.value)
    if qms_pass <= qms_total and isms_pass <= isms_total:
        return True
    return False


def get_result_answer_true_or_false_of_user_detail_by_category(list_question, category):
    """
    Get total result true or false of user by category
    :param list_question: 
    :param category: 
    :return: total
    """
    total = 0
    for item in list_question:
        if item.Question.category == category:
            if item.status:
                total += 1
    return total


def get_total_result_answer_of_user_detail(list_question, is_correct):
    """
    Get total result answer of user by status
    :param list_question:
    :param is_correct:
    :return: total
    """
    total = 0
    for item in list_question:
        if item.status == is_correct:
            total += 1
    return total


def get_list_question_id_of_user_detail_in_db(user_detail_id):
    """
    Get list question by user_detail_id
    :param user_detail_id:
    :return: list question
    """
    return db.session.query(Question).join(Userquestion).add_columns(
        Userquestion.id, Userquestion.answer_id, Userquestion.status).filter(
        Userquestion.user_detail_id == user_detail_id).order_by(Userquestion.id).all()


def get_random_question_by_category(total, category):
    """
    Get list random question by category and total count
    :param total:
    :param category:
    :return: list question
    """
    list_qms = db.session.query(Question).filter_by(category=category). \
        filter(Question.deleted_flag.isnot(True)). \
        order_by(db.func.random()).limit(total).all()
    return list_qms


def create_user_question(user_detail_id, detail):
    """
    Create user question for user_detail_id
    - Step 1: Get list random question by category and total count
    - Step 2: Insert list user question to database
    :param user_detail_id:
    :return:
    """
    list_question_qms = get_random_question_by_category(detail.qms_total, CategoryTypeEnum.QMS_Category.value)
    list_question_isms = get_random_question_by_category(detail.isms_total, CategoryTypeEnum.ISMS_Category.value)
    user_question_sql = []
    for item in list_question_qms:
        user_question = Userquestion(user_detail_id=user_detail_id, question_id=item.id)
        user_question_sql.append(user_question)
    for item in list_question_isms:
        user_question = Userquestion(user_detail_id=user_detail_id, question_id=item.id)
        user_question_sql.append(user_question)
    db.session.bulk_save_objects(user_question_sql)
    db.session.commit()
