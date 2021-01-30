#!/usr/bin/python -tt
# -*- coding: utf-8 -*-

"""home.py
Define all api in home pages
"""
from logging import getLogger
from flask import Blueprint, render_template, g, session, request, flash, redirect, url_for
from routes import IsmsRouter
from schemas import *
from flask_sqlalchemy import SQLAlchemy
from werkzeug.security import check_password_hash
from libs.user_permission import UserTypeEnum, admin_required, get_admin_type_in_session

db = SQLAlchemy()
logger = getLogger(__name__)
mod = Blueprint('admin', __name__, url_prefix='/admin', static_folder="static", template_folder="../templates/admin")


@mod.route('/')
@mod.route('/login', methods=['GET', 'POST'])
def admin_login():
    """Return welcome page for non-login user
        Step 1: Check user login, if login -> redirect to question list page
        Step 2: Compare email, password with DB object
    """

    user_type = get_admin_type_in_session()
    if user_type != UserTypeEnum.NON_LOGIN.value:
        return redirect(IsmsRouter.QUESTION_LIST.value)
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']
        user_sql = db.session.query(User).filter(User.email == email, User.deleted_flag.isnot(True)).first()
        if user_sql and check_password_hash(user_sql.hash_pwd, password):
            session['admin'] = email
            session['admin_type'] = UserTypeEnum.ADMIN_LOGIN.value
            detail = db.session.query(Detail).filter(Detail.deleted_flag.isnot(True)).order_by(
                Detail.updated_at.desc()).first()
            session['detail'] = detail.id
            return redirect(IsmsRouter.QUESTION_LIST.value)

        else:
            flash('Please check your login details and try again.')
            return "Password is incorrect", 403
    return render_template('admin_login.html', SDKRouter=IsmsRouter)


@mod.route('/logout')
@admin_required
def logout():
    session.pop('admin', None)
    session.pop('admin_type', None)
    session.pop('detail', None)
    return redirect(url_for('admin.admin_login'))
