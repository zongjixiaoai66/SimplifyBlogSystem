/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t215`;
CREATE DATABASE IF NOT EXISTS `t215` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t215`;

DROP TABLE IF EXISTS `boke`;
CREATE TABLE IF NOT EXISTS `boke` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_name` varchar(200) DEFAULT NULL COMMENT '博客名称 Search111 ',
  `boke_types` int DEFAULT NULL COMMENT '博客类型 Search111',
  `boke_photo` varchar(200) DEFAULT NULL COMMENT '博客图片',
  `boke_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `boke_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `boke_music` varchar(200) DEFAULT NULL COMMENT '音乐',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `boke_neirong_types` int DEFAULT NULL COMMENT '博客内容',
  `boke_content` text COMMENT '博客详情',
  `boke_yesno_types` int DEFAULT NULL COMMENT '博客审核',
  `boke_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='博客信息';

DELETE FROM `boke`;
INSERT INTO `boke` (`id`, `boke_name`, `boke_types`, `boke_photo`, `boke_video`, `boke_file`, `boke_music`, `zan_number`, `cai_number`, `yonghu_id`, `boke_neirong_types`, `boke_content`, `boke_yesno_types`, `boke_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, '博客名称1', 1, 'http://localhost:8080/jingjianbokexitong/upload/boke1.jpg', NULL, 'http://localhost:8080/jingjianbokexitong/upload/file.rar', NULL, 146, 473, 3, 3, '博客详情1', 1, NULL, '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(3, '博客名称3', 3, 'http://localhost:8080/jingjianbokexitong/upload/boke3.jpg', 'http://localhost:8080/jingjianbokexitong/upload/video.mp4', NULL, NULL, 377, 197, 2, 1, '博客详情3', 2, '123', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(4, '博客名称4', 3, 'http://localhost:8080/jingjianbokexitong/upload/boke4.jpg', NULL, NULL, 'http://localhost:8080/jingjianbokexitong/upload/music.mp3', 149, 45, 1, 2, '博客详情4', 2, '同意\n', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(5, '博客名称5', 3, 'http://localhost:8080/jingjianbokexitong/upload/boke5.jpg', '', 'http://localhost:8080/jingjianbokexitong/upload/file.rar', '', 431, 401, 3, 3, '博客详情5', 2, '通过', '2022-03-24 13:40:00', '2022-03-24 13:40:00');

DROP TABLE IF EXISTS `boke_collection`;
CREATE TABLE IF NOT EXISTS `boke_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_id` int DEFAULT NULL COMMENT '博客',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `boke_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='博客收藏';

DELETE FROM `boke_collection`;
INSERT INTO `boke_collection` (`id`, `boke_id`, `yonghu_id`, `boke_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(5, 5, 3, 1, '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(10, 4, 1, 1, '2022-03-25 01:36:49', '2022-03-25 01:36:49');

DROP TABLE IF EXISTS `boke_liuyan`;
CREATE TABLE IF NOT EXISTS `boke_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_id` int DEFAULT NULL COMMENT '博客',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `boke_liuyan_text` text COMMENT '评论内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='博客评论';

DELETE FROM `boke_liuyan`;
INSERT INTO `boke_liuyan` (`id`, `boke_id`, `yonghu_id`, `boke_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评论内容1', '回复信息1', '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(2, 2, 2, '评论内容2', '回复信息2', '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(3, 3, 3, '评论内容3', '回复信息3', '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(4, 4, 1, '评论内容4', '回复信息4', '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(5, 5, 2, '评论内容5', '回复信息5', '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(7, 4, 1, '321', '回复123', '2022-03-25 01:35:47', '2022-03-25 01:38:45', '2022-03-25 01:35:47');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/jingjianbokexitong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/jingjianbokexitong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/jingjianbokexitong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'boke_types', '博客类型', 1, '博客类型1', NULL, NULL, '2022-03-23 06:04:44'),
	(2, 'boke_types', '博客类型', 2, '博客类型2', NULL, NULL, '2022-03-23 06:04:44'),
	(3, 'boke_types', '博客类型', 3, '博客类型3', NULL, NULL, '2022-03-23 06:04:44'),
	(4, 'boke_yesno_types', '博客审核', 1, '审核中', NULL, NULL, '2022-03-23 06:04:44'),
	(5, 'boke_yesno_types', '博客审核', 2, '通过', NULL, NULL, '2022-03-23 06:04:44'),
	(6, 'boke_yesno_types', '博客审核', 3, '拒绝', NULL, NULL, '2022-03-23 06:04:44'),
	(7, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-23 06:04:44'),
	(8, 'shangpin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-23 06:04:44'),
	(9, 'shangpin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-23 06:04:44'),
	(10, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-23 06:04:45'),
	(11, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-23 06:04:45'),
	(12, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-23 06:04:45'),
	(13, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-23 06:04:45'),
	(14, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-23 06:04:45'),
	(15, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2022-03-23 06:04:45'),
	(16, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2022-03-23 06:04:45'),
	(17, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-23 06:04:45'),
	(18, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-23 06:04:45'),
	(19, 'boke_neirong_types', '博客内容', 1, '视频', NULL, NULL, '2022-03-24 13:39:37'),
	(20, 'boke_neirong_types', '博客内容', 2, '音乐', NULL, NULL, '2022-03-24 13:39:37'),
	(21, 'boke_neirong_types', '博客内容', 3, '文件', NULL, NULL, '2022-03-24 13:39:37');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, '发布内容1', NULL, 2, 1, '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(2, '帖子标题2', 2, NULL, '发布内容2', NULL, 1, 1, '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(3, '帖子标题3', 3, NULL, '发布内容3', NULL, 2, 1, '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(4, '帖子标题4', 2, NULL, '发布内容4', NULL, 2, 1, '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(5, '帖子标题5', 3, NULL, '发布内容5', NULL, 2, 1, '2022-03-24 13:40:00', '2022-03-24 13:40:00', '2022-03-24 13:40:00'),
	(6, NULL, 1, NULL, '用户评论123', 5, NULL, 2, '2022-03-25 01:36:22', NULL, '2022-03-25 01:36:22'),
	(7, NULL, NULL, 1, '管理评论321', 5, NULL, 2, '2022-03-25 01:37:54', NULL, '2022-03-25 01:37:54');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/jingjianbokexitong/upload/news1.jpg', '2022-03-24 13:40:00', '公告详情1', '2022-03-24 13:40:00'),
	(2, '公告标题2', 3, 'http://localhost:8080/jingjianbokexitong/upload/news2.jpg', '2022-03-24 13:40:00', '公告详情2', '2022-03-24 13:40:00'),
	(3, '公告标题3', 2, 'http://localhost:8080/jingjianbokexitong/upload/news3.jpg', '2022-03-24 13:40:00', '公告详情3', '2022-03-24 13:40:00'),
	(4, '公告标题4', 1, 'http://localhost:8080/jingjianbokexitong/upload/news4.jpg', '2022-03-24 13:40:00', '公告详情4', '2022-03-24 13:40:00'),
	(5, '公告标题5', 3, 'http://localhost:8080/jingjianbokexitong/upload/news5.jpg', '2022-03-24 13:40:00', '公告详情5', '2022-03-24 13:40:00');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '6xviqs6dp0rcx0j1hswldm5vu8y6eyft', '2022-03-24 13:59:14', '2024-06-09 09:45:33'),
	(2, 1, 'a1', 'yonghu', '用户', 'qdst54lyij7vmbb06wa1gwve3r4wo6n7', '2022-03-25 01:08:09', '2024-06-09 09:46:56');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/jingjianbokexitong/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-24 13:40:00'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/jingjianbokexitong/upload/yonghu2.jpg', 1, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-24 13:40:00'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/jingjianbokexitong/upload/yonghu3.jpg', 1, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-24 13:40:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
