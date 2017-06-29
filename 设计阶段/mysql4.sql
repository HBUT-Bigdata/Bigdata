/*==============================================================*/
/* DBMS name:      MySQL 4.0                                    */
/* Created on:     2017/6/29 17:31:12                           */
/*==============================================================*/

/*
drop index managergroup_FK on ClassGroup;

drop table if exists ClassGroup;

drop index JoinGroup_FK on class;

drop index push_FK on class;

drop table if exists class;

drop index download2_FK on download;

drop index download_FK on download;

drop table if exists download;

drop table if exists manager;

drop table if exists master;

drop table if exists student;

drop index studentjoingroup2_FK on studentjoingroup;

drop index studentjoingroup_FK on studentjoingroup;

drop table if exists studentjoingroup;

drop table if exists teacher;

drop index teacherjoingroup2_FK on teacherjoingroup;

drop index teacherjoingroup_FK on teacherjoingroup;

drop table if exists teacherjoingroup;*/

/*==============================================================*/
/* Table: ClassGroup                                            */
/*==============================================================*/
create table ClassGroup
(
   gid                            numeric(8,0)                   not null,
   g_name                         varchar(20)                    not null,
   g_date                         datetime                       not null,
   g_num                          bigint                         not null,
   m_num                          bigint,
   primary key (g_num)
)
type = InnoDB;

/*==============================================================*/
/* Index: managergroup_FK                                       */
/*==============================================================*/
create index managergroup_FK on ClassGroup
(
   m_num
);

/*==============================================================*/
/* Table: class                                                 */
/*==============================================================*/
create table class
(
   c_id                           numeric(8,0)                   not null AUTO_INCREMENT,
   c_name                         varchar(20)                    not null,
   p_time                         datetime                       not null,
   c_time                         datetime                       not null,
   c_num                          bigint                         not null,
   t_num                          bigint,
   g_num                          bigint,
   c_Flag                         bool                           not null default 0,
   primary key (c_num)
)
type = InnoDB;

/*==============================================================*/
/* Index: push_FK                                               */
/*==============================================================*/
create index push_FK on class
(
   t_num
);

/*==============================================================*/
/* Index: JoinGroup_FK                                          */
/*==============================================================*/
create index JoinGroup_FK on class
(
   g_num
);

/*==============================================================*/
/* Table: download                                              */
/*==============================================================*/
create table download
(
   s_num                          bigint                         not null,
   c_num                          bigint                         not null,
   primary key (s_num, c_num)
)
type = InnoDB;

/*==============================================================*/
/* Index: download_FK                                           */
/*==============================================================*/
create index download_FK on download
(
   s_num
);

/*==============================================================*/
/* Index: download2_FK                                          */
/*==============================================================*/
create index download2_FK on download
(
   c_num
);

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager
(
   rid                            numeric(8,0)                   not null AUTO_INCREMENT,
   r_name                         varchar(20)                    not null,
   r_handler                      varchar(10)                    not null,
   r_password                     varchar(10)                    not null,
   primary key (rid)
)
type = InnoDB;

/*==============================================================*/
/* Table: master                                                */
/*==============================================================*/
create table master
(
   Mid                            numeric(8,0)                   not null AUTO_INCREMENT,
   m_name                         varchar(20)                    not null,
   m_sex                          varchar(4)                     not null,
   m_birth                        datetime                       not null,
   m_handle                       varchar(10)                    not null,
   m_password                     varchar(10)                    not null,
   m_Flag                         bool                           not null default 0,
   m_num                          bigint                         not null,
   primary key (m_num)
)
type = InnoDB;

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   sid                            numeric(8,0)                   not null AUTO_INCREMENT,
   s_name                         varchar(20)                    not null,
   s_sex                          varchar(4)                     not null,
   s_birth                        datetime                       not null,
   s_handle                       varchar(10)                    not null,
   s_password                     varchar(10)                    not null,
   s_Flag                         bool                           not null default 0,
   s_num                          bigint                         not null,
   primary key (s_num)
)
type = InnoDB;

/*==============================================================*/
/* Table: studentjoingroup                                      */
/*==============================================================*/
create table studentjoingroup
(
   g_num                          bigint                         not null,
   s_num                          bigint                         not null,
   primary key (g_num, s_num)
)
type = InnoDB;

/*==============================================================*/
/* Index: studentjoingroup_FK                                   */
/*==============================================================*/
create index studentjoingroup_FK on studentjoingroup
(
   g_num
);

/*==============================================================*/
/* Index: studentjoingroup2_FK                                  */
/*==============================================================*/
create index studentjoingroup2_FK on studentjoingroup
(
   s_num
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher
(
   tid                            numeric(8,0)                   not null AUTO_INCREMENT,
   t_name                         varchar(20)                    not null,
   t_sex                          varchar(4)                     not null,
   t_birth                        datetime                       not null,
   t_num                          bigint                         not null,
   t_handle                       varchar(10)                    not null,
   t_password                     varchar(10)                    not null,
   t_Flag                         bool                           not null default 0,
   primary key (t_num)
)
type = InnoDB;

/*==============================================================*/
/* Table: teacherjoingroup                                      */
/*==============================================================*/
create table teacherjoingroup
(
   t_num                          bigint                         not null,
   g_num                          bigint                         not null,
   G_Flag                         bool                           default 0,
   primary key (t_num, g_num)
)
type = InnoDB;

/*==============================================================*/
/* Index: teacherjoingroup_FK                                   */
/*==============================================================*/
create index teacherjoingroup_FK on teacherjoingroup
(
   t_num
);

/*==============================================================*/
/* Index: teacherjoingroup2_FK                                  */
/*==============================================================*/
create index teacherjoingroup2_FK on teacherjoingroup
(
   g_num
);

alter table ClassGroup add constraint FK_managergroup foreign key (m_num)
      references master (m_num) on delete restrict on update restrict;

alter table class add constraint FK_JoinGroup foreign key (g_num)
      references ClassGroup (g_num) on delete restrict on update restrict;

alter table class add constraint FK_push foreign key (t_num)
      references teacher (t_num) on delete restrict on update restrict;

alter table download add constraint FK_download foreign key (s_num)
      references student (s_num) on delete restrict on update restrict;

alter table download add constraint FK_download2 foreign key (c_num)
      references class (c_num) on delete restrict on update restrict;

alter table studentjoingroup add constraint FK_studentjoingroup foreign key (g_num)
      references ClassGroup (g_num) on delete restrict on update restrict;

alter table studentjoingroup add constraint FK_studentjoingroup2 foreign key (s_num)
      references student (s_num) on delete restrict on update restrict;

alter table teacherjoingroup add constraint FK_teacherjoingroup foreign key (t_num)
      references teacher (t_num) on delete restrict on update restrict;

alter table teacherjoingroup add constraint FK_teacherjoingroup2 foreign key (g_num)
      references ClassGroup (g_num) on delete restrict on update restrict;

