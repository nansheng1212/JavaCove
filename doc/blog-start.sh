#!/bin/bash
# 停止并移除现有的容器
docker stop blog-springboot
docker rm blog-springboot
# 删除现有的镜像
docker rmi blog-springboot
# 构建
docker-compose up -d --build