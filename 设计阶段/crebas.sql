/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2017/6/25 11:49:33                           */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('ClassGroup')
            and   name  = 'managergroup_FK'
            and   indid > 0
            and   indid < 255)
   drop index ClassGroup.managergroup_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ClassGroup')
            and   type = 'U')
   drop table ClassGroup
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('class')
            and   name  = 'JoinGroup_FK'
            and   indid > 0
            and   indid < 255)
   drop index class.JoinGroup_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('class')
            and   name  = 'push_FK'
            and   indid > 0
            and   indid < 255)
   drop index class.push_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('class')
            and   type = 'U')
   drop table class
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('download')
            and   name  = 'download2_FK'
            and   indid > 0
            and   indid < 255)
   drop index download.download2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('download')
            and   name  = 'download_FK'
            and   indid > 0
            and   indid < 255)
   drop index download.download_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('download')
            and   type = 'U')
   drop table download
go

if exists (select 1
            from  sysobjects
           where  id = object_id('manager')
            and   type = 'U')
   drop table manager
go

if exists (select 1
            from  sysobjects
           where  id = object_id('master')
            and   type = 'U')
   drop table master
go

if exists (select 1
            from  sysobjects
           where  id = object_id('student')
            and   type = 'U')
   drop table student
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('studentjoingroup')
            and   name  = 'studentjoingroup2_FK'
            and   indid > 0
            and   indid < 255)
   drop index studentjoingroup.studentjoingroup2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('studentjoingroup')
            and   name  = 'studentjoingroup_FK'
            and   indid > 0
            and   indid < 255)
   drop index studentjoingroup.studentjoingroup_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('studentjoingroup')
            and   type = 'U')
   drop table studentjoingroup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('teacher')
            and   type = 'U')
   drop table teacher
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('teacherjoingroup')
            and   name  = 'teacherjoingroup2_FK'
            and   indid > 0
            and   indid < 255)
   drop index teacherjoingroup.teacherjoingroup2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('teacherjoingroup')
            and   name  = 'teacherjoingroup_FK'
            and   indid > 0
            and   indid < 255)
   drop index teacherjoingroup.teacherjoingroup_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('teacherjoingroup')
            and   type = 'U')
   drop table teacherjoingroup
go

/*==============================================================*/
/* Table: ClassGroup                                            */
/*==============================================================*/
create table ClassGroup (
   gid                  numeric              identity,
   g_name               varchar(20)          not null,
   g_date               datetime             not null,
   g_num                bigint               not null,
   m_num                bigint               null,
   constraint PK_CLASSGROUP primary key nonclustered (g_num)
)
go

/*==============================================================*/
/* Index: managergroup_FK                                       */
/*==============================================================*/
create index managergroup_FK on ClassGroup (
m_num ASC
)
go

/*==============================================================*/
/* Table: class                                                 */
/*==============================================================*/
create table class (
   c_id                 numeric              identity,
   c_name               varchar(20)          not null,
   p_time               datetime             not null,
   c_time               datetime             not null,
   c_num                bigint               not null,
   t_num                bigint               null,
   g_num                bigint               null,
   c_Flag               bit                  not null default 0,
   constraint PK_CLASS primary key nonclustered (c_num)
)
go

/*==============================================================*/
/* Index: push_FK                                               */
/*==============================================================*/
create index push_FK on class (
t_num ASC
)
go

/*==============================================================*/
/* Index: JoinGroup_FK                                          */
/*==============================================================*/
create index JoinGroup_FK on class (
g_num ASC
)
go

/*==============================================================*/
/* Table: download                                              */
/*==============================================================*/
create table download (
   s_num                bigint               not null,
   c_num                bigint               not null,
   constraint PK_DOWNLOAD primary key (s_num, c_num)
)
go

/*==============================================================*/
/* Index: download_FK                                           */
/*==============================================================*/
create index download_FK on download (
s_num ASC
)
go

/*==============================================================*/
/* Index: download2_FK                                          */
/*==============================================================*/
create index download2_FK on download (
c_num ASC
)
go

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager (
   rid                  numeric              identity,
   r_name               varchar(20)          not null,
   r_handler            varchar(10)          not null,
   r_password           varchar(10)          not null,
   constraint PK_MANAGER primary key nonclustered (rid)
)
go

/*==============================================================*/
/* Table: master                                                */
/*==============================================================*/
create table master (
   Mid                  numeric              identity,
   m_name               varchar(20)          not null,
   m_sex                varchar(4)           not null,
   m_birth              datetime             not null,
   m_handle             varchar(10)          not null,
   m_password           varchar(10)          not null,
   m_Flag               bit                  not null default 0,
   m_num                bigint               not null,
   constraint PK_MASTER primary key nonclustered (m_num)
)
go

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student (
   sid                  numeric              identity,
   s_name               varchar(20)          not null,
   s_sex                varchar(4)           not null,
   s_birth              datetime             not null,
   s_handle             varchar(10)          not null,
   s_password           varchar(10)          not null,
   s_Flag               bit                  not null default 0,
   s_num                bigint               not null,
   constraint PK_STUDENT primary key nonclustered (s_num)
)
go

/*==============================================================*/
/* Table: studentjoingroup                                      */
/*==============================================================*/
create table studentjoingroup (
   g_num                bigint               not null,
   s_num                bigint               not null,
   constraint PK_STUDENTJOINGROUP primary key (g_num, s_num)
)
go

/*==============================================================*/
/* Index: studentjoingroup_FK                                   */
/*==============================================================*/
create index studentjoingroup_FK on studentjoingroup (
g_num ASC
)
go

/*==============================================================*/
/* Index: studentjoingroup2_FK                                  */
/*==============================================================*/
create index studentjoingroup2_FK on studentjoingroup (
s_num ASC
)
go

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher (
   tid                  numeric              identity,
   t_name               varchar(20)          not null,
   t_sex                varchar(4)           not null,
   t_birth              datetime             not null,
   t_num                bigint               not null,
   t_handle             varchar(10)          not null,
   t_password           varchar(10)          not null,
   t_Flag               bit                  not null default 0,
   constraint PK_TEACHER primary key nonclustered (t_num)
)
go

/*==============================================================*/
/* Table: teacherjoingroup                                      */
/*==============================================================*/
create table teacherjoingroup (
   t_num                bigint               not null,
   g_num                bigint               not null,
   G_Flag               bit                  not null default 0,
   constraint PK_TEACHERJOINGROUP primary key (t_num, g_num)
)
go

/*==============================================================*/
/* Index: teacherjoingroup_FK                                   */
/*==============================================================*/
create index teacherjoingroup_FK on teacherjoingroup (
t_num ASC
)
go

/*==============================================================*/
/* Index: teacherjoingroup2_FK                                  */
/*==============================================================*/
create index teacherjoingroup2_FK on teacherjoingroup (
g_num ASC
)
go

