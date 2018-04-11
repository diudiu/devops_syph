#/usr/bin/python
# -*- coding:utf-8 -*-

import os
import sys
import json
import argparse


def aliyun_login():
    return os.system("docker login --username=hi35482511@aliyun.com --password=qwe123456 registry.cn-qingdao.aliyuncs.com")


def get_tag(filename):
    with open(filename, 'r') as f:
        return json.load(f)


def get_version(filename):
    with open(filename, 'r') as f:
        return f.readline()


def write_tag(filename, tag):
    with open(filename, 'w') as f:
        json.dump(tag, f)


def pull_image(image_name, tag):
    return os.system("docker pull " + hub_registry + image_name + ":" + tag)


def tag_image(image_name, tag, aliyun_tag):
    print "docker tag " + hub_registry + image_name + ":" + tag + " " + aliyun_registry + image_name + ":" + aliyun_tag
    return os.system("docker tag " + hub_registry + image_name + ":" + tag + " " + aliyun_registry + image_name + ":" + aliyun_tag)


def push_image(image_name, tag):
    print "docker push  " + aliyun_registry + image_name + ":" + tag
    return os.system("docker push  " + aliyun_registry + image_name + ":" + tag)


def remove_images(image_name):
    ls_image_result = os.popen("docker image ls | grep " + image_name + " | tr -s ' ' | cut -d' ' -f3 ")
    content = ls_image_result.read()
    content_list = content.split("\n")
    content_list.pop()
    lines = len(content_list)
    if lines > number_of_reservation:
        rm_list = content_list[number_of_reservation-1:]
        for id in rm_list:
            os.system("docker image rm -f " + id)

if __name__ == '__main__':
    '''
    功能: 上传本地镜像至阿里云仓库
    说明: 默认上传标签为latest, latest为线上测试环境使用
          如果标签不是latest, 则认为该版本为生产环境版本. 以佰付美生产环境为例,
          将标记两个标签, 一个bfm一个bfm.2.0.X, 以便于版本回滚
    使用: python push-image.py -t bfm
    '''
    aliyun_registry = "registry.cn-qingdao.aliyuncs.com/syph-de/"
    tag_file = 'tag.txt'
    aliyun_tag = ""
    version_file = '/home/syphrd/jenkins_home/workspace/de-build/ff/version.md'
    hub_registry = "hub:5000/syph-de/"
    hub_tag = "latest"
    image_names = ["rule-engine", "featurefactory", "nginx-de", "ui"]
    number_of_reservation = 30

    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--flag', action='store', default='latest', help='test environment')
    args = parser.parse_args()
    flag = args.flag
    if flag == 'delivery':
        aliyun_tag = get_version(version_file)
    else:
        aliyun_tag = 'latest'
    print aliyun_tag

    if aliyun_login() != 0:
        print "登录阿里云失败"

    for image_name in image_names:
        if pull_image(image_name, hub_tag) != 0:
            print('从本地hub拉取%s失败!' % image_name)
            sys.exit(1)

        if tag_image(image_name, hub_tag, aliyun_tag) != 0:
            print('重新标记%s失败!' % image_name)
            sys.exit(2)

        if push_image(image_name, aliyun_tag) != 0:
            print('推送%s到aliyun失败!' % image_name)
            sys.exit(3)

        if aliyun_tag == 'latest':
            tag_dict = get_tag(tag_file)
            if aliyun_tag in tag_dict.keys():
                sub_tag = tag_dict[aliyun_tag]
                if tag_image(image_name, hub_tag, sub_tag) != 0:
                    print('重新标记%s失败!' % image_name)
                    sys.exit(2)
                if push_image(image_name, sub_tag) != 0:
                    print('推送%s到aliyun失败!' % image_name)
                    sys.exit(3)
            else:
                print('%s 文件中没有找%s标签' % (tag_file, aliyun_tag))
                sys.exit(4)

        if remove_images(image_name) != 0:
            print('删除多余image失败!')
