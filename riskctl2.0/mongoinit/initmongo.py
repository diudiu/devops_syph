# -*- coding:utf-8 -*-

from pymongo import MongoClient
# from setting import *

host = '192.168.1.196'
name = 'feature_storage'
username = 'feature_storage'
password = 'feature_storage'
port = 8078

def get_mongo_db():
    client = MongoClient(host, port)
    client[name].authenticate(username, password)
    db = client[name]
    return db


if __name__ == '__main__':
    db = get_mongo_db()
    db.portrait_base.insert({"_class": "com.digcredit.brms.model.orm.mongo.Portrait", "proposer_id": "123456789dinger",
                             "product_code": "12345", "data": {"edu_exp_form": [
            {"school": "北京理工", "start": "201009", "end": "201406", "degree": "30", "degree_name": "硕士", "tz": 1}],
            "now_indust_code": "330", "upload_contact": 0,
            "sns_sd_friend_cnt": 1194, "mobile": "13311538888",
            "city_code": "200", "work_age": 11, "sns_friends_cnt": 1,
            "registration_on": "2016-10-01 12:20:10",
            "city_name": "北京", "sns_skill_tag_list": [
                {"skill_tag": "预测", "certified_num": 0}], "name": "丁二", "cur_work_status": "在职", "complete_degree": 95,
            "sns_h_fans_cn": 31, "work_exp_form": [
                {"title": "Lead Project control", "has_certified": 0, "certified_num": 0, "comp_name": "微软中国",
                 "months": 13, "salary": 16000, "work_start": "201407", "work_end": "999999", "industry": "330",
                 "industry_name": "能源(电力/水利)", "dq": "北京", "dq_name": "北京朝阳"}], "email": "123@163.com",
            "now_indust_name": "能源(电力/水利)"}, "is_delete": False})
    db.portrait_base.insert({"_class": "com.digcredit.brms.model.orm.mongo.Portrait", "proposer_id": "123456789lisi",
                             "product_code": "12345", "data": {"edu_exp_form": [
            {"school": "北京理工", "start": "201009", "end": "201406", "degree": "10", "degree_name": "博士", "tz": 1}],
            "now_indust_code": "150", "upload_contact": 0,
            "sns_sd_friend_cnt": 1902, "mobile": "13661117777",
            "city_code": "200", "work_age": 9, "sns_friends_cnt": 21,
            "registration_on": "2016-10-01 12:20:10",
            "city_name": "北京", "sns_skill_tag_list": [
                {"skill_tag": "0", "certified_num": 0}], "name": "李四", "cur_work_status": "在职", "complete_degree": 80,
            "sns_h_fans_cn": 10, "work_exp_form": [
                {"title": "矿业投资部总经理", "has_certified": 1, "certified_num": 3, "comp_name": "昆吾九鼎投资管理有限公司", "months": 12,
                 "salary": 62500, "work_start": "201407", "work_end": "999999", "industry": "150",
                 "industry_name": "基金/证券/期货/投资", "dq": "北京", "dq_name": "北京朝阳"}], "email": "456@163.com",
            "now_indust_name": "基金/证券/期货/投资"}, "is_delete": False})
    db.portrait_base.insert(
        {"_class": "com.digcredit.brms.model.orm.mongo.Portrait", "proposer_id": "123456789zhangsan",
         "product_code": "12345", "data": {"edu_exp_form": [
            {"school": "北京理工", "start": "201009", "end": "201406", "degree": "20", "degree_name": "MBA/EMBA", "tz": 1}],
            "now_indust_code": "170", "upload_contact": 1, "sns_sd_friend_cnt": 1294,
            "mobile": "18511116277", "city_code": "200", "work_age": 14,
            "sns_friends_cnt": 12, "registration_on": "2016-10-01 12:20:10",
            "city_name": "北京",
            "sns_skill_tag_list": [{"skill_tag": "0", "certified_num": 0}], "name": "张三",
            "cur_work_status": "在职", "complete_degree": 80, "sns_h_fans_cn": 281,
            "work_exp_form": [
                {"title": "矿业投资部总经理", "has_certified": 0, "certified_num": 0,
                 "comp_name": "百度", "months": 12, "salary": 7000, "work_start": "201608",
                 "work_end": "999999", "industry": "170",
                 "industry_name": "影视/媒体/艺术/文化/出版", "dq": "北京", "dq_name": "北京朝阳"}],
            "email": "789@163.com", "now_indust_name": "影视/媒体/艺术/文化/出版"},
         "is_delete": False})

    db.apply_base.insert({"product_code": "890wefjf320if0i302f0j3f0f", "apply_id": "APPLY201703081545051dxdinger",
                          "data": {"name": "丁二", "card_id": "132600199306251568", "mobile": "13311538888",
                                   "longitudu": 23.45678, "latitude": 145.23342, "contacts": 30,
                                   "application_on": "2017-02-01 12:20:10"}, "proposer_id": "123456789dinger",
                          "is_delete": False})
    db.apply_base.insert({"product_code": "890wefjf320if0i302f0j3f0f", "apply_id": "APPLY20170308154505179ydlisi",
                          "data": {"name": "李四", "card_id": "132600198506251568", "mobile": "13661117777",
                                   "longitudu": 23.45678, "latitude": 145.23342, "contacts": 30,
                                   "application_on": "2017-02-01 12:20:10"}, "proposer_id": "123456789lisi",
                          "is_delete": False})
    db.apply_base.insert({"product_code": "890wefjf320if0i302f0j3f0f", "apply_id": "APPLY2017030815450ltzhangsan",
                          "data": {"name": "张三", "card_id": "132600197206251568", "mobile": "18511116277",
                                   "longitudu": 23.45678, "latitude": 145.23342, "contacts": 30,
                                   "application_on": "2017-02-01 12:20:10"}, "proposer_id": "123456789zhangsan",
                          "is_delete": False})
