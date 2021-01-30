from enum import Enum


class IsmsRouter(Enum):
    """List all ISMS urls"""
    HOME = '/home'
    LOGIN = '/admin/login'
    ADMIN_LOGIN = '/admin/login'
    LOGOUT = '/user/logout'
    ADMIN_QUESTION = '/user/logout'
    QUESTION_LIST = '/question'
