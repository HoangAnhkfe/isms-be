# -*- coding: utf-8 -*-
from logging import getLogger

from libs.logger import init_logger
from flask import Flask, redirect
from routes import IsmsRouter
from views import home, admin, question, information_setting, exam, realtime_status
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow

logger = getLogger(__name__)
app = Flask(__name__, static_folder='./static')


@app.route('/')
def auth():
    return redirect(IsmsRouter.HOME.value)


if __name__ == '__main__':
    init_logger('DEBUG')
    app.jinja_env.auto_reload = True
    app.url_map.strict_slashes = False
    app.config.from_object('config')
    db = SQLAlchemy()
    db.init_app(app)
    ma = Marshmallow()
    ma.init_app(app)
    app.register_blueprint(home.mod)
    app.register_blueprint(admin.mod)
    app.register_blueprint(question.mod)
    app.register_blueprint(exam.mod)
    app.register_blueprint(information_setting.mod)
    app.register_blueprint(realtime_status.mod)
    app.run()
