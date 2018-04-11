#/bin/python
# -*- coding:utf-8 -*-

import os
import sys
import json

def readfile():
    with open('tag.txt', 'r') as f:
        return json.load(f)


def write_to_file(tag):
    with open('tag.txt', 'w') as f:
        json.dump(tag, f)


def build_image(image_name, tag):
    os.chdir(image_name)
    build_result = os.system("docker build --no-cache -t " + registry_prefix + image_name + ":" + tag + " .")
    os.chdir("..")
    return build_result


def tag_image(image_name, tag, new_tag):
    return os.system("docker tag " + registry_prefix + image_name + ":" + tag + " " + \
             registry_prefix + image_name + ":" + new_tag)


def push_image(image_name, tag):
    return os.system("docker push " + registry_prefix + image_name + ":" + tag)


def remove_images(image_name):
    ls_image_result = os.popen("docker image ls | grep " + image_name + " | tr -s ' ' | cut -d' ' -f3 ")
    content = ls_image_result.read()
    content_list = content.split("\n")
    content_list.pop()
    lines = len(content_list)
    if lines > number_of_reservation:
        rm_list = content_list[number_of_reservation-1:]
        for id in rm_list:
            os.system("docker image rm " + id)


if __name__ == '__main__':
    registry_prefix = "hub:5000/syph-de/"
    stable_tag = "latest"
    image_names = ["rule-engine", "featurefactory", "nginx-de", "ui"]
    number_of_reservation = 30

    tag_dict = readfile()
    tag_list = tag_dict['latest'].split(".")
    new_tag = tag_list[0] + "." + tag_list[1] + "." + str(int(tag_list[2]) + 1)
    for image_name in image_names:
        if build_image(image_name, stable_tag) != 0:
            print('构建%s镜像失败' % image_name)
            sys.exit(1)

        if tag_image(image_name, stable_tag, new_tag) != 0:
            print('重新标记%s镜像失败' % image_name)
            sys.exit(2)

        if push_image(image_name, stable_tag) != 0:
            print('推送%s失败' % image_name)
            sys.exit(3)

        if push_image(image_name, new_tag) != 0:
            print('推送%s失败' % image_name)
            sys.exit(3)
        remove_images(image_name)
    tag_dict['latest'] = new_tag
    write_to_file(tag_dict)
    print('镜像构建成功,正在重新部署系统')
    if os.system("docker stack deploy -c docker-compose.yml stk4de") == 0:
        print('系统重新部署成功')
        sys.exit(0)
    else:
        print('系统重新部署失败')
        sys.exit(4)
