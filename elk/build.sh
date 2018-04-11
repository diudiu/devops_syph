#!/bin/bash

image_tag_version=""

while getopts "v:" opt; do  
  case $opt in  
    v)  
      image_tag_version=$OPTARG
      echo "Image tag is $image_tag_version"
      ;;  
    \?)  
      echo "Invalid option -$OPTARG"   
      ;;  
  esac  
done


if [ -n $image_tag_version  ]; then

  echo "Start to build docker images..."

  echo "\n"
  echo "====================== Build logstash ======================="
  logstash_image="registry.cn-qingdao.aliyuncs.com/syph-elk/logstash:$image_tag_version"
  cd logstash
  docker image build --no-cache -t $logstash_image .
  cd ..

  echo "====================== Build elasticsearch ======================"
  elasticsearch_image="registry.cn-qingdao.aliyuncs.com/syph-elk/elasticsearch:$image_tag_version"
  cd elasticsearch
  docker image build --no-cache -t $elasticsearch_image .
  cd ..

  echo "====================== Build kibana ======================="
  kibana_image="registry.cn-qingdao.aliyuncs.com/syph-elk/kibana:$image_tag_version"
  cd kibana
  docker image build --no-cache -t $kibana_image .
  cd ..
fi

echo "Build over..."
