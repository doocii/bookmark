drop table if exists `token`;
create table `token` (
`id` char(32) not null unique key comment '会话ID',
`app_id` int unsigned not null comment '应用ID',
`app_secret` char(32) not null comment '应用密钥',
`uid` int unsigned not null comment '用户ID',
`expire_time` int unsigned not null comment '会话过期时间',
`create_time` int unsigned not null comment '会话创建时间'
) engine=myisam charset=utf8 comment '会话表';
