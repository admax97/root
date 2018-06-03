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
   examt_name           varchar(32) comment '��������',
   start_time           date comment '��ʼʱ��',
   end_time             date comment '����ʱ��',
   type                 int comment '�������ͣ�1������',
   paper_id             int comment '�Ծ�id',
   exam_mark            varchar(500) comment '���Ա�ע��Ϣ',
   expired_time         date comment 'ʧЧʱ��',
   exam_status          int comment '����״̬
            1��������δʧЧ 
            2��δ����',
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
   title                varchar(500) comment '��Ŀ����',
   question_type        int comment '��������',
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
   paper_name           varchar(20) comment '�Ծ�����',
   title                varchar(100) comment '�Ծ�����',
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
   question_id          int comment '���id
            ',
   paper_id             int comment '����id',
   question_number      varchar(10) comment '��ţ�һ���������⣬��1���͹���ţ�2��������ţ�',
   single_score         int comment '��ѡ�����',
   short_answer_score   int comment '��������',
   primary key (id)
);

/*==============================================================*/
/* Table: question                                              */
/*==============================================================*/
create table question
(
   library_id           int,
   title                varchar(500) comment '��������',
   answer_describe      varchar(500) comment '������',
   right_answer         varchar(100) comment '��ȷ�𰸣���Ե�ѡ��',
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
   sex                  varchar(4) comment '�Ա�1��Ů��2���У�',
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
   exam_describe        int comment '����������1���Ѿ�����ģ�2�����ڿ��ԣ�3�����Ա����μӵĿ��ԣ�',
   exam_time            date,
   score                int,
   single_score         int comment '��ѡ�����',
   short_ans_score      int comment '��������',
   time                 int comment '���Ի���ʱ��',
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

