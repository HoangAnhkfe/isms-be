from enum import Enum


class CategoryTypeEnum(Enum):
    """ISMS user type"""
    QMS_Category = 0
    ISMS_Category = 1


print(CategoryTypeEnum.QMS_Category)
