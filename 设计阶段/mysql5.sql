/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/6/29 18:31:46                           */
/*==============================================================*/


drop table if exists ClassGroup;

drop table if exists class;

drop table if exists download;

drop table if exists manager;

drop table if exists master;

drop table if exists student;

drop table if exists studentjoingroup;

drop table if exists teacher;

drop table if exists teacherjoingroup;

/*==============================================================*/
/* Table: ClassGroup                                            */
/*==============================================================*/
create table ClassGroup
(
   gid                  int not null auto_increment,
   g_name               varchar(20) not null,
   g_date               date not null,
   g_num                bigint not null,
   Mid                  int,
   m_num                bigint,
   primary key (gid, g_num)
);

/*==============================================================*/
/* Table: class                                                 */
/*==============================================================*/
create table class
(
   c_id                 int not null auto_increment,
   c_name               varchar(20) not null,
   p_time               date not null,
   c_time               time not null,
   c_num                bigint not null,
   tid                  int,
   t_num                bigint,
   gid                  int,
   g_num                bigint,
   c_Flag               bool not null default false,
   primary key (c_id, c_num)
);

/*==============================================================*/
/* Table: download                                              */
/*==============================================================*/
create table download
(
   sid                  int not null,
   s_num                bigint not null,
   c_id                 int not null,
   c_num                bigint not null,
   primary key (c_id, sid, s_num, c_num)
);

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager
(
   rid                  int not null auto_increment,
   r_name               varchar(20) not null,
   r_handler            varchar(10) not null,
   r_password           varchar(10) not null,
   primary key (rid)
);

/*==============================================================*/
/* Table: master                                                */
/*==============================================================*/
create table master
(
   Mid                  int not null auto_increment,
   m_name               varchar(20) not null,
   m_sex                varchar(4) not null,
   m_birth              date not null,
   m_handle             varchar(10) not null,
   m_password           varchar(10) not null,
   m_Flag               bool not null default false,
   m_num                bigint not null,
   primary key (Mid, m_num)
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   sid                  int not null auto_increment,
   s_name               varchar(20) not null,
   s_sex                varchar(4) not null,
   s_birth              date not null,
   s_handle             varchar(10) not null,
   s_password           varchar(10) not null,
   s_Flag               bool not null default false,
   s_num                bigint not null,
   primary key (sid, s_num)
);

/*==============================================================*/
/* Table: studentjoingroup                                      */
/*==============================================================*/
create table studentjoingroup
(
   gid                  int not null,
   g_num                bigint not null,
   sid                  int not null,
   s_num                bigint not null,
   primary key (gid, sid, g_num, s_num)
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher
(
   tid                  int not null auto_increment,
   t_name               varchar(20) not null,
   t_sex                varchar(4) not null,
   t_birth              date not null,
   t_num                bigint not null,
   t_handle             varchar(10) not null,
   t_password           varchar(10) not null,
   t_Flag               bool not null default flase,
   primary key (tid, t_num)
);

/*==============================================================*/
/* Table: teacherjoingroup                                      */
/*==============================================================*/
create table teacherjoingroup
(
   tid                  int not null,
   t_num                bigint not null,
   gid                  int not null,
   g_num                bigint not null,
   G_Flag               bool default false,
   primary key (gid, tid, t_num, g_num)
);

alter table ClassGroup add constraint FK_managergroup foreign key (Mid, m_num)
      references master (Mid, m_num) on delete restrict on update restrict;

alter table class add constraint FK_JoinGroup foreign key (gid, g_num)
      references ClassGroup (gid, g_num) on delete restrict on update restrict;

alter table class add constraint FK_push foreign key (tid, t_num)
      references teacher (tid, t_num) on delete restrict on update restrict;

alter table download add constraint FK_download foreign key (sid, s_num)
      references student (sid, s_num) on delete restrict on update restrict;

alter table download add constraint FK_download2 foreign key (c_id, c_num)
      references class (c_id, c_num) on delete restrict on update restrict;

alter table studentjoingroup add constraint FK_studentjoingroup foreign key (gid, g_num)
      references ClassGroup (gid, g_num) on delete restrict on update restrict;

alter table studentjoingroup add constraint FK_studentjoingroup2 foreign key (sid, s_num)
      references student (sid, s_num) on delete restrict on update restrict;

alter table teacherjoingroup add constraint FK_teacherjoingroup foreign key (tid, t_num)
      references teacher (tid, t_num) on delete restrict on update restrict;

alter table teacherjoingroup add constraint FK_teacherjoingroup2 foreign key (gid, g_num)
      references ClassGroup (gid, g_num) on delete restrict on update restrict;

