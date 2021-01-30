from models import *
from marshmallow_sqlalchemy import ModelSchema
from flask_marshmallow import Marshmallow

ma = Marshmallow()


class DetailSchema(ModelSchema):
    class Meta:
        model = Detail


class LabSchema(ModelSchema):
    class Meta:
        model = Lab


class AnswerSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Answer
        include_fk = True


class QuestionSchema(ma.SQLAlchemySchema):
    class Meta:
        model = Question

    id = ma.auto_field()
    category = ma.auto_field()
    content = ma.auto_field()
    deleted_flag = ma.auto_field()
    answers = ma.Nested(AnswerSchema, many=True)


class EmailSchema(ModelSchema):
    class Meta:
        model = Email


class UserSchema(ModelSchema):
    class Meta:
        model = User


class UserdetailSchema(ModelSchema):
    class Meta:
        model = Userdetail


class UserquestionSchema(ModelSchema):
    class Meta:
        model = Userquestion
