/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 10                       */
/* Created on:     2017/6/22 14:40:30                           */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_CLASSGRO_MANAGERGR_MASTER') then
    alter table ClassGroup
       delete foreign key FK_CLASSGRO_MANAGERGR_MASTER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CLASS_JOINGROUP_CLASSGRO') then
    alter table class
       delete foreign key FK_CLASS_JOINGROUP_CLASSGRO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CLASS_PUSH_TEACHER') then
    alter table class
       delete foreign key FK_CLASS_PUSH_TEACHER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOWNLOAD_DOWNLOAD_STUDENT') then
    alter table download
       delete foreign key FK_DOWNLOAD_DOWNLOAD_STUDENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOWNLOAD_DOWNLOAD2_CLASS') then
    alter table download
       delete foreign key FK_DOWNLOAD_DOWNLOAD2_CLASS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STUDENTJ_STUDENTJO_CLASSGRO') then
    alter table studentjoingroup
       delete foreign key FK_STUDENTJ_STUDENTJO_CLASSGRO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STUDENTJ_STUDENTJO_STUDENT') then
    alter table studentjoingroup
       delete foreign key FK_STUDENTJ_STUDENTJO_STUDENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TEACHERJ_TEACHERJO_TEACHER') then
    alter table teacherjoingroup
       delete foreign key FK_TEACHERJ_TEACHERJO_TEACHER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TEACHERJ_TEACHERJO_CLASSGRO') then
    alter table teacherjoingroup
       delete foreign key FK_TEACHERJ_TEACHERJO_CLASSGRO
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='managergroup_FK'
     and t.table_name='ClassGroup'
) then
   drop index ClassGroup.managergroup_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ClassGroup_PK'
     and t.table_name='ClassGroup'
) then
   drop index ClassGroup.ClassGroup_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ClassGroup'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ClassGroup
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='JoinGroup_FK'
     and t.table_name='class'
) then
   drop index class.JoinGroup_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='push_FK'
     and t.table_name='class'
) then
   drop index class.push_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='class_PK'
     and t.table_name='class'
) then
   drop index class.class_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='class'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table class
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='download2_FK'
     and t.table_name='download'
) then
   drop index download.download2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='download_FK'
     and t.table_name='download'
) then
   drop index download.download_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='download_PK'
     and t.table_name='download'
) then
   drop index download.download_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='download'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table download
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='manager_PK'
     and t.table_name='manager'
) then
   drop index manager.manager_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='manager'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table manager
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='master_PK'
     and t.table_name='master'
) then
   drop index master.master_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='master'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table master
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='student_PK'
     and t.table_name='student'
) then
   drop index student.student_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='student'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table student
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='studentjoingroup2_FK'
     and t.table_name='studentjoingroup'
) then
   drop index studentjoingroup.studentjoingroup2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='studentjoingroup_FK'
     and t.table_name='studentjoingroup'
) then
   drop index studentjoingroup.studentjoingroup_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='studentjoingroup_PK'
     and t.table_name='studentjoingroup'
) then
   drop index studentjoingroup.studentjoingroup_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='studentjoingroup'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table studentjoingroup
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='teacher_PK'
     and t.table_name='teacher'
) then
   drop index teacher.teacher_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='teacher'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table teacher
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='teacherjoingroup2_FK'
     and t.table_name='teacherjoingroup'
) then
   drop index teacherjoingroup.teacherjoingroup2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='teacherjoingroup_FK'
     and t.table_name='teacherjoingroup'
) then
   drop index teacherjoingroup.teacherjoingroup_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='teacherjoingroup_PK'
     and t.table_name='teacherjoingroup'
) then
   drop index teacherjoingroup.teacherjoingroup_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='teacherjoingroup'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table teacherjoingroup
end if;

/*==============================================================*/
/* Table: ClassGroup                                            */
/*==============================================================*/
create table ClassGroup 
(
   gid                  integer                        not null default autoincrement,
   g_name               varchar(20)                    not null,
   g_date               date                           not null,
   g_num                integer                        not null,
   m_num                integer                        null,
   constraint PK_CLASSGROUP primary key (g_num)
);

/*==============================================================*/
/* Index: ClassGroup_PK                                         */
/*==============================================================*/
create unique index ClassGroup_PK on ClassGroup (
g_num ASC
);

/*==============================================================*/
/* Index: managergroup_FK                                       */
/*==============================================================*/
create index managergroup_FK on ClassGroup (
m_num ASC
);

/*==============================================================*/
/* Table: class                                                 */
/*==============================================================*/
create table class 
(
   c_id                 integer                        not null default autoincrement,
   c_name               varchar(20)                    not null,
   p_time               date                           not null,
   c_time               time                           not null,
   c_num                integer                        not null,
   t_num                integer                        null,
   g_num                integer                        null,
   c_Flag               smallint                       not null default 0,
   constraint PK_CLASS primary key (c_num)
);

/*==============================================================*/
/* Index: class_PK                                              */
/*==============================================================*/
create unique index class_PK on class (
c_num ASC
);

/*==============================================================*/
/* Index: push_FK                                               */
/*==============================================================*/
create index push_FK on class (
t_num ASC
);

/*==============================================================*/
/* Index: JoinGroup_FK                                          */
/*==============================================================*/
create index JoinGroup_FK on class (
g_num ASC
);

/*==============================================================*/
/* Table: download                                              */
/*==============================================================*/
create table download 
(
   s_num                integer                        not null,
   c_num                integer                        not null,
   constraint PK_DOWNLOAD primary key clustered (s_num, c_num)
);

/*==============================================================*/
/* Index: download_PK                                           */
/*==============================================================*/
create unique clustered index download_PK on download (
s_num ASC,
c_num ASC
);

/*==============================================================*/
/* Index: download_FK                                           */
/*==============================================================*/
create index download_FK on download (
s_num ASC
);

/*==============================================================*/
/* Index: download2_FK                                          */
/*==============================================================*/
create index download2_FK on download (
c_num ASC
);

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager 
(
   rid                  integer                        not null default autoincrement,
   r_name               varchar(20)                    not null,
   r_handler            varchar(10)                    not null,
   r_password           varchar(10)                    not null,
   constraint PK_MANAGER primary key (rid)
);

/*==============================================================*/
/* Index: manager_PK                                            */
/*==============================================================*/
create unique index manager_PK on manager (
rid ASC
);

/*==============================================================*/
/* Table: master                                                */
/*==============================================================*/
create table master 
(
   Mid                  integer                        not null default autoincrement,
   m_name               varchar(20)                    not null,
   m_sex                varchar(4)                     not null,
   m_birth              date                           not null,
   m_handle             varchar(10)                    not null,
   m_password           varchar(10)                    not null,
   m_Flag               smallint                       not null default 0,
   m_num                integer                        not null,
   constraint PK_MASTER primary key (m_num)
);

/*==============================================================*/
/* Index: master_PK                                             */
/*==============================================================*/
create unique index master_PK on master (
m_num ASC
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student 
(
   sid                  integer                        not null default autoincrement,
   s_name               varchar(20)                    not null,
   s_sex                varchar(4)                     not null,
   s_birth              date                           not null,
   s_handle             varchar(10)                    not null,
   s_password           varchar(10)                    not null,
   s_Flag               smallint                       not null default false,
   s_num                integer                        not null,
   constraint PK_STUDENT primary key (s_num)
);

/*==============================================================*/
/* Index: student_PK                                            */
/*==============================================================*/
create unique index student_PK on student (
s_num ASC
);

/*==============================================================*/
/* Table: studentjoingroup                                      */
/*==============================================================*/
create table studentjoingroup 
(
   g_num                integer                        not null,
   s_num                integer                        not null,
   constraint PK_STUDENTJOINGROUP primary key clustered (g_num, s_num)
);

/*==============================================================*/
/* Index: studentjoingroup_PK                                   */
/*==============================================================*/
create unique clustered index studentjoingroup_PK on studentjoingroup (
g_num ASC,
s_num ASC
);

/*==============================================================*/
/* Index: studentjoingroup_FK                                   */
/*==============================================================*/
create index studentjoingroup_FK on studentjoingroup (
g_num ASC
);

/*==============================================================*/
/* Index: studentjoingroup2_FK                                  */
/*==============================================================*/
create index studentjoingroup2_FK on studentjoingroup (
s_num ASC
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher 
(
   tid                  integer                        not null default autoincrement,
   t_name               varchar(20)                    not null,
   t_sex                varchar(4)                     not null,
   t_birth              date                           not null,
   t_num                integer                        not null,
   t_handle             varchar(10)                    not null,
   t_password           varchar(10)                    not null,
   t_Flag               smallint                       not null default 0,
   constraint PK_TEACHER primary key (t_num)
);

/*==============================================================*/
/* Index: teacher_PK                                            */
/*==============================================================*/
create unique index teacher_PK on teacher (
t_num ASC
);

/*==============================================================*/
/* Table: teacherjoingroup                                      */
/*==============================================================*/
create table teacherjoingroup 
(
   t_num                integer                        not null,
   g_num                integer                        not null,
   j_Flag               smallint                       null default 0,
   constraint PK_TEACHERJOINGROUP primary key clustered (t_num, g_num)
);

/*==============================================================*/
/* Index: teacherjoingroup_PK                                   */
/*==============================================================*/
create unique clustered index teacherjoingroup_PK on teacherjoingroup (
t_num ASC,
g_num ASC
);

/*==============================================================*/
/* Index: teacherjoingroup_FK                                   */
/*==============================================================*/
create index teacherjoingroup_FK on teacherjoingroup (
t_num ASC
);

/*==============================================================*/
/* Index: teacherjoingroup2_FK                                  */
/*==============================================================*/
create index teacherjoingroup2_FK on teacherjoingroup (
g_num ASC
);

alter table ClassGroup
   add constraint FK_CLASSGRO_MANAGERGR_MASTER foreign key (m_num)
      references master (m_num)
      on update restrict
      on delete restrict;

alter table class
   add constraint FK_CLASS_JOINGROUP_CLASSGRO foreign key (g_num)
      references ClassGroup (g_num)
      on update restrict
      on delete restrict;

alter table class
   add constraint FK_CLASS_PUSH_TEACHER foreign key (t_num)
      references teacher (t_num)
      on update restrict
      on delete restrict;

alter table download
   add constraint FK_DOWNLOAD_DOWNLOAD_STUDENT foreign key (s_num)
      references student (s_num)
      on update restrict
      on delete restrict;

alter table download
   add constraint FK_DOWNLOAD_DOWNLOAD2_CLASS foreign key (c_num)
      references class (c_num)
      on update restrict
      on delete restrict;

alter table studentjoingroup
   add constraint FK_STUDENTJ_STUDENTJO_CLASSGRO foreign key (g_num)
      references ClassGroup (g_num)
      on update restrict
      on delete restrict;

alter table studentjoingroup
   add constraint FK_STUDENTJ_STUDENTJO_STUDENT foreign key (s_num)
      references student (s_num)
      on update restrict
      on delete restrict;

alter table teacherjoingroup
   add constraint FK_TEACHERJ_TEACHERJO_TEACHER foreign key (t_num)
      references teacher (t_num)
      on update restrict
      on delete restrict;

alter table teacherjoingroup
   add constraint FK_TEACHERJ_TEACHERJO_CLASSGRO foreign key (g_num)
      references ClassGroup (g_num)
      on update restrict
      on delete restrict;

