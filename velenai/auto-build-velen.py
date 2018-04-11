#/bin/python
import os

registry_prefix = "hub:5000/syph-velen/"
stable_tag = "latest"
image_names = ["velenplat", "nginx-velen"]
number_of_reservation = 15

def readfile():
    file_object = open('tag.txt')
    try:
        all_the_text = file_object.read()
    finally:
        file_object.close()
    return all_the_text

def write_to_file(tag):
    file_object = open('tag.txt', 'w')
    try:
        file_object.write(tag)
    finally:
        file_object.close()

def build_image(image_name):
    os.chdir(image_name)
    build_result = os.system("docker build --no-cache -t " + registry_prefix + image_name + ":" + stable_tag + " .")
    os.chdir("..")
    return build_result

def tag_image(image_name, tag):
    retag_result = os.system("docker tag " + registry_prefix + image_name + ":" + stable_tag  + " " + \
             registry_prefix  + image_name + ":" + tag) 
    if retag_result == 0:
        print ("re-tag %s successful!" % (image_name))
    else:
        print ("re-tag %s failed")
    return retag_result   

def push_image(image_name, tag = stable_tag):
    push_result = os.system("docker push " + registry_prefix + image_name + ":" + tag )
    return push_result

def remove_images(image_name):
    ls_image_result = os.popen("docker image ls | grep " + image_name  + " | tr -s ' ' | cut -d' ' -f3 " )
    content = ls_image_result.read()
    content_list = content.split("\n")
    content_list.pop()
    lines = len(content_list)
    if lines > number_of_reservation:
        rm_list = content_list[number_of_reservation-1:]
        for id in rm_list:
            ls_image_result = os.system("docker image rm " + id )


if __name__ == '__main__':
    tag_result_list = []
    tag = readfile()
    tag_list = tag.split(".")
    new_tag = tag_list[0] + "." + tag_list[1] + "." + str(int(tag_list[2]) + 1)
    for image_name in image_names:
        build_result = build_image(image_name)
        if build_result == 0:
            tag_result = tag_image(image_name, new_tag)
            tag_result_list.append(tag_result)
            push_image(image_name)
            push_image(image_name, new_tag)
        remove_images(image_name)
    write_to_file(new_tag)
    print tag_result_list
    os.system("docker stack deploy -c docker-compose.yml stk4velen")








