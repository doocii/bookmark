drop table if exists `user`;
create table `user` (
`uid` int unsigned not null auto_increment primary key comment '用户ID',
`type` varchar(16) not null comment '第三方账号类型',
`id` varchar(64) not null comment '第三方用户ID',
`name` varchar(64) not null comment '第三方用户昵称',
`avatar` varchar(255) not null comment '第三方用户头像',
`url` varchar(255) not null comment '第三方用户主页',
`login_ip` varchar(64) not null comment '登录IP',
`login_time` int unsigned not null comment '登录时间',
unique key (`type`, `id`)
) engine=myisam charset=utf8 comment '用户表';

drop table if exists `category`;
create table `category` (
`id` int unsigned not null auto_increment primary key comment '分类ID',
`name` varchar(64) not null comment '分类名称',
`sort` int unsigned not null comment '排序值',
`is_default` tinyint not null default 0 comment '是否是默认分类',
`is_private` tinyint not null default 0 comment '是否私有',
`ctime` int unsigned not null comment '创建时间',
`uid` int unsigned not null comment '用户ID',
key (`uid`)
) engine=myisam charset=utf8 comment '分类表';

drop table if exists `link`;
create table `link` (
`id` int unsigned not null auto_increment primary key comment '网址ID',
`title` varchar(255) not null comment '网址标题',
`url` varchar(255) not null comment '网址链接',
`ctime` int unsigned not null comment '创建时间',
`cid` int unsigned not null comment '分类ID',
`uid` int unsigned not null comment '用户ID',
key (`cid`),
key (`uid`)
) engine=myisam charset=utf8 comment '网址表';

