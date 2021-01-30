from enum import Enum


class CategoryTypeEnum(Enum):
    """ISMS category type"""
    QMS_Category = 'QMS'
    ISMS_Category = 'ISMS'


class StatusTypeEnum(Enum):
    INIT_EXAM = 2
    FAIL = 3
    FORCE_FAIL = 4
    PASS = 5
    FORCE_PASS = 6


