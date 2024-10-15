#!/bin/bash

# 停止并移除现有的容器
docker stop blog
docker rm blog

# 删除现有的镜像
docker rmi blog-springboot

# 构建新的镜像
docker build -t blog-springboot .

# 运行新的容器
docker run -d -p 8080:8080 --name blog blog-springboot
