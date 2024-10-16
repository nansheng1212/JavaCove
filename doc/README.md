## 1. 基础配置
### 1.1 服务器： 2 核 2G
### 1.2 一个域名
### 1.3 项目地址：
gitee:https://gitee.com/guo-_jun/JavaCove
github:https://github.com/nansheng1212/JavaCove

## 2. CentOS 安装 Docker

官方网站上有各种环境下的 [安装指南](https://docs.docker.com/install/)，这里主要介绍 Docker CE 在 CentOS 上的安装。

### 2.1 卸载（可选）

如果之前安装过旧版本的 Docker，可以使用下面命令卸载：

```shell
yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
```

### 2.2 安装 Docker

1. 安装 yum 工具

   ```shell
   yum install -y yum-utils
   ```

2. 设置镜像仓库

   ```shell
   yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
   ```

3. 更新 yum 软件包索引

   ```shell
   yum makecache fast
   ```

4. 安装 Docker CE

   ```shell
   yum install docker-ce docker-ce-cli containerd.io
   ```

### 2.3 启动 Docker

1. 启动 Docker

   ```shell
   systemctl start docker
   ```

2. 查看 Docker 版本

   ```shell
   docker version
   ```

## 3. CentOS 安装 DockerCompose

### 3.1 安装 DockerCompose

```shell
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

> 如果下载速度较慢或者下载失败，去[Release 1.29.2 · docker/compose (github.com)](https://github.com/docker/compose/releases/tag/1.29.2)选择相应版本，下载 docker-compose-Linux-x86_64 到本地，更名为`docker-compose`，上传到服务器的`/usr/local/bin`目录下

### 3.2 修改文件权限

```shell
chmod +x /usr/local/bin/docker-compose
```

## 4. nginx 配置 https

1. 先去腾讯云或者阿里云申请免费 SSL 证书，然后选择 Nginx 服务器类型下载

   ![](https://junlex.com/article/d85a39567f35aa13ab87e439467f23bf.png)

2. 证书下载之后上传到`/etc/ssl/certs`目录下

3. 在`/usr/local`目录下新建`nginx`文件夹

   ```shell
   cd /usr/local
   mkdir nginx
   ```

4. 创建目录`/usr/local/upload`作为本地文件存储路径

5. 将以下的`nginx.conf`改好后上传到`/usr/local/nginx`下，我的直接贴进来了，仅供参考

   ```shell
   events {
   worker_connections  1024;
   }
   
   http {
   
       include       mime.types;
       default_type  application/octet-stream;
       sendfile        on;
       keepalive_timeout  65;
   
       client_max_body_size     50m;
       client_body_buffer_size  10m;
       client_header_timeout    1m;
       client_body_timeout      1m;
   
       gzip on;
       gzip_min_length  1k;
       gzip_buffers     4 16k;
       gzip_comp_level  4;
       gzip_types text/plain application/javascript application/x-javascript text/css application/xml text/javascript application/x-httpd-php image/jpeg image/gif image/png;
       gzip_vary on;
   
   server {
   listen  443 ssl;
   server_name  www.junlty.top;
   
           ssl_certificate    /etc/ssl/certs/www.junlty.top.pem;
           ssl_certificate_key  /etc/ssl/certs/www.junlty.top.key;
           ssl_session_timeout 5m;
           ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;
           ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
           ssl_prefer_server_ciphers on;
   
          location / {
               root   /usr/local/vue/blog;
               index  index.html index.htm;
               try_files $uri $uri/ /index.html;
           }
   
           location ^~ /api/ {
               proxy_pass http://121.40.246.82:8080/;
               proxy_set_header   Host             $host;
               proxy_set_header   X-Real-IP        $remote_addr;
               proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
           }
   
       }
   
   server {
   listen  443 ssl;
   server_name  admin.junlty.top;
   
           ssl_certificate    /etc/ssl/certs/admin.junlty.top.pem;
           ssl_certificate_key  /etc/ssl/certs/admin.junlty.top.key;
           ssl_session_timeout 5m;
           ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;
           ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
           ssl_prefer_server_ciphers on;
   
          location / {
               root   /usr/local/vue/admin;
               index  index.html index.htm;
               try_files $uri $uri/ /index.html;
           }
   
           location ^~ /api/ {
               proxy_pass http://121.40.246.82:8080/;
               proxy_set_header   Host             $host;
               proxy_set_header   X-Real-IP        $remote_addr;
               proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
           }
   
       }
   
   server {
   listen       80;
   server_name  www.junlty.top;
   
           rewrite ^(.*)$	https://$host$1	permanent;
   
       }
   
   server {
   listen       80;
   server_name  admin.junlty.top;
   
           rewrite ^(.*)$	https://$host$1	permanent;
   
       }
   
   }
   ```

## 5. 打包前端

1. `npm install`

2. 修改`shoka-admin`和`shoka-blog`的 utils 文件下的 token.ts，将 domain 改成自己的所在域

3. 接着修改前端的`vite.config.ts`代理地址，改成自己的 ip

4. 申请了 Gitee 和 Github 的第三方登录，记得修改前端的应用 id 和回调地址

![](https://junlex.com/article/cdbbd193e45985ad97cbef36a359e386.png)

5. `npm run build`

6. 打包之后将博客前台和后台的`dist`分别重命名为`blog`和`admin`，然后上传到服务器的`/usr/local/vue`目录下（没有就创建）

![](https://junlex.com/article/46b1a2c406b604dd64ccab5866049533.png)

## 6. 打包后端

1. 修改`application.yml`信息后，执行 maven 的 package 命令选择 jar 方式打包

![](https://junlex.com/article/f7cf5a01b1288dbc6df779176de5eecb.png)

2. 在服务器创建`/usr/local/docker`目录，并将`target`中的 jar 包上传到该目录
3. 修改`doc`文件夹中的`.env`配置文件中的信息，一定确认`docker-compose.yml`中挂载的目录和文件是否存在
4. 将`doc`文件夹中的文件上传到`/usr/local/docker`目录中
![](https://junlex.com/article/3d47bdfc9fdc0602745bdaecda826320.png)

## 7. 执行 sh 脚本

**服务器的防火墙端口一定要放开**

```shell
cd /usr/local/docker
sh blog-start.sh
```
项目就部署完成了，用`docker ps`查看正在运行的容器。

## 8. 最后

有什么问题的话，可以在下方评论区评论。不方便评论的话，可以加我联系方式私聊。写的不对的地方欢迎大家在评论区指出