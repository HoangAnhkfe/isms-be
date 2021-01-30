import os

CURRENT_ENV = os.environ.get('ENVIRONMENT')
TEMPLATES_AUTO_RELOAD = True
# SQLALCHEMY_DATABASE_URI = os.environ.get('SQLALCHEMY_DATABASE_URI',
#                                          'mysql+pymysql://root:Anhhoang@123@localhost:3306/ISMSSystem?charset=utf8mb4')
SQLALCHEMY_DATABASE_URI = os.environ.get('SQLALCHEMY_DATABASE_URI',
                                         'mysql+pymysql://isms-dev:Q7hyDanT@deep-jira.tk:3308/isms?charset=utf8mb4')
SQLALCHEMY_POOL_SIZE = 20
SQLALCHEMY_MAX_OVERFLOW = 0
SESSION_TYPE = 'filesystem'
LIMIT_CHOICE = 5
LIMIT_ROWS = 5
SQLALCHEMY_TRACK_MODIFICATIONS = False
SQLALCHEMY_POOL_RECYCLE = 500
SECRET_KEY = 'SDK secret key'

SHORT_DATE_FORMAT = '%m/%d/%Y'
SHORT_TIME_FORMAT = '%m/%d/%Y %H:%M:%S'

