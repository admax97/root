/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/4/5 22:58:56                            */
/*==============================================================*/


drop table if exists admin;

drop table if exists exam;

drop table if exists library;

drop table if exists paper;

drop table if exists paper_question;

drop table if exists question;

drop table if exists student;

drop table if exists student_exam_info;

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin
(
   id                   int not null auto_increment,
   name                 varchar(32),
   role                 varchar(2),
   password             varchar(32),
   phonenumber          varchar(16),
   create_id            int,
   create_time          date,
   update_id            int,
   update_time          date,
   primary key (id)
);

/*==============================================================*/
/* Table: exam                                                  */
/*==============================================================*/
create table exam
(
   id                   int not null,
   examt_name           varchar(32) comment '考试名称',
   start_time           date comment '开始时间',
   end_time             date comment '结束时间',
   type                 int comment '考试类型（1：？）',
   paper_id             int comment '试卷id',
   exam_mark            varchar(500) comment '考试备注信息',
   expired_time         date comment '失效时间',
   exam_status          int comment '考试状态
            1：发布，未失效 
            2：未发布',
   create_id            int,
   create_time          date,
   update_id            int,
   update_time          date,
   primary key (id)
);

/*==============================================================*/
/* Table: library                                               */
/*==============================================================*/
create table library
(
   id                   int not null,
   title                varchar(500) comment '题目描述',
   question_type        int comment '试题类型',
   create_id            int,
   create_time          date,
   update_id            int,
   update_time          date,
   primary key (id)
);

/*==============================================================*/
/* Table: paper                                                 */
/*==============================================================*/
create table paper
(
   id                   int not null,
   paper_name           varchar(20) comment '试卷名称',
   title                varchar(100) comment '试卷描述',
   create_id            int,
   create_time          date,
   update_id            int,
   update_time          date,
   primary key (id)
);

/*==============================================================*/
/* Table: paper_question                                        */
/*==============================================================*/
create table paper_question
(
   id                   int not null,
   question_id          int comment '题库id
            ',
   paper_id             int comment '试题id',
   question_number      varchar(10) comment '题号：一共两个大题，（1：客观题号；2：主观题号）',
   single_score         int comment '单选题分数',
   short_answer_score   int comment '简答题分数',
   primary key (id)
);

/*==============================================================*/
/* Table: question                                              */
/*==============================================================*/
create table question
(
   library_id           int,
   title                varchar(500) comment '试题描述',
   answer_describe      varchar(500) comment '答案描述',
   right_answer         varchar(100) comment '正确答案（针对单选）',
   id                   int not null auto_increment,
   create_id            int,
   create_time          date,
   update_id            int,
   update_time          date,
   primary key (id)
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   id                   int not null auto_increment,
   name                 varchar(32),
   password             varchar(32),
   phonenumber          varchar(16),
   sex                  varchar(4) comment '性别（1：女；2：男）',
   create_id            int,
   create_time          date,
   update_id            int,
   update_time          date,
   primary key (id)
);

/*==============================================================*/
/* Table: student_exam_info                                     */
/*==============================================================*/
create table student_exam_info
(
   id                   int not null,
   student_id           int,
   exam_id              int,
   exam_describe        int comment '考试描述（1：已经考完的；2：正在考试；3：可以报名参加的考试）',
   exam_time            date,
   score                int,
   single_score         int comment '单选题分数',
   short_ans_score      int comment '简答题分数',
   time                 int comment '考试花费时间',
   create_id            int,
   create_time          date,
   update_id            int,
   update_time          date,
   primary key (id)
);

alter table exam add constraint FK_Reference_5 foreign key (paper_id)
      references paper (id) on delete restrict on update restrict;

alter table paper_question add constraint FK_Reference_7 foreign key (question_id)
      references library (id) on delete restrict on update restrict;

alter table paper_question add constraint FK_Reference_8 foreign key (paper_id)
      references paper (id) on delete restrict on update restrict;

alter table question add constraint FK_Reference_11 foreign key (library_id)
      references library (id) on delete restrict on update restrict;

alter table student_exam_info add constraint FK_Reference_10 foreign key (exam_id)
      references exam (id) on delete restrict on update restrict;

alter table student_exam_info add constraint FK_Reference_9 foreign key (student_id)
      references student (id) on delete restrict on update restrict;

