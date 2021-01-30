#!/usr/bin/python -tt
# -*- coding: utf-8 -*-

"""home.py
Define all api in home pages
"""
import json
from logging import getLogger
from flask import Blueprint, render_template, g, session, request, url_for, redirect
from routes import IsmsRouter
from schemas import *
from flask_sqlalchemy import SQLAlchemy
from libs.user_permission import UserTypeEnum
from libs.constants import StatusTypeEnum
from config import SHORT_DATE_FORMAT
import datetime

db = SQLAlchemy()
logger = getLogger(__name__)
mod = Blueprint('home', __name__, url_prefix='/home', static_folder="static", template_folder="../templates/home")


@mod.route('/')
def home():
    """Return welcome page for non-login user"""
    current_time = datetime.datetime.now()
    detail = db.session.query(Detail).filter(Detail.end_time > current_time, Detail.start_time < current_time,
                                             Detail.deleted_flag.isnot(True))
    detail = detail.order_by(Detail.updated_at.desc()).first()
    if not detail:
        return render_template('index.html', SDKRouter=IsmsRouter)

    start_time = detail.start_time.strftime(SHORT_DATE_FORMAT)
    end_time = detail.end_time.strftime(SHORT_DATE_FORMAT)
    file_arr = get_list_link_file(detail.file)
    session['detail_id'] = detail.id
    return render_template('index.html', SDKRouter=IsmsRouter, detail=detail, start_time=start_time,
                           end_time=end_time, file_arr=file_arr)


@mod.route('/login/<int:detail_id>', methods=['GET', 'POST'])
def login(detail_id):
    """Return welcome page for non-login user"""
    if request.method == 'POST':
        full_name = request.form['full_name']
        email = request.form['email']
        lab_id = request.form['lab']
        user_model = User(full_name=full_name, email=email, lab_id=lab_id, type=UserTypeEnum.MEMBER_LOGIN.value)
        user = check_login_user(user_model)
        if not user:
            return json.dumps({'status': False, 'message': 'Bạn không có quyền thi'})
        user_detail = create_user_detail(detail_id, user.id)
        if check_user_detail_finish(detail_id, user_detail):
            return json.dumps({'status': False, 'message': 'Ban đã hoàn thành bài thi'})
        session['user'] = email
        session['user_status'] = user_detail.status_id
        return json.dumps(
            {'status': True, 'message': 'successfully', 'detail_id': detail_id, 'user_detail_id': user_detail.id})

    labs = db.session.query(Lab).order_by(Lab.updated_at.desc()).all()
    return render_template('login.html', SDKRouter=IsmsRouter, labs=labs, detail_id=detail_id)


def check_login_user(user):
    """"
    Check user login by email
    Step 1: If user not exist
            - Create user
    Step 2: If user no right
        :return None
    Step 3: If user already exist
            - Update information lab of user
    :return user
    """
    check_user = db.session.query(User).filter(User.email == user.email, User.deleted_flag.isnot(True)).first()
    if not check_user:
        db.session.add(user)
        db.session.commit()
        check_user = db.session.query(User).filter(User.email == user.email, User.deleted_flag.isnot(True)).first()

    if check_user.type == UserTypeEnum.ADMIN_LOGIN.value:
        return None

    db.session.query(User).filter(User.email == user.email, User.deleted_flag.isnot(True)).update(
        dict(lab_id=user.lab_id, full_name=user.full_name))
    db.session.commit()
    session['user'] = user.email
    session['user_type'] = UserTypeEnum.MEMBER_LOGIN.value
    return check_user


"""def create_object_if_not_existed(db_object, object_values: dict, primary_keys: list):
    sql_query = db.session.query(db_object)
    for sql_key in primary_keys:
        sql_query = sql_query.filter_by(sql_key=object_values[sql_key])
    sql_object = sql_query.first()
    if sql_object is None:  # Object is not existed
        db.session.add(db_object(**object_values))
        db.session.commit()
    else:
        sql_query.update(object_values)
        db.session.commit()
    return sql_query.first()"""


def create_user_detail(detail_id, user_id):
    """
    Create user detail
    - If user detail not exist
         Create user detail
    - If user detail already exist
         Get user detail
    :param detail_id:
    :param user_id:
    :return: user_detail
    """
    start_time = datetime.datetime.now()
    user_detail = db.session.query(Userdetail).filter(Userdetail.detail_id == detail_id,
                                                      Userdetail.user_id == user_id,
                                                      Userdetail.deleted_flag.isnot(True)).first()
    if not user_detail:
        user_detail = Userdetail(user_id=user_id, detail_id=detail_id, start_time=start_time,
                                 status_id=StatusTypeEnum.INIT_EXAM.value)
        db.session.add(user_detail)
        db.session.commit()
    if not user_detail.start_time:
        db.session.query(Userdetail).filter(Userdetail.id == user_detail.id,
                                            Userdetail.deleted_flag.isnot(True)).update(
            dict(start_time=start_time))
        db.session.commit()
    return user_detail


def check_user_detail_finish(detail_id, user_detail):
    """
    Check user has completed the exam
    :param detail_id:
    :param user_detail:
    :return: True or False
    """
    if user_detail.status_id != StatusTypeEnum.INIT_EXAM.value:
        return True
    current_date = datetime.datetime.now()
    detail = db.session.query(Detail).filter(Detail.id == detail_id, Detail.deleted_flag.isnot(True)).first()
    time = (current_date - user_detail.start_time).total_seconds()
    exam_time = detail.exam_time * 60
    if time < exam_time:
        return False
    return True


def get_list_link_file(file_str):
    return file_str.split('\r\n')
