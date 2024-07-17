-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_album`
--

DROP TABLE IF EXISTS `t_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_album` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `album_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册名',
  `album_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册封面',
  `album_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 (1公开 2私密)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_album`
--

LOCK TABLES `t_album` WRITE;
/*!40000 ALTER TABLE `t_album` DISABLE KEYS */;
INSERT INTO `t_album` VALUES (1,'精选壁纸','https://junlex.com/photo/1d4c28602df625239b0e78bd23fd13eb.png','壁纸',1,'2023-01-02 16:24:56','2024-06-17 00:37:38'),(3,'琐碎','https://junlex.com/photo/ccd9935e491b22a6aca54520df12d182.jpg','记录',1,'2023-11-24 13:08:22','2024-06-20 11:51:18'),(5,'头像','https://junlex.com/photo/51939ae397cdbf71a1108fe2886b350b.jpg','头像',1,'2024-06-24 01:10:21',NULL),(6,'风景','https://junlex.com/photo/b3228b8791cf2b6b9c8fd9c2e194c155.jpg','风景',1,'2024-06-26 16:20:50',NULL);
/*!40000 ALTER TABLE `t_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `user_id` int NOT NULL COMMENT '作者id',
  `category_id` int NOT NULL COMMENT '分类id',
  `article_cover` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缩略图',
  `article_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章标题',
  `article_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文章摘要',
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章内容',
  `article_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型 (1原创 2转载 3翻译)',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶 (0否 1是）',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 (0否 1是)',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐 (0否 1是)',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 (1公开 2私密 3评论可见)',
  `create_time` datetime NOT NULL COMMENT '发表时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article`
--

LOCK TABLES `t_article` WRITE;
/*!40000 ALTER TABLE `t_article` DISABLE KEYS */;
INSERT INTO `t_article` VALUES (61,1,50,'https://junlex.com/article/17dc1702dd6a1a77735609551d1a1d01.jpg','创作提示','# 字符效果\n- ~~删除线~~ <s>删除线（开启识别 HTML 标签时）</s>\n- _斜体字_ _斜体字_\n- **粗体** **粗体**\n- **_粗斜体_** **_粗斜体_**','# 字符效果\n\n- ~~删除线~~ <s>删除线（开启识别 HTML 标签时）</s>\n\n- _斜体字_ _斜体字_\n- **粗体** **粗体**\n- **_粗斜体_** **_粗斜体_**\n\n- 上标：X<sub>2</sub>，下标：O<sup>2</sup>\n\n- ==高亮==\n\n- `Inline Code`\n\n> 引用：如果想要插入空白换行（即 `<br>` 标签），在插入处先键入两个以上的空格然后回车即可\n\n# 超链接\n\n- [普通链接](https://www.ttkwsd.top)\n- [_斜体链接_](https://www.ttkwsd.top)\n- [**粗体链接**](https://www.ttkwsd.top)\n\n# 脚注\n\n这是一个简单的脚注 [^1] 而这是一个更长的脚注 [^bignote].\n\n[^1]: 这是第一个脚注.\n[^bignote]: 这是一个非常长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长的脚注.\n\n# 图像\n\n下面是一张我家硝子的壁纸?:\n![硝子1](https://i.niupic.com/images/2022/03/11/9Wl7.jpg)\n再来一张好了?：\n![硝子2](https://i.niupic.com/images/2022/03/12/9Wme.jpg)\n\n# 代码\n\n## 行内代码\n\n在 VS Code 中按下 <kbd>Alt</kbd> + <kbd>T</kbd> + <kbd>R</kbd> 执行命令：`npm install marked`\n\n## 代码片\n\n### Python 代码\n\n```python\nclass Animal:\n    \"\"\" 动物类 \"\"\"\n\n    def __init__(self, age: int, name: str):\n        self.age = age\n        self.name = name\n\n    def getInfo(self) -> str:\n        \"\"\" 返回信息 \"\"\"\n        return f\'age: {self.age}; name: {self.name}\'\n\n\nclass Dog(Animal):\n    \"\"\" 狗狗类 \"\"\"\n\n    def __init__(self, age: int, name: str, gender=\'female\', color=\'white\'):\n        super().__init__(age, name)\n        self.gender = gender\n        self.__color = color\n\n    def bark(self):\n        \"\"\" 狗叫 \"\"\"\n        print(\'lololo\')\n\n    @property\n    def color(self):\n        return self.__color\n\n    @color.setter\n    def color(self, color: str):\n        if color not in [\'red\', \'white\', \'black\']:\n            raise ValueError(\'颜色不符合要求\')\n        self.__color = color\n\n\nif __name__ == \'__main__\':\n    dog = Dog(16, \'啸天\', gender=\'male\')\n    # 狗叫\n    dog.bark()\n    # 设置狗狗毛色\n    dog.color = \'blue\'\n```\n\n### HTML 代码\n\n```html\n<!DOCTYPE html>\n<html>\n    <head>\n        <mate charest=\"utf-8\" />\n        <title>Hello world!</title>\n    </head>\n    <body>\n        <h1>Hello world!</h1>\n    </body>\n</html>\n```\n\n# 列表\n\n## 无序列表\n\n- 福建\n  - 厦门\n  - 福州\n- 浙江\n- 江苏\n\n## 有序列表\n\n1. 动物\n   1. 人类\n   2. 犬类\n2. 植物\n3. 微生物\n\n## 任务列表\n\n- [x] 预习计算机网络\n- [ ] 复习现代控制理论\n- [ ] 刷现代控制理论历年卷\n  - [ ] 2019 年期末试卷\n  - [ ] 2020 年期末试卷\n\n# 表格\n\n| 项目   |  价格 | 数量 |\n| ------ | ----: | :--: |\n| 计算机 | $1600 |  5   |\n| 手机   |   $12 |  12  |\n| 管线   |    $1 | 234  |\n\n---\n\n# 特殊符号\n\n&copy; & &uml; &trade; &iexcl; &pound;\n&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot;\n\nX&sup2; Y&sup3; &frac34; &frac14; &times; &divide; &raquo;\n\n18&ordm;C &quot; &apos;\n\n# Emoji 表情 🎉\n\n- 马：🐎\n- 星星：✨\n- 笑脸：😀\n- 跑步：🏃‍\n\n# 数学公式\n\n行间公式：\n$\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))$\n行内公式 $E=mc^2$\n\n# Tip提示\n\n::: tip\n  在此输入内容\n:::\n::: warning\n  在此输入内容\n:::\n::: danger\n  在此输入内容\n:::\n::: details\n  内容\n:::',1,0,0,0,1,'2023-02-22 12:10:21','2024-07-11 10:19:37'),(91,1,60,'https://junlex.com/article/b2b466fa65bb01163fbe8fe5daf2298b.jpg','Java开发工程师岗位要求','岗位要求\n1.本科以上学历，3年以上java开发经验；\n2.扎实的Java基础；熟悉Java常见的技术框架(Spring, Spring Boot, Spring Cloud )等','岗位要求\n1. 本科以上学历；\n2. 扎实的Java基础；熟悉Java常见的技术框架(Spring, Spring Boot, Spring Cloud )等；\n3. 熟悉 MYSQL/ Oracle数据库，熟悉关系数据库应用设计开发；\n4. 熟悉 Linux平台，熟悉 Internet基本协议(如TCP/IP、HTTP等)内容及相关应用；\n5. 对数据结构、基本算法熟练掌握，并具备基本的算法设计能力；\n6. 具有扎实的 Java 基础，熟练掌握 Lambda 表达式、集合、多线程，反射等基础框架。\n7. 对 JVM 有初步的理解，包括内存模型，垃圾收集原理，常见的垃圾回收器，了解基本调优技巧。\n8. 熟练使用 IDEA，WebStorm，VScode，Postman，Xshell，Axure，Git，Stack Overflow 等工具。\n9. 熟练 Spring、SpringMVC、MyBatis、MyBatis-Plus、Spring Boot 等框架的使用和原理。\n10. 熟悉 Spring Cloud、Spring Cloud Alibaba 微服务架构如：Nacos、OpenFeign、Gateway、Sentinel、Seata 等相关组件以及 SkyWalking 的部署。\n11. 熟练掌握 Redis 缓存中间件，如数据持久化机制、主从集群（容灾冷处理，哨兵机制）、分布式系统、高并发下缓存失效问题(如缓存雪崩、缓存穿透、缓存击穿等)。\n12. 熟练掌握 MySQL 数据库，如索引、MVCC 机制、事务、锁、SQL 优化。\n13. 熟练掌握 RabbitMQ 消息中间件，了解常见问题解决方案（如消息不丢失、消息补偿、幂等性、有序、堆积等)。\n14. 熟练掌握 Linux，有独自开发并使用 Docker 部署 Springboot+Vue 的项目经验。\n15. 了解常用的设计模式：单例模式、责任链模式、策略模式。\n16. 了解 HTML，CSS，JavaScript，Vue，ElementUl 并可以使用前端技术完成后台管理系统的编写。',1,1,0,0,1,'2024-06-26 00:54:51','2024-07-11 10:30:19'),(93,1,58,'https://junlex.com/article/0a5f585f1d5db3ba087c0f5795b25cb1.jpg','前端开发工程师岗位要求','-具备跨终端的前端开发能力，在Web（PC+Mobile）/Node.js/HybridApp/NativeApp三个方向上至少精通一个方向，-至少能熟练使用一款前端框架，熟悉源码和框架原理-对ES6','- 具备跨终端的前端开发能力，在Web（PC+Mobile）/Node.js/Hybrid App/Native App三个方向上至少精通一个方向，\n- 至少能熟练使用一款 (Vue.js/React/Angular) 前端框架，熟悉源码和框架原理\n- 对ES6来说，可以熟练的使用(Promise、迭代器、let/const、解构赋值、扩展运算...、class创建类等语法特性要了解如何使用)',1,0,0,0,1,'2024-07-10 15:41:24','2024-07-11 10:26:53');
/*!40000 ALTER TABLE `t_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article_tag`
--

DROP TABLE IF EXISTS `t_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article_tag` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` int NOT NULL COMMENT '文章id',
  `tag_id` int NOT NULL COMMENT '标签id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article_tag`
--

LOCK TABLES `t_article_tag` WRITE;
/*!40000 ALTER TABLE `t_article_tag` DISABLE KEYS */;
INSERT INTO `t_article_tag` VALUES (125,73,15),(134,79,15),(136,80,15),(142,85,15),(232,71,15),(248,61,15),(249,82,15),(251,90,26),(253,88,26),(255,84,26),(256,83,15),(257,81,15),(258,77,15),(259,78,23),(260,75,15),(263,89,17),(265,92,27),(269,87,26),(273,93,28),(275,91,30),(276,91,31),(281,94,31);
/*!40000 ALTER TABLE `t_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_blog_file`
--

DROP TABLE IF EXISTS `t_blog_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_blog_file` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '文件url',
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件名',
  `file_size` int NOT NULL DEFAULT '0' COMMENT '文件大小',
  `extend_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文件类型',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件路径',
  `is_dir` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为目录 (0否 1是)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_blog_file`
--

LOCK TABLES `t_blog_file` WRITE;
/*!40000 ALTER TABLE `t_blog_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_blog_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_carousel`
--

DROP TABLE IF EXISTS `t_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_carousel` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '轮播图地址',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 (0否 1是)',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_carousel`
--

LOCK TABLES `t_carousel` WRITE;
/*!40000 ALTER TABLE `t_carousel` DISABLE KEYS */;
INSERT INTO `t_carousel` VALUES (2,'https://junlex.com/article/379ce4b2ddf4b087441c196fbffa2f3b.jpg',1,'','2024-06-16 23:09:17','2024-06-17 00:48:25'),(3,'https://junlex.com/article/6e74df3e6cef8a547d66d6994f5b0b41.jpg',0,'','2024-06-16 23:10:34','2024-07-10 17:15:14'),(4,'https://junlex.com/article/ca851c94f25e448fb1b5f69e616fc0f8.jpg',1,'','2024-06-16 23:18:18','2024-06-29 23:07:53'),(5,'https://junlex.com/article/12919eb39791024f818e141f16c59cf5.jpg',1,'','2024-06-16 23:18:25','2024-06-23 18:47:50'),(6,'https://junlex.com/article/9f32edd921411de29de22f7196586a43.jpg',0,'','2024-06-16 23:18:37','2024-06-17 00:43:21'),(7,'https://junlex.com/article/aa70728c93d199bb9a91e6d647109abc.jpg',0,'','2024-06-16 23:18:45','2024-06-17 00:43:19'),(8,'https://junlex.com/article/2ce1129fceee7f14cb4cf554ed167534.jpg',1,'','2024-06-17 00:43:02',NULL),(9,'https://junlex.com/article/293cee0acb7bac0c16744790fdbb92cf.jpg',1,'','2024-06-17 00:43:09',NULL),(10,'https://junlex.com/article/7602b3e826ed33d1cd5cc027dd60a0bd.jpg',0,'','2024-06-17 00:43:15','2024-06-29 23:07:56');
/*!40000 ALTER TABLE `t_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_category` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES (50,'SpringSecurity','2023-02-22 12:10:21','2023-12-07 16:59:30'),(51,'Mysql','2023-09-13 11:44:11',NULL),(52,'Redis','2023-09-13 11:44:19',NULL),(53,'项目实战','2023-09-13 11:44:29',NULL),(54,'Spring','2023-09-13 11:44:42',NULL),(55,'Kafka','2023-12-07 16:58:16',NULL),(56,'旅行','2024-06-17 18:12:54',NULL),(57,'主机','2024-07-01 16:18:26',NULL),(58,'前端','2024-07-10 15:45:26',NULL),(59,'面试','2024-07-10 15:47:38',NULL),(60,'就业','2024-07-10 15:47:44',NULL);
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_chat_record`
--

DROP TABLE IF EXISTS `t_chat_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_chat_record` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '聊天记录id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '聊天内容',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ip地址',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'ip来源',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_chat_record`
--

LOCK TABLES `t_chat_record` WRITE;
/*!40000 ALTER TABLE `t_chat_record` DISABLE KEYS */;
INSERT INTO `t_chat_record` VALUES (87,NULL,'223.104.160.183','https://myblogoss2.oss-cn-beijing.aliyuncs.com/config/e8ff32088199b1524da8135a1d2e36e3.jpg','你在干什么','223.104.160.183','中国|浙江|杭州|移动','2024-07-10 13:28:41'),(88,NULL,'223.104.160.183','https://myblogoss2.oss-cn-beijing.aliyuncs.com/config/e8ff32088199b1524da8135a1d2e36e3.jpg','热死我了','223.104.160.183','中国|浙江|杭州|移动','2024-07-10 13:28:49'),(92,NULL,'117.136.36.175','https://myblogoss2.oss-cn-beijing.aliyuncs.com/config/e8ff32088199b1524da8135a1d2e36e3.jpg','？？？','117.136.36.175','中国|河南||移动','2024-07-10 14:12:47'),(93,33,'天若长久时','https://junlex.com/avatar/ab5be2cb6053507ab5f01013d256431a.png','<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/xiaoku.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>','223.104.160.183','中国|浙江|杭州|移动','2024-07-10 15:01:19'),(95,1,'天若长久时','https://junlex.com/avatar/9fdd8f27220124690c940ec1a28e7e14.png','<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/daku.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>','223.104.160.156','中国|浙江|杭州|移动','2024-07-10 16:44:47'),(102,33,'天若长久时','https://junlex.com/avatar/ab5be2cb6053507ab5f01013d256431a.png','<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/leng.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>','223.104.160.163','中国|浙江|杭州|移动','2024-07-10 17:38:05'),(105,1,'天若长久时','https://junlex.com/avatar/9fdd8f27220124690c940ec1a28e7e14.png','<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>','183.128.187.146','中国|浙江|杭州|电信','2024-07-10 21:34:29'),(106,NULL,'183.156.124.165','https://myblogoss2.oss-cn-beijing.aliyuncs.com/config/e8ff32088199b1524da8135a1d2e36e3.jpg','111','183.156.124.165','中国|浙江|杭州|电信','2024-07-14 11:47:56');
/*!40000 ALTER TABLE `t_chat_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_comment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `comment_type` tinyint(1) NOT NULL COMMENT '类型 (1文章 2友链 3说说)',
  `type_id` int DEFAULT NULL COMMENT '类型id (类型为友链则没有值)',
  `parent_id` int DEFAULT NULL COMMENT '父评论id',
  `reply_id` int DEFAULT NULL COMMENT '回复评论id',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `from_uid` int NOT NULL COMMENT '评论用户id',
  `to_uid` int DEFAULT NULL COMMENT '回复用户id',
  `is_check` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否通过 (0否 1是)',
  `ip_address` varchar(100) DEFAULT NULL COMMENT 'ip地址',
  `ip_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'ip归属地',
  `create_time` datetime NOT NULL COMMENT '评论时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
INSERT INTO `t_comment` VALUES (2,1,71,NULL,NULL,'<img src= \'http://junlex.com/emoji/leng.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>东*我了',1,NULL,1,NULL,'杭州','2023-11-24 14:11:52',NULL),(3,3,37,NULL,NULL,'你好',1,NULL,1,NULL,'杭州','2023-11-24 22:21:50',NULL),(4,1,61,NULL,NULL,'真的太酷了',16,NULL,1,NULL,'浙江','2023-11-26 18:40:19',NULL),(5,1,61,NULL,NULL,'<img src= \'http://junlex.com/emoji/simle.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',16,NULL,1,NULL,'浙江','2023-11-26 18:40:28',NULL),(6,2,NULL,NULL,NULL,'<img src= \'http://junlex.com/emoji/tvdoge.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',1,NULL,1,NULL,'杭州','2023-12-08 00:08:02',NULL),(7,1,78,NULL,NULL,'<img src= \'http://junlex.com/emoji/doge.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',26,NULL,1,NULL,'杭州','2023-12-12 13:54:23',NULL),(8,1,75,NULL,NULL,'<img src= \'http://junlex.com/emoji/doge.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',26,NULL,1,NULL,'杭州','2023-12-12 13:54:31',NULL),(9,1,71,NULL,NULL,'<img src= \'http://junlex.com/emoji/tvdoge.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',26,NULL,1,NULL,'杭州','2023-12-12 13:55:17',NULL),(11,1,87,NULL,NULL,'<img src= \'http://junlex.com/emoji/dacall.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',31,NULL,1,NULL,'郑州','2024-06-18 19:48:08',NULL),(12,1,87,11,11,'<img src= \'http://junlex.com/emoji/xihuan.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',1,31,1,NULL,'浙江','2024-06-18 20:28:19',NULL),(13,1,82,NULL,NULL,'666',1,NULL,1,NULL,'杭州','2024-06-24 01:20:59',NULL),(14,1,87,NULL,NULL,'<img src= \'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/><img src= \'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',1,NULL,1,NULL,'杭州','2024-06-26 15:48:05',NULL),(15,1,87,NULL,NULL,'测试获取ip',1,NULL,1,NULL,'杭州','2024-07-01 17:03:29',NULL),(16,1,87,NULL,NULL,'测试获取ip',1,NULL,1,'127.0.0.1','杭州','2024-07-01 17:05:04',NULL),(17,1,87,NULL,NULL,'测试获取ip',1,NULL,1,'127.0.0.1','杭州','2024-07-01 17:08:15',NULL),(19,1,61,NULL,NULL,'测试IP归属地',33,NULL,1,'223.104.160.180','杭州','2024-07-01 18:15:22',NULL),(20,1,61,NULL,NULL,'测试',33,NULL,1,'223.104.160.180','浙江','2024-07-01 18:22:50',NULL),(21,1,61,NULL,NULL,'雨停了',33,NULL,1,'223.104.160.180','浙江','2024-07-01 18:23:01',NULL),(22,1,87,NULL,NULL,'<img src= \'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/leng.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',33,NULL,1,'223.104.160.180','浙江','2024-07-01 18:30:34',NULL),(23,1,87,22,22,'哈哈哈',33,33,1,'223.104.160.180','浙江','2024-07-01 18:30:45',NULL),(24,1,87,22,23,'回复不显示ip归属地',33,33,1,'223.104.160.180','浙江','2024-07-01 18:31:18',NULL),(39,2,NULL,NULL,NULL,'( ゜- ゜)つロ干杯',33,NULL,1,'223.104.160.156','浙江','2024-07-10 15:07:13',NULL),(40,1,94,NULL,NULL,'<img src= \'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>',1,NULL,1,'183.156.124.165','浙江','2024-07-14 15:11:58',NULL);
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_exception_log`
--

DROP TABLE IF EXISTS `t_exception_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_exception_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '异常id',
  `module` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常模块',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常uri',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作描述',
  `error_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常方法',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常信息',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `request_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求方式',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作地址',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作系统',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '浏览器',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=972 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_exception_log`
--

LOCK TABLES `t_exception_log` WRITE;
/*!40000 ALTER TABLE `t_exception_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_exception_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_friend`
--

DROP TABLE IF EXISTS `t_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_friend` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '友链id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链名称',
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链颜色',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链头像',
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链地址',
  `introduction` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链介绍',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `friend_user` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_friend`
--

LOCK TABLES `t_friend` WRITE;
/*!40000 ALTER TABLE `t_friend` DISABLE KEYS */;
INSERT INTO `t_friend` VALUES (1,'测试友链','#409EFF','https://junlex.com/config/27b10971c963e55455b09474399460cf.jpg','www.junlex.com','我的道路有自己选择。','2024-05-30 10:10:02',NULL);
/*!40000 ALTER TABLE `t_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父菜单id (paren_id为0且type为M则是一级菜单)',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限类型 (M目录 C菜单 B按钮)',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '路由地址',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '菜单图标',
  `component` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '菜单组件',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '权限标识',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否隐藏 (0否 1是)',
  `is_disable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁用 (0否 1是)',
  `order_num` int NOT NULL DEFAULT '1' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,0,'M','文章管理','article','archives','','',0,0,1,'2022-12-04 09:13:31','2023-02-21 15:36:45'),(3,1,'C','分类管理','category','category','/blog/category/index','blog:category:list',0,0,3,'2022-12-04 09:22:20','2023-02-21 15:21:19'),(4,1,'C','标签管理','tag','tag','/blog/tag/index','blog:tag:list',0,0,4,'2022-12-04 09:23:01','2023-02-21 15:21:23'),(5,3,'B','添加分类',NULL,NULL,NULL,'blog:category:add',0,0,1,'2022-12-04 09:30:55',NULL),(6,3,'B','删除分类',NULL,NULL,NULL,'blog:category:delete',0,0,2,'2022-12-04 09:32:15','2022-12-26 15:39:20'),(7,3,'B','修改分类',NULL,NULL,NULL,'blog:category:update',0,0,3,'2022-12-04 09:33:52',NULL),(8,4,'B','添加标签',NULL,NULL,'','blog:tag:add',0,0,1,'2022-12-04 10:19:51',NULL),(9,4,'B','删除标签',NULL,NULL,NULL,'blog:tag:delete',0,0,2,'2022-12-04 10:20:41',NULL),(10,4,'B','修改标签',NULL,NULL,NULL,'blog:tag:update',0,0,3,'2022-12-04 10:21:32',NULL),(11,0,'M','系统管理','system','system','','',0,0,3,'2022-12-06 10:58:50','2023-01-03 18:47:19'),(12,11,'C','菜单管理','menu','tree-table','/system/menu/index','system:menu:list',0,0,1,'2022-12-06 16:33:56',NULL),(13,11,'C','角色管理','role','peoples','/system/role/index','system:role:list',0,0,2,'2022-12-06 17:09:55',NULL),(14,11,'C','用户管理','user','user','/system/user/index','system:user:list',0,0,3,'2022-12-06 17:10:28',NULL),(15,12,'B','添加菜单',NULL,'',NULL,'system:menu:add',0,0,1,'2022-12-07 10:50:22',NULL),(16,12,'B','删除菜单',NULL,'',NULL,'system:menu:delete',0,0,2,'2022-12-07 10:50:54',NULL),(17,12,'B','修改菜单',NULL,'',NULL,'system:menu:update',0,0,3,'2022-12-07 10:55:21',NULL),(18,13,'B','添加角色',NULL,NULL,NULL,'system:role:add',0,0,1,'2022-12-07 10:56:24',NULL),(19,13,'B','删除角色',NULL,NULL,NULL,'system:role:delete',0,0,2,'2022-12-07 10:56:50',NULL),(20,13,'B','修改角色',NULL,NULL,NULL,'system:role:update',0,0,3,'2022-12-07 10:57:15',NULL),(21,0,'M','日志管理','log','log','','',0,0,4,'2022-12-21 17:36:39','2023-02-21 15:20:13'),(22,21,'C','操作日志','operation','form','/system/log/operation','log:operation:list',0,0,1,'2022-12-21 20:14:01',NULL),(23,21,'C','异常日志','exception','bug','/system/log/exception','log:exception:list',0,0,2,'2022-12-21 20:48:25',NULL),(24,22,'B','删除操作日志',NULL,NULL,NULL,'log:operation:delete',0,0,1,'2022-12-26 16:43:00',NULL),(25,23,'B','删除异常日志',NULL,NULL,NULL,'log:exception:delete',0,0,1,'2022-12-27 13:21:50',NULL),(26,0,'M','系统监控','monitor','monitor',NULL,'',0,0,5,'2022-12-27 13:23:29','2023-01-03 18:47:27'),(27,26,'C','定时任务','task','job','/monitor/task/index','monitor:task:list',0,0,2,'2022-12-27 13:26:29','2023-01-01 21:08:35'),(28,27,'B','添加任务',NULL,NULL,NULL,'monitor:task:add',0,0,1,'2022-12-27 13:32:42',NULL),(29,27,'B','修改任务',NULL,NULL,NULL,'monitor:task:update',0,0,2,'2022-12-27 13:33:45',NULL),(30,27,'B','删除任务',NULL,NULL,NULL,'monitor:task:delete',0,0,3,'2022-12-27 13:34:29',NULL),(31,27,'B','修改任务状态',NULL,NULL,NULL,'monitor:task:status',0,0,4,'2022-12-27 13:43:24',NULL),(32,27,'B','运行任务',NULL,NULL,NULL,'monitor:task:run',0,0,5,'2022-12-27 13:45:34',NULL),(33,13,'B','修改角色状态',NULL,NULL,NULL,'system:role:status',0,0,4,'2022-12-27 13:46:39',NULL),(34,0,'M','网站管理','web','international',NULL,'international',0,0,6,'2022-12-30 17:22:33','2023-02-14 09:46:29'),(35,34,'C','友链管理','friend','friend','/web/friend/index','web:friend:list',0,0,1,'2022-12-30 17:33:15',NULL),(36,0,'M','消息管理','news','email',NULL,'',0,0,2,'2022-12-30 17:50:06','2022-12-30 18:02:12'),(37,36,'C','留言管理','message','form','/news/message/index','news:message:list',0,0,2,'2022-12-30 17:58:25','2022-12-30 18:01:47'),(38,36,'C','评论管理','comment','comment','/news/comment/index','news:comment:list',0,0,1,'2022-12-30 17:59:37','2022-12-30 18:03:35'),(39,35,'B','添加友链',NULL,NULL,NULL,'web:friend:add',0,0,1,'2022-12-30 18:56:22',NULL),(40,35,'B','删除友链',NULL,NULL,NULL,'web:friend:delete',0,0,2,'2022-12-30 18:56:42',NULL),(41,35,'B','修改友链',NULL,NULL,NULL,'web:friend:update',0,0,3,'2022-12-30 18:57:08',NULL),(42,37,'B','删除留言',NULL,NULL,NULL,'news:message:delete',0,0,1,'2022-12-30 22:05:53',NULL),(45,37,'B','审核留言',NULL,NULL,NULL,'news:message:pass',0,0,2,'2022-12-30 22:29:24',NULL),(46,34,'C','网站配置','site','example','/web/site/index','web:site:list',0,0,5,'2022-12-31 11:50:45','2023-01-03 18:49:17'),(51,34,'C','相册管理','album','album','/web/album/index','web:album:list',0,0,3,'2023-01-01 18:16:40','2023-01-03 18:49:06'),(52,34,'C','照片管理','photo/:albumId','photo','/web/photo/index','web:photo:list',1,0,4,'2023-01-01 18:18:11','2023-01-01 18:39:22'),(53,26,'C','在线用户','online','online','/monitor/online/index','monitor:online:list',0,0,1,'2023-01-01 21:07:48','2023-01-01 21:08:29'),(54,51,'B','添加相册',NULL,NULL,NULL,'web:album:add',0,0,1,'2023-01-02 19:01:33',NULL),(55,51,'B','删除相册',NULL,NULL,NULL,'web:album:delete',0,0,2,'2023-01-02 19:02:03',NULL),(56,51,'B','修改相册',NULL,NULL,NULL,'web:album:update',0,0,3,'2023-01-02 19:02:50',NULL),(57,51,'B','编辑相册',NULL,NULL,NULL,'web:album:edit',0,0,4,'2023-01-02 19:03:40',NULL),(58,51,'B','上传相册封面',NULL,NULL,NULL,'web:album:upload',0,0,5,'2023-01-02 19:04:38',NULL),(60,12,'B','编辑菜单',NULL,NULL,NULL,'system:menu:edit',0,0,4,'2023-01-03 18:29:57',NULL),(61,34,'C','说说管理','talk','talk','/web/talk/index','web:talk:list',0,0,2,'2023-01-03 18:48:28','2023-01-03 18:48:41'),(62,61,'B','添加说说',NULL,NULL,NULL,'web:talk:add',0,0,1,'2023-01-05 19:16:42',NULL),(63,61,'B','删除说说',NULL,NULL,NULL,'web:talk:delete',0,0,2,'2023-01-05 19:17:07',NULL),(64,61,'B','修改说说',NULL,NULL,NULL,'web:talk:update',0,0,3,'2023-01-05 19:17:36',NULL),(65,61,'B','编辑说说',NULL,NULL,NULL,'web:talk:edit',0,0,4,'2023-01-05 19:18:27',NULL),(66,61,'B','上传说说图片',NULL,NULL,NULL,'web:talk:upload',0,0,5,'2023-01-05 19:18:52',NULL),(67,46,'B','修改网站配置',NULL,NULL,NULL,'web:site:update',0,0,1,'2023-01-08 09:15:56',NULL),(68,46,'B','上传网站配置图片',NULL,NULL,NULL,'web:site:upload',0,0,2,'2023-01-08 14:53:16',NULL),(69,14,'B','修改用户',NULL,NULL,NULL,'system:user:update',0,0,1,'2023-01-09 17:03:18',NULL),(70,14,'B','修改用户状态',NULL,NULL,NULL,'system:user:status',0,0,2,'2023-01-09 17:03:51',NULL),(71,53,'B','下线用户',NULL,NULL,NULL,'monitor:online:kick',0,0,1,'2023-01-09 19:18:33',NULL),(73,1,'C','文章列表','list','chart','/blog/article/list','blog:article:list',0,0,2,'2023-01-10 17:37:29','2023-02-21 15:36:09'),(76,52,'B','添加照片',NULL,NULL,NULL,'web:photo:add',0,0,1,'2023-01-11 18:45:28',NULL),(77,52,'B','删除照片',NULL,NULL,NULL,'web:photo:delete',0,0,2,'2023-01-11 18:45:51',NULL),(78,52,'B','修改照片',NULL,NULL,NULL,'web:photo:update',0,0,3,'2023-01-11 18:46:12',NULL),(79,52,'B','上传照片',NULL,NULL,NULL,'web:photo:upload',0,0,3,'2023-01-11 18:46:48',NULL),(80,73,'B','添加文章',NULL,NULL,NULL,'blog:article:add',0,0,1,'2023-01-14 15:25:29',NULL),(81,73,'B','物理删除文章',NULL,NULL,NULL,'blog:article:delete',0,0,2,'2023-01-14 15:26:44',NULL),(82,73,'B','逻辑删除文章',NULL,NULL,NULL,'blog:article:recycle',0,0,3,'2023-01-14 15:28:32',NULL),(83,73,'B','更新文章',NULL,NULL,NULL,'blog:article:update',0,0,4,'2023-01-14 15:30:11',NULL),(84,73,'B','编辑文章',NULL,NULL,NULL,'blog:article:edit',0,0,5,'2023-01-14 15:32:34','2023-01-14 15:32:54'),(85,73,'B','上传文章图片',NULL,NULL,NULL,'blog:article:upload',0,0,6,'2023-01-14 15:34:05','2023-01-15 11:19:13'),(86,73,'B','置顶文章',NULL,NULL,NULL,'blog:article:top',0,0,7,'2023-01-14 15:35:33',NULL),(87,73,'B','推荐文章',NULL,NULL,NULL,'blog:article:recommend',0,0,8,'2023-01-14 15:36:08',NULL),(88,73,'B','点赞文章',NULL,NULL,NULL,'blog:article:like',0,0,9,'2023-01-14 15:36:39',NULL),(93,21,'C','访问日志','visit','logininfor','/system/log/visit','log:visit:list',0,0,3,'2023-01-28 19:04:09','2023-01-28 19:06:52'),(94,93,'B','删除访问日志',NULL,NULL,NULL,'log:visit:delete',0,0,1,'2023-01-28 19:05:31',NULL),(95,14,'B','修改用户邮箱',NULL,NULL,NULL,'user:phone:update',0,0,3,'2023-01-31 09:26:22',NULL),(96,14,'B','修改用户头像',NULL,NULL,NULL,'user:avatar:update',0,0,4,'2023-01-31 09:27:03',NULL),(97,14,'B','修改用户信息',NULL,NULL,NULL,'user:info:update',0,0,5,'2023-01-31 09:27:37',NULL),(98,14,'B','修改用户密码',NULL,NULL,NULL,'user:password:update',0,0,6,'2023-01-31 09:28:10',NULL),(99,38,'B','添加评论',NULL,NULL,NULL,'news:comment:add',0,0,1,'2023-02-08 19:09:25',NULL),(100,38,'B','删除评论',NULL,NULL,NULL,'news:comment:delete',0,0,2,'2023-02-08 19:09:57',NULL),(101,38,'B','审核评论',NULL,NULL,NULL,'news:comment:pass',0,0,3,'2023-02-08 19:10:26',NULL),(102,38,'B','点赞评论',NULL,NULL,NULL,'news:comment:like',0,0,4,'2023-02-08 19:10:45',NULL),(103,61,'B','点赞说说',NULL,NULL,NULL,'web:talk:like',0,0,6,'2023-02-10 11:16:23',NULL),(104,21,'C','任务日志','task','job','/system/log/task','log:task:list',0,0,3,'2023-02-14 10:28:28','2023-02-14 10:28:41'),(105,104,'B','删除任务日志',NULL,NULL,NULL,'log:task:delete',0,0,1,'2023-02-14 11:21:06',NULL),(106,104,'B','清空任务日志',NULL,NULL,NULL,'log:task:clear',0,0,2,'2023-02-14 11:21:28',NULL),(108,1,'C','发布文章','write','edit','/blog/article/write','blog:article:list',0,0,1,'2023-02-21 13:32:22','2023-02-21 15:36:04'),(111,1,'C','修改文章','write/:articleId','edit','/blog/article/write','blog:article:list',1,0,5,'2023-02-21 15:40:11','2023-02-21 15:41:07'),(123,11,'C','文件管理','file','file','/system/file/index','system:file:list',0,0,4,'2023-03-09 10:57:29',NULL),(124,123,'B','上传文件',NULL,NULL,NULL,'system:file:upload',0,0,1,'2023-03-10 23:11:33',NULL),(125,123,'B','新建文件夹',NULL,NULL,NULL,'system:file:createFolder',0,0,2,'2023-03-10 23:12:11',NULL),(126,123,'B','删除文件',NULL,NULL,NULL,'system:file:delete',0,0,3,'2023-03-10 23:12:45',NULL),(127,34,'C','轮播管理','carousel','carousel','/web/carousel/index','web:carousel:list',0,0,6,'2024-06-16 21:33:00',NULL),(128,127,'B','添加轮播图',NULL,NULL,NULL,'web:carousel:add',0,0,1,'2024-06-16 21:33:55',NULL),(129,127,'B','修改轮播图',NULL,NULL,NULL,'web:carousel:update',0,0,2,'2024-06-16 21:35:25',NULL),(130,127,'B','上传轮播图',NULL,NULL,NULL,'web:carousel:upload',0,0,3,'2024-06-16 21:40:17',NULL),(131,127,'B','删除轮播图',NULL,NULL,NULL,'web:carousel:delete',0,0,4,'2024-06-16 21:40:45',NULL),(132,127,'B','修改轮播图状态',NULL,NULL,NULL,'web:carousel:status',0,0,5,'2024-06-16 21:41:24',NULL);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_message` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `message_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '留言内容',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户地址',
  `is_check` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否通过 (0否 1是)',
  `create_time` datetime NOT NULL COMMENT '留言时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message`
--

LOCK TABLES `t_message` WRITE;
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
INSERT INTO `t_message` VALUES (89,'游客','https://junlex.com/config/9b49055eac30d0025f326fab47f30fb4.jpg','你好','223.104.41.194','中国|北京|北京市|移动',1,'2023-11-24 22:19:42',NULL),(90,'天若长久时','https://junlex.com/avatar/d0f3641244ce0817660c18b5b2c97932.png','上岸','106.38.75.170','中国|北京|北京市|电信',1,'2023-12-15 16:55:58',NULL),(91,'天若长久时','https://junlex.com/avatar/9838770593626216eec52d3f1f0871bd.png','今天有不开心嘛','223.104.160.157','中国|浙江省|移动',1,'2024-06-26 00:58:34',NULL);
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_operation_log`
--

DROP TABLE IF EXISTS `t_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_operation_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '操作id',
  `module` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作模块',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作类型',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作uri',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '方法名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作描述',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求方式',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '返回数据',
  `user_id` int NOT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作地址',
  `times` int NOT NULL COMMENT '操作耗时 (毫秒)',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_operation_log`
--

LOCK TABLES `t_operation_log` WRITE;
/*!40000 ALTER TABLE `t_operation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_photo`
--

DROP TABLE IF EXISTS `t_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_photo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '照片id',
  `album_id` int NOT NULL COMMENT '相册id',
  `photo_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '照片名',
  `photo_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '照片描述',
  `photo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '照片链接',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_photo`
--

LOCK TABLES `t_photo` WRITE;
/*!40000 ALTER TABLE `t_photo` DISABLE KEYS */;
INSERT INTO `t_photo` VALUES (19,3,'1728726004207833090',NULL,'https://junlex.com/photo/525823a33e75d7e9f1dada918847e8f2.jpg','2023-11-26 18:42:52',NULL),(20,3,'1728727492351086593',NULL,'https://junlex.com/photo/61dbfd829cbe7d595dff560f403c1cc3.jpg','2023-11-26 18:48:47',NULL),(21,3,'1728727492351086594',NULL,'https://junlex.com/photo/e1e9965814f66fced54bb7aafceece0c.jpg','2023-11-26 18:48:47',NULL),(23,3,'1728727492351086596',NULL,'https://junlex.com/photo/cf7a0ff7e502f2ecd80c38f5e26d3354.jpg','2023-11-26 18:48:47',NULL),(24,3,'1728727492351086597',NULL,'https://junlex.com/photo/45eb42f7c2d5bc5dcab6f474b267df4c.jpg','2023-11-26 18:48:47',NULL),(25,3,'1728727492351086598',NULL,'https://junlex.com/photo/33254cdff5c4d607c19f1475a68351db.jpg','2023-11-26 18:48:47',NULL),(26,3,'1728727492351086599',NULL,'https://junlex.com/photo/24f34bc90ca8a470acef6f94328505aa.jpg','2023-11-26 18:48:47',NULL),(54,1,'1804914379285061634',NULL,'https://junlex.com/photo/bab2c444554ab57e486b140091b6bd28.jpg','2024-06-24 00:28:16',NULL),(55,1,'1804915990325616642',NULL,'https://junlex.com/photo/84902e0810e3e6cc577270aab01e06bd.jpg','2024-06-24 00:34:40',NULL),(60,1,'1804919971953238017',NULL,'https://junlex.com/photo/d0095bf8d7d87374461cb9d565e21af0.jpg','2024-06-24 00:50:30',NULL),(61,5,'1804925967807275010',NULL,'https://junlex.com/photo/8140ce1995ba0be9719a9be7c2570613.jpg','2024-06-24 01:14:19',NULL),(89,4,'1805568011210842113',NULL,'https://junlex.com/photo/56ccc60c71689b652ae45afa6b268d98.jpg','2024-06-25 19:45:34',NULL),(90,4,'1805568260184727553',NULL,'https://junlex.com/photo/24b935fdea8b0fa9789017c82dfd5a4f.jpg','2024-06-25 19:46:34',NULL),(91,4,'1805568260184727554',NULL,'https://junlex.com/photo/daf43c1c6bef8d981b38f37c42a92e9d.jpg','2024-06-25 19:46:34',NULL),(92,4,'1805568260184727555',NULL,'https://junlex.com/photo/d597cf6eae973f3d2057c52ec0b363b7.jpg','2024-06-25 19:46:34',NULL),(93,4,'1805568573713145857',NULL,'https://junlex.com/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg','2024-06-25 19:47:48',NULL),(94,4,'1805568573713145858',NULL,'https://junlex.com/photo/f1a4b740879049be1aa7ff0a36d23ff0.jpg','2024-06-25 19:47:48',NULL),(95,4,'1805568573713145859',NULL,'https://junlex.com/photo/fb9a187220cdd284ae1ba3fb49010bc0.jpg','2024-06-25 19:47:48',NULL),(97,4,'1805570167225704450',NULL,'https://junlex.com/photo/4a86b11b0531c935e2fcbbec2f410e91.jpg','2024-06-25 19:54:08',NULL),(98,4,'1805570167225704451',NULL,'https://junlex.com/photo/5b56b4be7822a218f6ef6bf478e40459.jpg','2024-06-25 19:54:08',NULL),(99,4,'1805570167225704452',NULL,'https://junlex.com/photo/f2abc7d115dc3aa3b9b63acb94f75d30.jpg','2024-06-25 19:54:08',NULL),(100,4,'1805570167225704453',NULL,'https://junlex.com/photo/afce70cfe3c688e9bfc2fbbdf3273f74.jpg','2024-06-25 19:54:08',NULL),(101,4,'1805570167225704454',NULL,'https://junlex.com/photo/fe71bb435d481d9d054d9d5c89903f64.jpg','2024-06-25 19:54:08',NULL),(102,4,'1805570167225704455',NULL,'https://junlex.com/photo/f92de995c390b659e7236904903e884b.jpg','2024-06-25 19:54:08',NULL),(103,4,'1805570167225704456',NULL,'https://junlex.com/photo/371f7621b1ce896a58c85e3aa08d3ecf.jpg','2024-06-25 19:54:08',NULL),(104,4,'1805572017182203906',NULL,'https://junlex.com/photo/fd4bfcd35105e65ec8db1f8724962446.jpg','2024-06-25 20:01:29',NULL),(105,4,'1805572017182203907',NULL,'https://junlex.com/photo/02b3b441a59676bb523372ff62b977ab.jpg','2024-06-25 20:01:29',NULL),(106,4,'1805572017182203908',NULL,'https://junlex.com/photo/b31ce85bce51c2779c6b323aa0e01503.jpg','2024-06-25 20:01:29',NULL),(107,4,'1805572017182203909',NULL,'https://junlex.com/photo/94b02084ce13439a74d473a98f5d7e99.jpg','2024-06-25 20:01:29',NULL),(108,4,'1805572017182203910',NULL,'https://junlex.com/photo/b8fceb92e262d8b18cab61974094bb7e.jpg','2024-06-25 20:01:29',NULL),(109,4,'1805572017182203911',NULL,'https://junlex.com/photo/15385c427df94c36d26fe77826b5eb21.jpg','2024-06-25 20:01:29',NULL),(110,4,'1805572017182203912',NULL,'https://junlex.com/photo/adeb66b083abd8351eb34d01e94c0470.jpg','2024-06-25 20:01:29',NULL),(111,4,'1805572017182203913',NULL,'https://junlex.com/photo/fa11d61530a56715c15384373f4c1199.jpg','2024-06-25 20:01:29',NULL),(114,5,'1805597296623820801',NULL,'https://junlex.com/photo/05e165c224622b40bc4c0b53f1b5d09b.jpg','2024-06-25 21:41:57',NULL),(116,6,'1805879209793474561',NULL,'https://junlex.com/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg','2024-06-26 16:22:10',NULL),(117,4,'1805880410282971138',NULL,'https://junlex.com/photo/712edcb3c3a05aa93aa0e83f49d8e8aa.jpg','2024-06-26 16:26:56',NULL),(118,6,'1805886158849245186',NULL,'https://junlex.com/photo/fb9a187220cdd284ae1ba3fb49010bc0.jpg','2024-06-26 16:49:47',NULL),(119,6,'1805886928046850050',NULL,'https://junlex.com/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg','2024-06-26 16:52:50',NULL),(120,6,'1805887174940360705',NULL,'https://junlex.com/photo/6995383b37b2d3b859ae480e698b8f1b.png','2024-06-26 16:53:49',NULL),(121,6,'1806524742240493569',NULL,'https://junlex.com/photo/1d4c28602df625239b0e78bd23fd13eb.png','2024-06-28 11:07:17',NULL),(122,6,'1806984977482743809',NULL,'https://junlex.com/photo/f49e7b8bcec84408b1b95f30ae84da82.jpeg','2024-06-29 17:36:05',NULL),(123,7,'1810194218205888514',NULL,'https://junlex.com/photo/ee7146e69adf51cddcd5fc6d16a8f0a0.jpeg','2024-07-08 14:08:28',NULL),(124,7,'1810194218205888515',NULL,'https://junlex.com/photo/ee1cf69bf3017d162cebeff9cab428a8.jpeg','2024-07-08 14:08:28',NULL),(125,7,'1810194218205888516',NULL,'https://junlex.com/photo/645f2fc511ff8702aeda9d1a20332054.jpeg','2024-07-08 14:08:28',NULL),(126,7,'1810197004276514817',NULL,'https://junlex.com/photo/24d31a6c23c001a0adf7afd88618e7e3.jpeg','2024-07-08 14:19:32',NULL),(127,7,'1810197004276514818',NULL,'https://junlex.com/photo/71305ae03cc31a2087d01911c8c89f32.jpeg','2024-07-08 14:19:32',NULL),(128,7,'1810197004276514819',NULL,'https://junlex.com/photo/1d56929020796e5c4b13c688572bce0b.jpeg','2024-07-08 14:19:32',NULL),(129,7,'1810197004276514820',NULL,'https://junlex.com/photo/b73b0c130824ea39d6e16ea31bfeddbe.jpeg','2024-07-08 14:19:32',NULL),(130,7,'1810197004276514821',NULL,'https://junlex.com/photo/946d576604edaa89793c5b29978df5c5.jpeg','2024-07-08 14:19:32',NULL),(131,7,'1810197478669074433',NULL,'https://junlex.com/photo/14c5c2ceed975c1edd33866b1cc5dbd2.jpeg','2024-07-08 14:21:25',NULL),(132,7,'1810197478669074434',NULL,'https://junlex.com/photo/478a2098276b1f4cf07a11f68fc63a03.jpeg','2024-07-08 14:21:25',NULL),(133,7,'1810197478669074435',NULL,'https://junlex.com/photo/e3317b2847e25fea3b592697a2a851ef.jpeg','2024-07-08 14:21:25',NULL),(134,7,'1810197478669074436',NULL,'https://junlex.com/photo/27fdc78109963158d0c5716a5f68d8e0.jpeg','2024-07-08 14:21:25',NULL),(135,7,'1810197478669074437',NULL,'https://junlex.com/photo/6214fd2dcc8b3b500c664f5f92f7763f.jpeg','2024-07-08 14:21:25',NULL),(136,7,'1810197791652233217',NULL,'https://junlex.com/photo/5716d732bab4b5a642856e71776b08b8.jpeg','2024-07-08 14:22:40',NULL),(137,7,'1810197791652233218',NULL,'https://junlex.com/photo/49d178bb7661237bc7992501732b03a3.jpeg','2024-07-08 14:22:40',NULL),(138,7,'1810197791652233219',NULL,'https://junlex.com/photo/46f11929f7f414192ce09c50dd916f14.jpeg','2024-07-08 14:22:40',NULL),(139,7,'1810197791652233220',NULL,'https://junlex.com/photo/f12c523e4705274e1351002f6b5fb31c.jpeg','2024-07-08 14:22:40',NULL),(140,7,'1810198344599912450',NULL,'https://junlex.com/photo/101b45b610cb6a93dac3e4f000b29631.jpeg','2024-07-08 14:24:52',NULL),(141,7,'1810198344599912451',NULL,'https://junlex.com/photo/4608c88726a2cee24350378c8f1203c0.jpeg','2024-07-08 14:24:52',NULL),(142,7,'1810199641738756097',NULL,'https://junlex.com/photo/1cf983bc3fe6c96e77fa2783fba18568.jpeg','2024-07-08 14:30:01',NULL),(143,7,'1810199641738756098',NULL,'https://junlex.com/photo/a56f17f93257a0d2a7a6b3077a9cb82d.jpeg','2024-07-08 14:30:01',NULL),(144,7,'1810199641738756099',NULL,'https://junlex.com/photo/93075a7e22ee01dfe00ac440571a21d5.jpeg','2024-07-08 14:30:01',NULL),(145,7,'1810199641738756100',NULL,'https://junlex.com/photo/126ddc8dbef480c57fa24f08d3a95dab.jpeg','2024-07-08 14:30:01',NULL),(146,7,'1810199641738756101',NULL,'https://junlex.com/photo/5c9b1f10a775a3d9e10db61b1964079b.jpeg','2024-07-08 14:30:01',NULL),(147,7,'1810199641738756102',NULL,'https://junlex.com/photo/c5248cebd4a364af78ce6279fa1761a3.jpeg','2024-07-08 14:30:01',NULL),(148,7,'1810199641738756103',NULL,'https://junlex.com/photo/98309cc347e4aaa610a8943ad187a1e4.jpeg','2024-07-08 14:30:01',NULL),(149,7,'1810199641738756104',NULL,'https://junlex.com/photo/167eb7dea653c85d7a7cfabad7d1849f.jpeg','2024-07-08 14:30:01',NULL),(150,7,'1810199641738756105',NULL,'https://junlex.com/photo/66a10875bc85e1a093d14994274d7a4f.jpeg','2024-07-08 14:30:01',NULL),(151,7,'1810199641738756106',NULL,'https://junlex.com/photo/c5b58bef0ae286c04e50da32655b2104.jpeg','2024-07-08 14:30:01',NULL),(152,7,'1810199641738756107',NULL,'https://junlex.com/photo/1a45bb7abbad11f311bfbc78212ec18f.jpeg','2024-07-08 14:30:01',NULL),(153,7,'1810199641738756108',NULL,'https://junlex.com/photo/b45bf5b5e8184004e32d3c17f4b47f9d.jpeg','2024-07-08 14:30:01',NULL),(154,7,'1810199641738756109',NULL,'https://junlex.com/photo/f2a1f57c531dc4b77692a45e775a631b.jpeg','2024-07-08 14:30:01',NULL),(155,7,'1810199641738756110',NULL,'https://junlex.com/photo/892a298243a470f173683e9360e0190e.jpeg','2024-07-08 14:30:01',NULL),(156,7,'1810199641738756111',NULL,'https://junlex.com/photo/1226dcddd2678cbb0646696ca99cd920.jpeg','2024-07-08 14:30:01',NULL),(157,7,'1810199641738756112',NULL,'https://junlex.com/photo/5f15c8d98955c503cc5281487478ef09.jpeg','2024-07-08 14:30:01',NULL),(158,7,'1810199641738756113',NULL,'https://junlex.com/photo/4d9e7a7b0d85439af5afd433a1258893.jpeg','2024-07-08 14:30:01',NULL),(159,7,'1810199641738756114',NULL,'https://junlex.com/photo/006062addc0583c99a3557891dc13e27.jpeg','2024-07-08 14:30:01',NULL),(160,7,'1810199641738756115',NULL,'https://junlex.com/photo/9fc165baebec4e7a9a9fd60465c80ab1.jpeg','2024-07-08 14:30:01',NULL),(161,7,'1810199641738756116',NULL,'https://junlex.com/photo/d057b07d00ae694f0ff5234ee82f8147.jpeg','2024-07-08 14:30:01',NULL),(162,7,'1810199641738756117',NULL,'https://junlex.com/photo/b79eacea3ace3431b934385348c18922.jpeg','2024-07-08 14:30:01',NULL),(163,7,'1810199641738756118',NULL,'https://junlex.com/photo/34ce8f0076a481ff1eac1538905b596b.jpeg','2024-07-08 14:30:01',NULL),(164,7,'1810199641738756119',NULL,'https://junlex.com/photo/bff1a468565d81487ee07254334f5451.jpeg','2024-07-08 14:30:01',NULL),(165,7,'1810201142892740610',NULL,'https://junlex.com/photo/4d753c0638ded0f3110ae82798aebbdc.jpeg','2024-07-08 14:35:59',NULL),(166,7,'1810201142892740611',NULL,'https://junlex.com/photo/b613f334866506d04161718eb07bb916.jpeg','2024-07-08 14:35:59',NULL),(167,7,'1810201142892740612',NULL,'https://junlex.com/photo/52445915900c1b2ad23f56e916b7d8b2.jpeg','2024-07-08 14:35:59',NULL),(168,7,'1810201142892740613',NULL,'https://junlex.com/photo/3a79e711c76cc01a23d034c99e1e54a6.jpeg','2024-07-08 14:35:59',NULL),(169,7,'1810201142892740614',NULL,'https://junlex.com/photo/508d530b569b189c3ae1e282f91612c2.jpeg','2024-07-08 14:35:59',NULL),(170,7,'1810201142892740615',NULL,'https://junlex.com/photo/617a3486a525aefe1f4a124f94e14e90.jpeg','2024-07-08 14:35:59',NULL),(171,7,'1810243566700642305',NULL,'https://junlex.com/photo/63a360f1aaa0b7b5e2d8a8098b333350.jpeg','2024-07-08 17:24:34',NULL),(172,7,'1810243566700642306',NULL,'https://junlex.com/photo/83946336a78393c90eba7a1dc8e7bac1.jpeg','2024-07-08 17:24:34',NULL),(173,7,'1810245699885907970',NULL,'https://junlex.com/photo/9424b47bfa0665cb65f3c3e08d76e3ec.jpeg','2024-07-08 17:33:02',NULL),(174,7,'1810245699885907971',NULL,'https://junlex.com/photo/b2a2af2ce2d9baa8fd7b3a00dd059125.jpeg','2024-07-08 17:33:02',NULL),(176,7,'1810245699885907973',NULL,'https://junlex.com/photo/ede2a85892e1531acabbba8adeb2c8b7.jpeg','2024-07-08 17:33:02',NULL),(177,7,'1810245699885907974',NULL,'https://junlex.com/photo/107067ec822c23c863147cfd2d00d42e.jpeg','2024-07-08 17:33:02',NULL),(178,7,'1810330646537617410',NULL,'https://junlex.com/photo/5ca6d041a4c28c87ad7939d2b5a42cb3.jpeg','2024-07-08 23:10:35',NULL),(179,7,'1810330646537617411',NULL,'https://junlex.com/photo/e481944f6b6c4d8549fa8b72dcf00111.jpeg','2024-07-08 23:10:35',NULL),(181,7,'1810330646537617413',NULL,'https://junlex.com/photo/1d080900a54d5b1087a95f28c91dd6dd.jpeg','2024-07-08 23:10:35',NULL),(182,7,'1810330646537617414',NULL,'https://junlex.com/photo/b819fda5e03b2b591e6643bc645e7781.jpeg','2024-07-08 23:10:35',NULL),(183,7,'1810330646537617415',NULL,'https://junlex.com/photo/dfbe831cd037469358df13352395f962.jpeg','2024-07-08 23:10:35',NULL),(184,7,'1810330646537617416',NULL,'https://junlex.com/photo/c3f99eced578aaf735905a7454388872.jpeg','2024-07-08 23:10:35',NULL),(185,7,'1810330646537617417',NULL,'https://junlex.com/photo/4f8e8769fc9b66ddf5f8904c857cbcbe.jpeg','2024-07-08 23:10:35',NULL),(186,7,'1810344080851386369',NULL,'https://junlex.com/photo/81a24125da44b55aa734c5868f1fccb3.jpeg','2024-07-09 00:03:58',NULL),(187,7,'1810344080851386370',NULL,'https://junlex.com/photo/c694011aee34e54ffe1bcaf36a4c0539.jpeg','2024-07-09 00:03:58',NULL),(188,7,'1810344080851386371',NULL,'https://junlex.com/photo/29bf5fc65cb88183356946c5035f53e8.jpeg','2024-07-09 00:03:58',NULL),(189,7,'1810344080851386372',NULL,'https://junlex.com/photo/a518dc2aebbc204cbe4432d4f613d4f8.jpeg','2024-07-09 00:03:58',NULL),(190,7,'1810344080851386373',NULL,'https://junlex.com/photo/5d95062eba3d1a42c42c3be92cf3e574.jpeg','2024-07-09 00:03:58',NULL),(191,7,'1810344080851386374',NULL,'https://junlex.com/photo/d0fa5f3f121584d85dcd1834e46bf372.jpeg','2024-07-09 00:03:58',NULL),(192,7,'1810344080851386375',NULL,'https://junlex.com/photo/9405f6d581527ef9fa875a47fe104737.jpeg','2024-07-09 00:03:58',NULL),(193,7,'1810344080851386376',NULL,'https://junlex.com/photo/b5a542d899bc90fe1292bce89ce29194.jpeg','2024-07-09 00:03:58',NULL),(194,7,'1810344080851386377',NULL,'https://junlex.com/photo/6a5f6d1ca12c48671ea332941995d4d4.jpeg','2024-07-09 00:03:58',NULL),(195,7,'1810344080851386378',NULL,'https://junlex.com/photo/e50766882f613fd9e982e6f2605e7dbe.jpeg','2024-07-09 00:03:58',NULL),(196,7,'1810344080851386379',NULL,'https://junlex.com/photo/cf09c5658250cf60e7aafa099ea25ed9.jpeg','2024-07-09 00:03:58',NULL),(197,7,'1810344080851386380',NULL,'https://junlex.com/photo/d28a7c41d12eaeb6388b2a3a74bdeef9.jpeg','2024-07-09 00:03:58',NULL),(198,7,'1810344080851386381',NULL,'https://junlex.com/photo/4801c5cf98fe873cc7e8f0eee4bc1d3e.jpeg','2024-07-09 00:03:58',NULL),(199,7,'1810344080851386382',NULL,'https://junlex.com/photo/4eb7a9c6056d9112c2008cd88b7db22b.png','2024-07-09 00:03:58',NULL),(200,7,'1810345102072135682',NULL,'https://junlex.com/photo/70314463c2bf4fb5fe9344b91be31236.jpeg','2024-07-09 00:08:02',NULL),(201,7,'1810345435464777730',NULL,'https://junlex.com/photo/a933803dcf1e7d3459122e287014dce0.jpeg','2024-07-09 00:09:21',NULL),(202,7,'1810345714239193089',NULL,'https://junlex.com/photo/cd821f876d84219f9065a76dc840c92f.jpeg','2024-07-09 00:10:28',NULL),(203,6,'1810863987244048385',NULL,'https://junlex.com/photo/3d6124d857a79ce96ccc165aafacc0d3.png','2024-07-10 10:29:53',NULL);
/*!40000 ALTER TABLE `t_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '角色描述',
  `is_disable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁用 (0否 1是)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES ('1','admin','管理员',0,'2022-11-03 17:41:57','2024-06-16 22:10:51'),('2','user','普通用户',0,'2022-11-03 17:42:17','2024-07-01 16:22:52'),('3','test','测试账号',0,'2022-11-03 17:42:31','2024-07-15 17:12:25');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_menu`
--

DROP TABLE IF EXISTS `t_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_menu`
--

LOCK TABLES `t_role_menu` WRITE;
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` VALUES (6252,'1',1),(6253,'1',108),(6254,'1',73),(6255,'1',80),(6256,'1',81),(6257,'1',82),(6258,'1',83),(6259,'1',84),(6260,'1',85),(6261,'1',86),(6262,'1',87),(6263,'1',88),(6264,'1',3),(6265,'1',5),(6266,'1',6),(6267,'1',7),(6268,'1',4),(6269,'1',8),(6270,'1',9),(6271,'1',10),(6272,'1',111),(6273,'1',36),(6274,'1',38),(6275,'1',99),(6276,'1',100),(6277,'1',101),(6278,'1',102),(6279,'1',37),(6280,'1',42),(6281,'1',45),(6282,'1',11),(6283,'1',12),(6284,'1',15),(6285,'1',16),(6286,'1',17),(6287,'1',60),(6288,'1',13),(6289,'1',18),(6290,'1',19),(6291,'1',20),(6292,'1',33),(6293,'1',14),(6294,'1',69),(6295,'1',70),(6296,'1',95),(6297,'1',96),(6298,'1',97),(6299,'1',98),(6300,'1',123),(6301,'1',124),(6302,'1',125),(6303,'1',126),(6304,'1',21),(6305,'1',22),(6306,'1',24),(6307,'1',23),(6308,'1',25),(6309,'1',93),(6310,'1',94),(6311,'1',104),(6312,'1',105),(6313,'1',106),(6314,'1',26),(6315,'1',53),(6316,'1',71),(6317,'1',27),(6318,'1',28),(6319,'1',29),(6320,'1',30),(6321,'1',31),(6322,'1',32),(6323,'1',34),(6324,'1',35),(6325,'1',39),(6326,'1',40),(6327,'1',41),(6328,'1',61),(6329,'1',62),(6330,'1',63),(6331,'1',64),(6332,'1',65),(6333,'1',66),(6334,'1',103),(6335,'1',51),(6336,'1',54),(6337,'1',55),(6338,'1',56),(6339,'1',57),(6340,'1',58),(6341,'1',52),(6342,'1',76),(6343,'1',77),(6344,'1',78),(6345,'1',79),(6346,'1',46),(6347,'1',67),(6348,'1',68),(6349,'1',127),(6350,'1',128),(6351,'1',129),(6352,'1',130),(6353,'1',131),(6354,'1',132),(6355,'2',1),(6356,'2',108),(6357,'2',73),(6358,'2',80),(6359,'2',84),(6360,'2',88),(6361,'2',3),(6362,'2',4),(6363,'2',111),(6364,'2',36),(6365,'2',38),(6366,'2',99),(6367,'2',102),(6368,'2',37),(6369,'2',11),(6370,'2',12),(6371,'2',13),(6372,'2',14),(6373,'2',95),(6374,'2',96),(6375,'2',97),(6376,'2',98),(6377,'2',123),(6378,'2',21),(6379,'2',22),(6380,'2',23),(6381,'2',93),(6382,'2',104),(6383,'2',26),(6384,'2',53),(6385,'2',27),(6386,'2',34),(6387,'2',35),(6388,'2',61),(6389,'2',65),(6390,'2',103),(6391,'2',57),(6421,'3',1),(6422,'3',108),(6423,'3',73),(6424,'3',3),(6425,'3',4),(6426,'3',111),(6427,'3',36),(6428,'3',38),(6429,'3',37),(6430,'3',11),(6431,'3',12),(6432,'3',60),(6433,'3',13),(6434,'3',14),(6435,'3',123),(6436,'3',21),(6437,'3',22),(6438,'3',23),(6439,'3',93),(6440,'3',104),(6441,'3',26),(6442,'3',53),(6443,'3',27),(6444,'3',34),(6445,'3',35),(6446,'3',61),(6447,'3',52),(6448,'3',46);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_site_config`
--

DROP TABLE IF EXISTS `t_site_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_site_config` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户头像',
  `tourist_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '游客头像',
  `site_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站名称',
  `site_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站地址',
  `site_intro` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站简介',
  `site_notice` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站公告',
  `create_site_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建站日期',
  `record_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '备案号',
  `author_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者头像',
  `site_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站作者',
  `article_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章默认封面',
  `about_me` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '关于我',
  `github` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT 'Github',
  `gitee` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT 'Gitee',
  `bilibili` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '哔哩哔哩',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'QQ',
  `comment_check` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否评论审核 (0否 1是)',
  `message_check` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否留言审核 (0否 1是)',
  `is_reward` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否开启打赏 (0否 1是)',
  `wei_xin_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '微信二维码',
  `ali_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '支付宝二维码',
  `social_list` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '社交列表',
  `login_list` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录方式',
  `is_music` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否开启音乐播放器 (0否 1是)',
  `music_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '网易云歌单id',
  `is_chat` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否开启聊天室 (0否 1是)',
  `websocket_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'websocket链接',
  `archive_background_image` varchar(100) DEFAULT NULL COMMENT '文章归档页背景图片',
  `category_background_image` varchar(100) DEFAULT NULL COMMENT '文章分类页背景图片',
  `tag_background_image` varchar(100) DEFAULT NULL COMMENT '文章标签页背景图片',
  `talk_background_image` varchar(100) DEFAULT NULL COMMENT '娱乐说说页背景图片',
  `photo_background_image` varchar(100) DEFAULT NULL COMMENT '娱乐相册页背景图片',
  `picture_background_image` varchar(100) DEFAULT NULL COMMENT '娱乐图床页背景图片',
  `friend_background_image` varchar(100) DEFAULT NULL COMMENT '友链页背景图片',
  `message_background_image` varchar(100) DEFAULT NULL COMMENT '留言板页背景图片',
  `about_background_image` varchar(100) DEFAULT NULL COMMENT '关于页背景图片',
  `user_background_image` varchar(100) DEFAULT NULL COMMENT '用户个人中心背景图',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_site_config`
--

LOCK TABLES `t_site_config` WRITE;
/*!40000 ALTER TABLE `t_site_config` DISABLE KEYS */;
INSERT INTO `t_site_config` VALUES (1,'https://junlex.com/config/05e165c224622b40bc4c0b53f1b5d09b.jpg','https://myblogoss2.oss-cn-beijing.aliyuncs.com/config/e8ff32088199b1524da8135a1d2e36e3.jpg','Java Cove','www.junlex.com','我的道路有自己选择。','前段时间写毕设，服务器跑服务了，现在答辩过啦！！！网站恢复！<a href=\"https://blog.csdn.net/qq_52183856?spm=1000.2115.3001.5343\" style=\"color: #49b1f5;\">CSDN</a>','2023-08-25','豫ICP备2023002961号-2','https://junlex.com/config/27b10971c963e55455b09474399460cf.jpg','天若长久时','http://junlex.com/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg','``` java\n/**\n * 个人简介：\n * \n * @author guojun\n * @date 2000/12/12 12:12\n */\nSystem.out.println(\"道阻且长 行则将至\") ；\n```','https://github.com/nansheng1212','https://gitee.com/guo-_jun','','1517233142',0,0,0,'https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png','https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg','qq,gitee,github',',gitee,github,qq',1,'10135781464',1,'https://ws.junlex.com/websocket','http://junlex.com/config/ef30f44e9d16a5988b1df68656c35171.jpg','http://junlex.com/config/41086d0761868fcfc8559860338ef425.jpg','http://junlex.com/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg','https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg','http://junlex.com/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg','https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg','http://junlex.com/photo/84902e0810e3e6cc577270aab01e06bd.jpg','http://junlex.com/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg','http://junlex.com/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg','https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg','2023-01-07 19:31:33','2024-07-15 17:01:08');
/*!40000 ALTER TABLE `t_site_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tag`
--

DROP TABLE IF EXISTS `t_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_tag` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tag_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tag`
--

LOCK TABLES `t_tag` WRITE;
/*!40000 ALTER TABLE `t_tag` DISABLE KEYS */;
INSERT INTO `t_tag` VALUES (15,'Spring','2023-02-22 12:10:21','2023-12-07 16:58:31'),(16,'Redis','2023-12-07 16:57:14','2023-12-07 16:57:35'),(17,'Mysql','2023-12-07 16:57:28',NULL),(18,'SpringSecurity','2023-12-07 16:57:41',NULL),(19,'Springboot','2023-12-07 16:57:47',NULL),(20,'Springcloud','2023-12-07 16:57:53',NULL),(21,'RabbitMQ','2023-12-07 16:58:00',NULL),(22,'Kafka','2023-12-07 16:58:05',NULL),(23,'锁','2023-12-07 17:05:58',NULL),(24,'分布式','2024-01-05 11:09:56',NULL),(25,'数据库','2024-01-05 11:10:02',NULL),(26,'攻略','2024-06-17 18:13:10',NULL),(27,'主机配置','2024-07-01 16:18:32',NULL),(28,'前端','2024-07-10 15:45:32',NULL),(29,'Vue','2024-07-10 15:45:44',NULL),(30,'面试','2024-07-10 15:48:01',NULL),(31,'就业','2024-07-10 15:48:06',NULL);
/*!40000 ALTER TABLE `t_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_talk`
--

DROP TABLE IF EXISTS `t_talk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_talk` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '说说id',
  `user_id` int NOT NULL COMMENT '用户id',
  `talk_content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '说说内容',
  `images` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '说说图片',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶 (0否 1是)',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 (1公开  2私密)',
  `create_time` datetime NOT NULL COMMENT '发表时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_talk`
--

LOCK TABLES `t_talk` WRITE;
/*!40000 ALTER TABLE `t_talk` DISABLE KEYS */;
INSERT INTO `t_talk` VALUES (37,1,'请在自己热爱的世界里闪闪发光<img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/shengli.png\" width=\"24\" height=\"24\" alt=\"[胜利]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/shengli.png\" width=\"24\" height=\"24\" alt=\"[胜利]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/shengli.png\" width=\"24\" height=\"24\" alt=\"[胜利]\" style=\"margin: 0 1px;vertical-align: text-bottom\">','[\"https://junlex.com/talk/2bb26ac3ee49668d3aab5901cc2df6b8.jpg\"]',0,1,'2023-02-22 12:04:47','2024-06-29 22:12:06'),(38,1,'念旧也许不是一个好习惯，但却使回忆更珍贵。','',0,1,'2023-12-01 22:21:17',NULL),(42,1,'路的尽头还是路 但是路边有山川湖海 有绿树繁花 所以人生的真正意义永远都不是结局而是我们用心度过的每一天','[\"https://junlex.com/talk/05e165c224622b40bc4c0b53f1b5d09b.jpg\"]',0,1,'2024-06-26 00:52:16','2024-06-29 22:12:01'),(43,1,'希望一直如少年，干净纯粹心安✨','[\"https://junlex.com/talk/05e165c224622b40bc4c0b53f1b5d09b.jpg\"]',0,1,'2024-06-26 16:25:43',NULL),(44,1,'QQ登录修复了，快去试试QQ登录吧<img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/kgz.png\" width=\"24\" height=\"24\" alt=\"[嗑瓜子]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/kgz.png\" width=\"24\" height=\"24\" alt=\"[嗑瓜子]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/kgz.png\" width=\"24\" height=\"24\" alt=\"[嗑瓜子]\" style=\"margin: 0 1px;vertical-align: text-bottom\">','',0,1,'2024-06-29 22:11:45','2024-07-01 01:59:03'),(45,1,'“能拍就拍能照就照，想炫的时候就炫，想做什么就去做什么，因为十年后肯定拍不出如今般的模样，大胆的记录生活，因为你出现的每一天，都是值得被收藏的一天”@不予','',1,1,'2024-07-01 02:00:32',NULL),(46,1,'记住 摆烂太久是会被收走天赋的','',0,1,'2024-07-10 23:04:09',NULL);
/*!40000 ALTER TABLE `t_talk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_task`
--

DROP TABLE IF EXISTS `t_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_task` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `task_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `task_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` tinyint(1) NOT NULL DEFAULT '3' COMMENT '计划执行错误策略 (1立即执行 2执行一次 3放弃执行)',
  `concurrent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否并发执行 (0否 1是)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '任务状态 (0运行 1暂停)',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '任务备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_task`
--

LOCK TABLES `t_task` WRITE;
/*!40000 ALTER TABLE `t_task` DISABLE KEYS */;
INSERT INTO `t_task` VALUES (1,'清除全部异常日志','SYSTEM','timedTask.clearException','0 0 0 1/1 * ?',3,0,0,'清除全部异常日志','2023-12-08 13:57:31','2023-12-08 14:07:40'),(2,'清除一周前异常日志','SYSTEM','timedTask.clearExceptionLog','0 0 0 1/1 * ?',3,0,0,'清除一周前异常日志','2023-12-08 13:57:31','2023-12-08 14:07:40'),(4,'清除每日游客访问记录','SYSTEM','timedTask.clear','0 0 0 * * ?',3,0,1,'清除redis中的游客记录','2023-02-14 09:49:39','2024-01-29 15:08:17'),(6,'清除访问日志','SYSTEM','timedTask.clearVistiLog','0 0 2 * * ?',3,0,1,'清除一周前的访问日志','2023-02-22 15:56:32','2024-01-29 15:08:19'),(7,'更新网站浏览量','SYSTEM','timedTask.updateVisit','0 0 0 1/1 * ?',3,0,0,'更新网站浏览量','2023-12-08 13:57:31','2023-12-08 14:07:40');
/*!40000 ALTER TABLE `t_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_task_log`
--

DROP TABLE IF EXISTS `t_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_task_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `task_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `task_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `task_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '日志信息',
  `status` tinyint(1) DEFAULT '1' COMMENT '执行状态 (0失败 1正常)',
  `error_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '错误信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_task_log`
--

LOCK TABLES `t_task_log` WRITE;
/*!40000 ALTER TABLE `t_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `web_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '个人网站',
  `intro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '个人简介',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '手机号',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录地址',
  `login_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '登录方式 (1手机号 2QQ 3Gitee 4Github)',
  `is_disable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁用 (0否 1是)',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (3,'测试账号','test','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','https://junlex.com/91dc6c88cfff62096242e.jpg','','个人简介','test@qq.com','223.104.160.183','中国|浙江|杭州|移动',1,0,'2024-07-15 17:12:33','2022-11-30 21:34:26','2024-07-15 17:12:33');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` VALUES (50,3,'3'),(58,16,'2'),(59,17,'2'),(60,18,'2'),(61,19,'2'),(62,20,'2'),(63,21,'2'),(64,22,'2'),(65,1,'1'),(66,23,'2'),(67,24,'2'),(68,25,'2'),(69,26,'2'),(70,27,'2'),(71,28,'2'),(72,29,'2'),(73,30,'2'),(78,31,'1'),(79,32,'2'),(82,34,'1'),(84,33,'1'),(85,35,'2'),(86,36,'2');
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_visit_log`
--

DROP TABLE IF EXISTS `t_visit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_visit_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `page` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '访问页面',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '访问ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '访问地址',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '浏览器',
  `create_time` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6847 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_visit_log`
--

LOCK TABLES `t_visit_log` WRITE;
/*!40000 ALTER TABLE `t_visit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_visit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_website_visits`
--

DROP TABLE IF EXISTS `t_website_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_website_visits` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `count` varchar(255) DEFAULT NULL COMMENT '访问量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_website_visits`
--

LOCK TABLES `t_website_visits` WRITE;
/*!40000 ALTER TABLE `t_website_visits` DISABLE KEYS */;
INSERT INTO `t_website_visits` VALUES (1,'3378');
/*!40000 ALTER TABLE `t_website_visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 13:10:17
