# -*- coding: utf-8 -*-
from enum import Enum
from functools import wraps
from flask import g, redirect, session
from routes import IsmsRouter
from libs.constants import StatusTypeEnum


class UserTypeEnum(Enum):
    """ISMS user type"""
    NON_LOGIN = 'none'
    MEMBER_LOGIN = 'user'
    ADMIN_LOGIN = 'admin'


def get_admin_type_in_session():
    """Get correct user type which storage in session"""
    admin = session.get('admin', None)
    if not admin:
        return UserTypeEnum.NON_LOGIN.value
    admin_type = session.get('admin_type', UserTypeEnum.NON_LOGIN.value)
    try:
        return admin_type
    except ValueError:
        return UserTypeEnum.NON_LOGIN.value


def get_user_status_in_session():
    admin = session.get('user', None)
    if not admin:
        return UserTypeEnum.NON_LOGIN.value
    user_status = session.get('user_status', UserTypeEnum.NON_LOGIN.value)
    try:
        return user_status
    except ValueError:
        return UserTypeEnum.NON_LOGIN.value


def user_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        user_status = get_user_status_in_session()
        if user_status == UserTypeEnum.NON_LOGIN.value or user_status != StatusTypeEnum.INIT_EXAM.value:
            return redirect(IsmsRouter.HOME.value)
        return f(*args, **kwargs)

    return decorated


def admin_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        admin_type = get_admin_type_in_session()
        if admin_type != UserTypeEnum.ADMIN_LOGIN.value:
            return redirect(IsmsRouter.ADMIN_LOGIN.value)
        return f(*args, **kwargs)

    return decorated
