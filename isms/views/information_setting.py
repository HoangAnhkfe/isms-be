#!/usr/bin/python -tt
# -*- coding: utf-8 -*-

"""question.py
Define all api in setting pages
"""
import json
import re
from logging import getLogger
from flask import Blueprint, render_template, request, redirect, url_for, jsonify, session
from routes import IsmsRouter
from schemas import *
from flask_sqlalchemy import SQLAlchemy
from libs.user_permission import admin_required, UserTypeEnum
from datetime import datetime
from libs.constants import CategoryTypeEnum, StatusTypeEnum
from config import SHORT_DATE_FORMAT
import asyncio

db = SQLAlchemy()
logger = getLogger(__name__)
mod = Blueprint('setting', __name__, url_prefix='/setting', static_folder="static",
                template_folder="../templates/admin")


@mod.route('/', methods=['GET', 'POST'])
@admin_required
def get_information_setting():
    """
        Get detail new
        Create detail
    """
    if request.method == 'POST':
        greeting = request.form['greeting']
        time = re.split("-", request.form['dates'])
        exam_time = request.form['exam_time']
        qms_total = request.form['qms_total']
        qms_pass = request.form['qms_pass']
        isms_total = request.form['isms_total']
        isms_pass = request.form['isms_pass']
        contestants_str = request.form['contestants']
        documentation = request.form['documentation']
        start_time = datetime.strptime(time[0].strip(), SHORT_DATE_FORMAT)
        end_time = datetime.strptime(time[1].strip(), SHORT_DATE_FORMAT)
        detail = Detail(greeting=greeting,
                        start_time=start_time,
                        end_time=end_time,
                        exam_time=exam_time,
                        file=documentation,
                        qms_total=qms_total,
                        isms_total=isms_total,
                        qms_pass=qms_pass,
                        isms_pass=isms_pass)
        db.session.add(detail)
        db.session.commit()
        emails = get_list_email(contestants_str)
        create_user_an_create_exam(emails, detail)
        return redirect(url_for('setting.get_information_setting'))
    detail_id = session.get('detail', None)
    detail = db.session.query(Detail).filter(Detail.deleted_flag.isnot(True)).order_by(Detail.updated_at.desc()).first()
    if detail:
        emails = db.session.query(Email.name).filter(Email.detail_id == detail.id, Email.deleted_flag.isnot(True)).all()
        email_name = list(sum(emails, ()))
        email_str = "\n".join(email_name)
        start_time = "{:%m/%d/%Y}".format(detail.start_time)
        end_time = "{:%m/%d/%Y}".format(detail.end_time)
        return render_template('information_setting.html', SDKRouter=IsmsRouter, detail=detail, emails=email_str,
                               start_time=start_time, end_time=end_time)
    return render_template('information_setting.html', SDKRouter=IsmsRouter)


@mod.route('/update/<int:detail_id>', methods=['GET', 'POST'])
@admin_required
def update_information_setting(detail_id):
    greeting = request.form['greeting']
    time = re.split("-", request.form['dates'])
    exam_time = request.form['exam_time']
    qms_total = request.form['qms_total']
    qms_pass = request.form['qms_pass']
    isms_total = request.form['isms_total']
    isms_pass = request.form['isms_pass']
    contestants_str = request.form['contestants']
    documentation = request.form['documentation']
    start_time = datetime.strptime(time[0].strip(), SHORT_DATE_FORMAT)
    end_time = datetime.strptime(time[1].strip(), SHORT_DATE_FORMAT)
    new_detail = Detail(
        id=detail_id,
        greeting=greeting,
        start_time=start_time,
        end_time=end_time,
        exam_time=exam_time,
        file=documentation,
        qms_total=qms_total,
        isms_total=isms_total,
        qms_pass=qms_pass,
        isms_pass=isms_pass)
    db.session.merge(new_detail)
    db.session.commit()
    update_result_exam_of_all_user(detail=new_detail)
    list_email = get_list_email(contestants_str)
    db.session.query(Email).filter(Email.detail_id == detail_id, Email.name.notin_(list_email)).update(
        dict(deleted_flag=1), synchronize_session='fetch')
    db.session.commit()
    list_email_db = db.session.query(Email).filter(Email.detail_id == detail_id, Email.deleted_flag.isnot(True)).all()
    for item in list_email_db:
        list_email.remove(item.name)
    create_user_an_create_exam(list_email, new_detail)
    return redirect(url_for('setting.get_information_setting'))


def get_list_email(email_txt):
    """
    Get list email
    :param email_txt:
    :return: list
    """
    email_txt = email_txt.replace(',', ' ')
    list_email = re.findall(r"\S+", email_txt)
    return list_email


def get_user_by_email(email):
    """
    Get user by email
    :param email:
    - If user exits get user
    - If user does not exits, create new user
    :return: user
    """
    user = db.session.query(User).filter(User.email == email, User.deleted_flag.isnot(True)).first()
    if user:
        return user
    user = User(email=email, type=UserTypeEnum.MEMBER_LOGIN.value)
    db.session.add(user)
    db.session.commit()
    return user


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


def create_user_question(list_user_detail, detail):
    """
    Create user question for user_detail_id
    - Step 1: Get list random question by category and total count
    - Step 2: Insert list user question to database
    :param user_detail_id:
    :return:
    """
    user_question_sql = []
    for item in list_user_detail:
        list_question_qms = get_random_question_by_category(detail.qms_total, CategoryTypeEnum.QMS_Category.value)
        list_question_isms = get_random_question_by_category(detail.isms_total, CategoryTypeEnum.ISMS_Category.value)
        for item_qms in list_question_qms:
            user_question = Userquestion(user_detail_id=item.id, question_id=item_qms.id)
            user_question_sql.append(user_question)
        for item_isms in list_question_isms:
            user_question = Userquestion(user_detail_id=item.id, question_id=item_isms.id)
            user_question_sql.append(user_question)
    db.session.bulk_save_objects(user_question_sql)
    db.session.commit()


def create_user_an_create_exam(emails, detail):
    """
    Create user and create exam to user
    :param emails:
    :param detail:
    :return:
    """
    if len(emails) > 0:
        email_sql = []
        for item in emails:
            email_sql.append(Email(detail_id=detail.id,
                                   name=item))
        db.session.bulk_save_objects(email_sql)
        db.session.commit()
        list_user = []
        for item in email_sql:
            user = get_user_by_email(item.name)
            list_user.append(user)
        list_user_detail = []
        for item in list_user:
            list_user_detail.append(
                (Userdetail(user_id=item.id, status_id=StatusTypeEnum.INIT_EXAM.value, detail_id=detail.id)))
        db.session.add_all(list_user_detail)
        db.session.commit()
        create_user_question(list_user_detail, detail)


def get_list_user_took_the_exam(detail_id):
    """
    Get a list of users who have taken the exam
    :param detail_id:
    :return: list_user_detail
    """
    return db.session.query(Userdetail).filter(Userdetail.detail_id == detail_id,
                                               Userdetail.status_id != StatusTypeEnum.INIT_EXAM.value).all()


def get_total_question_pass_of_user_detail_by_category(user_detail_id, category):
    """
    Get a total questions pass of users by category
    :param user_detail_id:
    :param category:
    :return: list_user_question
    """
    return db.session.query(Userquestion).join(Question, Question.id == Userquestion.question_id). \
        join(Answer, Answer.id == Userquestion.answer_id).add_columns(Question.category).filter(
        Userquestion.user_detail_id == user_detail_id, Answer.is_correct, Question.category == category).count()


def get_list_user_result_pass_or_fail(list_user_detail, status, detail):
    """
    Converts data list user pass or fail into statistical data result format
    :param list_user_detail:
    :return: list_user_result
    """
    list_user_detail_id = []
    for item in list_user_detail:
        qms_total = get_total_question_pass_of_user_detail_by_category(item.id,
                                                                       CategoryTypeEnum.QMS_Category.value)
        isms_total = get_total_question_pass_of_user_detail_by_category(item.id,
                                                                        CategoryTypeEnum.ISMS_Category.value)
        if (qms_total >= int(detail.qms_pass) and isms_total >= int(detail.isms_pass)) == status:
            list_user_detail_id.append(item.id)
    return list_user_detail_id


def update_result_exam_of_all_user(detail):
    """
    Update result of all user
    :param detail:
    :return:
    """
    list_user_detail = get_list_user_took_the_exam(detail_id=detail.id)
    list_user_detail_id_pass = get_list_user_result_pass_or_fail(list_user_detail=list_user_detail, status=True,
                                                                 detail=detail)
    list_user_detail_id_fail = get_list_user_result_pass_or_fail(list_user_detail=list_user_detail, status=False,
                                                                 detail=detail)
    db.session.query(Userdetail).filter(Userdetail.id.in_(list_user_detail_id_pass)).update(
        dict(status_id=StatusTypeEnum.FORCE_PASS.value, updated_acc=session.get('admin', None)),
        synchronize_session='fetch')
    db.session.query(Userdetail).filter(Userdetail.id.in_(list_user_detail_id_fail)).update(
        dict(status_id=StatusTypeEnum.FORCE_FAIL.value, updated_acc=session.get('admin', None)),
        synchronize_session='fetch')
    db.session.commit()
