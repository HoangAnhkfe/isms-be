# coding: utf-8
from sqlalchemy import CHAR, Column, DateTime, Enum, ForeignKey, Index, Integer, Text, text, SmallInteger
from sqlalchemy.dialects.mysql import BIT, VARCHAR
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()
metadata = Base.metadata


class Detail(Base):
    __tablename__ = 'detail'

    id = Column(Integer, primary_key=True)
    greeting = Column(Text, nullable=False)
    start_time = Column(DateTime, nullable=False)
    end_time = Column(DateTime, nullable=False)
    exam_time = Column(Integer, nullable=False)
    file = Column(CHAR(1), nullable=False)
    qms_total = Column(Integer, nullable=False)
    isms_total = Column(Integer, nullable=False)
    qms_pass = Column(Integer, nullable=False)
    isms_pass = Column(Integer, nullable=False)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))


class Lab(Base):
    __tablename__ = 'lab'

    id = Column(Integer, primary_key=True)
    name = Column(VARCHAR(256), nullable=False)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))


class Question(Base):
    __tablename__ = 'question'

    id = Column(Integer, primary_key=True)
    content = Column(Text, nullable=False)
    content_plain = Column(Text, nullable=False)
    category = Column(Enum('QMS', 'ISMS'), nullable=False)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1), default=None)




class Answer(Base):
    __tablename__ = 'answer'

    id = Column(Integer, primary_key=True)
    content = Column(Text, nullable=False)
    is_correct = Column(BIT(1), nullable=False)
    question_id = Column(ForeignKey('question.id'), nullable=False, index=True)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))

    question = relationship('Question', backref="answers")


class Email(Base):
    __tablename__ = 'email'

    id = Column(Integer, primary_key=True)
    name = Column(VARCHAR(256), nullable=False, unique=True)
    detail_id = Column(ForeignKey('detail.id'), nullable=False, index=True)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))

    detail = relationship('Detail')


class User(Base):
    __tablename__ = 'user'

    id = Column(Integer, primary_key=True)
    full_name = Column(VARCHAR(256), nullable=False)
    email = Column(VARCHAR(256), nullable=False, unique=True)
    hash_pwd = Column(CHAR(1), nullable=False)
    type = Column(Enum('admin', 'user'), nullable=False)
    lab_id = Column(ForeignKey('lab.id'), nullable=False, index=True)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))

    lab = relationship('Lab')


class Userdetail(Base):
    __tablename__ = 'userdetail'

    id = Column(Integer, primary_key=True)
    user_id = Column(ForeignKey('user.id'), nullable=False, index=True)
    detail_id = Column(ForeignKey('detail.id'), nullable=False, index=True)
    status_id = Column(ForeignKey('maexamplestatus.id'), nullable=False, index=True)
    start_time = Column(DateTime)
    end_time = Column(DateTime)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))
    updated_acc = Column(VARCHAR(256))

    detail = relationship('Detail')
    user = relationship('User')


class Userquestion(Base):
    __tablename__ = 'userquestion'
    __table_args__ = (
        Index('unique_user_detail', 'user_detail_id', 'question_id', unique=True),
    )

    id = Column(Integer, primary_key=True)
    user_detail_id = Column(ForeignKey('userdetail.id'), nullable=False)
    question_id = Column(ForeignKey('question.id'), nullable=False, index=True)
    answer_id = Column(ForeignKey('answer.id'), index=True)
    status = Column(BIT(1), nullable=False, server_default=text("(0)"))
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))

    answer = relationship('Answer')
    question = relationship('Question')
    user_detail = relationship('Userdetail')

class Maexamplestatu(Base):
    __tablename__ = 'maexamplestatus'

    id = Column(Integer, primary_key=True)
    name = Column(VARCHAR(256), nullable=False)
    status = Column(BIT(1), nullable=False)
    created_at = Column(DateTime, nullable=False, server_default=text("(curdate())"))
    updated_at = Column(DateTime, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    deleted_flag = Column(BIT(1))
