drop table �ֹ��󼼳���;
drop table �ֹ�;
drop table ��ǰ;
drop table �з�;
drop table �ŷ�ó;
drop table ȸ��;

create table ȸ�� (
	ȸ����ȣ varchar2(7),
	���� varchar2(20),
	������� varchar2(50),
        ���� varchar2(3),
	�ּ� varchar2(50),
	��ȭ��ȣ varchar2(20),
	�̸��� varchar2(20),
	������ varchar2(15),
	ȸ������ int,
	primary key (ȸ����ȣ)
);

insert into ȸ�� values ('T001', '�迵��', '1984�� 01�� 18��', '��', '�λ�� �ϱ�', '(011)1122-5555', 'kys@db1.net', '2007-12-01', 1);
insert into ȸ�� values ('T002', '������', '1984�� 05�� 11��', '��', '�뱸�� ������', '(010)1122-5555', 'ajy@db1.net', '2007-12-18', 2);
insert into ȸ�� values ('T003', '�㼺��', '1981�� 05�� 01��', '��', '�λ�� ������', '(011)1122-6666', 'hsj@db1.net', '2008-01-12', 1);
insert into ȸ�� values ('T004', '�鳲��', '1975�� 11�� 27��', '��', '������ �д籸', '(016)1122-7777', NULL, '2008-02-08', 1);
insert into ȸ�� values ('T005', '������', '1988�� 02�� 03��', '��', '�뱸�� �ϱ�', '(010)1122-8888', NULL , '2008-03-05', 2);
insert into ȸ�� values ('T006', '������', '1986�� 08�� 17��', '��', '�λ�� ������', '(011)1122-9999', 'hjb@db2.net', '2008-03-11', 2);
insert into ȸ�� values ('T007', '���Ѽ�', '1980�� 12�� 28��', '��', '����� ��걸', '(019)1234-0001', 'khs@db3.net', '2008-04-23', 1);
insert into ȸ�� values ('T008', '������', '1977�� 03�� 06��', '��', '�λ�� ������', '(010)1234-0011', NULL , '2008-05-13', 1);
insert into ȸ�� values ('T009', '�̽ž�', '1982�� 06�� 28��', '��', '����� ���ı�', '(011)1234-0003', 'lsa@db3.net', '2008-06-12', 2);
insert into ȸ�� values ('T010', '�ǵ���', '1983�� 04�� 13��', '��', '����� ���Ǳ�', '(016)1234-0004', 'kdh@db3.net', '2008-07-07', 2);


Create table �ŷ�ó (
	�ŷ�ó��ȣ int,
	�ŷ�ó�� varchar2(30),
	�ּ� varchar2(50),
	��ȭ��ȣ varchar2(20),
	������ varchar2(10),
	����ڵ�Ϲ�ȣ varchar2(15),
	primary key (�ŷ�ó��ȣ)
);

Insert into �ŷ�ó values (1, '����ǻ��', '����� ���Ǳ�', '010-1234-1234', '���ǿ�', '108-71-12346');
Insert into �ŷ�ó values (2, '���ü���', '����� ���۱�', '010-1235-1235', 'ȫ���', '108-86-12345');
Insert into �ŷ�ó values (3, '��������', '�λ�� ���', '010-1236-1236', '�峪��', '603-55-45612');
Insert into �ŷ�ó values (4, '������ũ�븶Ʈ', '��õ�� ����', '010-1237-1237', '���ر�', '121-81-12345');
Insert into �ŷ�ó values (5, '��Ŀ������', '������ �ȴޱ�', '010-1238-1222', '��α�', '124-44-32165');
Insert into �ŷ�ó values (6, '��ũ��', '���ؽ� �ܵ�', '010-1239-1111', '������', '603-12-32456');
Insert into �ŷ�ó values (7, '�ĵ���', '����� ȸ���� ���ϵ�', '010-1240-1133', '������', '608-33-18469');

Create table �з� (
	�з��ڵ� int,
	�з��� varchar2(20),
	primary key (�з��ڵ�)
);
Insert into �з� values (1, '���콺');
Insert into �з� values (2, '��CD');
Insert into �з� values (3, 'USB�޸�');

create table ��ǰ (
	��ǰ��ȣ int,
	��ǰ�� varchar2(80),
	�ŷ�ó��ȣ int,
	�ܰ� int,
	�з��ڵ� int,
        primary key (��ǰ��ȣ),
	foreign key (�ŷ�ó��ȣ) references �ŷ�ó,
	foreign key (�з��ڵ�) references �з�
);

insert into ��ǰ values (1, 'DDZONE)���콺 DM-110(ȭ��Ʈ)', 1, 4520, 1);
insert into ��ǰ values (2, '�ڽ�) �ĳ�󸶱����콺(COM-45)/���', 1, 12030, 1);
insert into ��ǰ values (3, '������)�ĸ��� ���� �� ���콺(M-PADURWH)', 2, 24800, 1);
insert into ��ǰ values (4, '������)�ĸ��� �� ���콺(M-PPAUP2RSV)', 2, 12410, 1);
insert into ��ǰ values (5, '������)�޺� ���콺(M-M2UP2RRD)', 2, 8280, 1);
insert into ��ǰ values (6, '������)��Ʈ�Ͽ� �޺� ���콺(M-M1UP2RBK)', 2, 8120, 1);
insert into ��ǰ values (7, '�Ｚ)�����콺 (SML-210PB)', 3, 9780, 1);
insert into ��ǰ values (8, '�Ｚ)�� ���콺(SPM-3650/�ǹ�)�޺�', 3, 9540, 1);
insert into ��ǰ values (9, '������ MX1100 ���� ������ ���콺', 4, 25000, 1);
insert into ��ǰ values (10, '������ LS1 ������ ���콺', 4, 32000, 1);
insert into ��ǰ values (11, '[G-Cube] ��ť�� ������ ���콺+���콺�е� Wind', 5, 2890, 1);
insert into ��ǰ values (12, 'SKC)USB������ġ(4GB/��)', 7, 36020, 3);
insert into ��ǰ values (13, '�׼�)USB������ġ(8GB/i-bar)', 1, 41320, 3);
insert into ��ǰ values (14, '�׼�)USB������ġ(4GB/i-PASSION XM)', 1, 24920, 3);
insert into ��ǰ values (15, '�׼�)USB������ġ(2GB/i-PASSION GOLD)', 1, 20430, 3);
insert into ��ǰ values (16, '���̿��� CellDisk ��ǰ Swing 1GB (��,�ǹ�)', 4, 6600, 3);
insert into ��ǰ values (17, '�޸𷺽�)USB������ġ(4GB/������)', 4, 42500, 3);
insert into ��ǰ values (18, '������)USB������ġ(2GB)', 5, 26210, 3);
insert into ��ǰ values (19, 'SKC) CD-RW 1P 700MB/80min', 6, 1120, 2);
insert into ��ǰ values (20, 'SKC) CD-R 100P 700MB/80min', 6, 27630, 2);
insert into ��ǰ values (21, 'DDZONE)CD-R 50P 700MB/80min', 6, 8620, 2);
insert into ��ǰ values (22, 'DDZONE)CD-R 100P 700MB/80min', 6, 17220, 2);
insert into ��ǰ values (23, '�ڴ�)CD-R 50P 700MB/80min', 2, 16240, 2);
insert into ��ǰ values (24, '�̸��̼�)CD-R 100P', 2, 29120, 2);
insert into ��ǰ values (25, '�׼�)800MB CD-R 50P 48X/90min', 2, 13920, 2);
insert into ��ǰ values (26, '�Ҵ�)DVD-R 1P(4.7G)', 5, 890, 2);
insert into ��ǰ values (27, '�Ҵ�)CD-R 50P 700MB/80min', 5, 15220, 2);
insert into ��ǰ values (28, '�޸𷺽�)CD-R 50P 700MB', 6, 12620, 2);
insert into ��ǰ values (29, '�޸𷺽�)CD-R 100P 700MB', 6, 25210, 2);

Create table �ֹ� (
	�ֹ���ȣ int,
	ȸ����ȣ varchar2(7),
	�ֹ��� varchar2(50),
	����ּ� varchar2(50),
	��ۿ���ó varchar2(15),
	primary key (�ֹ���ȣ),
	foreign key (ȸ����ȣ) references ȸ��
);

Insert into �ֹ� values (1,'T004','2017-01-01','������ �д籸','(016)1122-7777');
Insert into �ֹ� values (2,'T004','2017-01-02','������ �д籸','(016)1122-7777');
Insert into �ֹ� values (3,'T008','2017-01-02','�λ�� ������','(010)1234-0011');
Insert into �ֹ� values (4,'T003','2017-01-02','�λ�� ������','(011)1122-6666');
Insert into �ֹ� values (5,'T001','2017-01-02','�λ�� �ϱ�','(011)1122-5555');
Insert into �ֹ� values (6,'T001','2017-01-03','�λ�� �ϱ�','(011)1122-5555');
Insert into �ֹ� values (7,'T007','2017-01-03','����� ��걸','(019)1234-0001');
Insert into �ֹ� values (8,'T005','2017-01-03','�뱸�� �ϱ�','(010)1122-8888');
Insert into �ֹ� values (9,'T010','2017-01-03','����� ���Ǳ�','(016)1234-0004');
Insert into �ֹ� values (10,'T009','2017-01-04','����� ���ı�','(011)1234-0003');
Insert into �ֹ� values (11,'T001','2017-01-04','�λ�� �ϱ�','(011)1122-5555');
Insert into �ֹ� values (12,'T001','2017-01-05','�λ�� �ϱ�','(011)1122-5555');
Insert into �ֹ� values (13,'T003','2017-01-06','�λ�� ������','(011)1122-6666');
Insert into �ֹ� values (14,'T006','2017-01-06','�λ�� ������','(011)1122-9999');
Insert into �ֹ� values (15,'T007','2017-01-06','����� ��걸','(019)1234-0001');
Insert into �ֹ� values (16,'T001','2017-01-06','�λ�� �ϱ�','(011)1122-5555');
Insert into �ֹ� values (17,'T001','2017-01-07','�λ�� �ϱ�','(011)1122-5555');
Insert into �ֹ� values (18,'T003','2017-01-08','�λ�� ������','(011)1122-6666');
Insert into �ֹ� values (19,'T009','2017-01-08','����� ���ı�','(011)1234-0003');
Insert into �ֹ� values (20,'T010','2017-01-08','����� ���Ǳ�','(016)1234-0004');
Insert into �ֹ� values (21,'T005','2017-01-08','�뱸�� �ϱ�','(010)1122-8888');
Insert into �ֹ� values (22,'T007','2017-01-08','����� ��걸','(019)1234-0001');
Insert into �ֹ� values (23,'T004','2017-01-09','������ �д籸','(016)1122-7777');
Insert into �ֹ� values (24,'T010','2017-01-10','����� ���Ǳ�','(016)1234-0004');
Insert into �ֹ� values (25,'T002','2017-01-11','�뱸�� ������','(010)1122-5555');
Insert into �ֹ� values (26,'T005','2017-01-11','�뱸�� �ϱ�','(010)1122-8888');
Insert into �ֹ� values (27,'T007','2017-01-12','����� ��걸','(019)1234-0001');
Insert into �ֹ� values (28,'T009','2017-01-13','����� ���ı�','(011)1234-0003');
Insert into �ֹ� values (29,'T010','2017-01-13','����� ���Ǳ�','(016)1234-0004');
Insert into �ֹ� values (30,'T003','2017-01-14','�λ�� ������','(011)1122-6666');

Create table �ֹ��󼼳��� (
	�ֹ��󼼹�ȣ int,
	�ֹ���ȣ int,
	��ǰ��ȣ int,
	���� int,
	primary key (�ֹ��󼼹�ȣ),
	foreign key (�ֹ���ȣ) references �ֹ�,
	foreign key (��ǰ��ȣ) references ��ǰ
);

Insert into �ֹ��󼼳��� values (1,1,3,3);
Insert into �ֹ��󼼳��� values (2,1,13,2);
Insert into �ֹ��󼼳��� values (3,1,27,4);
Insert into �ֹ��󼼳��� values (4,2,17,4);
Insert into �ֹ��󼼳��� values (5,3,18,5);
Insert into �ֹ��󼼳��� values (6,4,19,3);
Insert into �ֹ��󼼳��� values (7,5,18,2);
Insert into �ֹ��󼼳��� values (8,6,6,3);
Insert into �ֹ��󼼳��� values (9,6,8,5);
Insert into �ֹ��󼼳��� values (10,6,16,1);
Insert into �ֹ��󼼳��� values (11,6,20,3);
Insert into �ֹ��󼼳��� values (12,6,23,1);
Insert into �ֹ��󼼳��� values (13,6,24,1);
Insert into �ֹ��󼼳��� values (14,7,23,1);
Insert into �ֹ��󼼳��� values (15,7,26,1);
Insert into �ֹ��󼼳��� values (16,8,3,1);
Insert into �ֹ��󼼳��� values (17,8,8,5);
Insert into �ֹ��󼼳��� values (18,9,5,2);
Insert into �ֹ��󼼳��� values (19,9,12,1);
Insert into �ֹ��󼼳��� values (20,10,7,4);
Insert into �ֹ��󼼳��� values (21,10,29,3);
Insert into �ֹ��󼼳��� values (22,11,8,3);
Insert into �ֹ��󼼳��� values (23,12,24,2);
Insert into �ֹ��󼼳��� values (24,12,26,3);
Insert into �ֹ��󼼳��� values (25,13,7,3);
Insert into �ֹ��󼼳��� values (26,13,18,1);
Insert into �ֹ��󼼳��� values (27,14,5,3);
Insert into �ֹ��󼼳��� values (28,14,18,1);
Insert into �ֹ��󼼳��� values (29,14,18,1);
Insert into �ֹ��󼼳��� values (30,14,19,3);
Insert into �ֹ��󼼳��� values (31,15,11,4);
Insert into �ֹ��󼼳��� values (32,15,22,4);
Insert into �ֹ��󼼳��� values (33,16,3,1);
Insert into �ֹ��󼼳��� values (34,16,24,4);
Insert into �ֹ��󼼳��� values (35,17,5,2);
Insert into �ֹ��󼼳��� values (36,18,24,4);
Insert into �ֹ��󼼳��� values (37,19,16,1);
Insert into �ֹ��󼼳��� values (38,20,8,2);
Insert into �ֹ��󼼳��� values (39,20,19,3);
Insert into �ֹ��󼼳��� values (40,20,20,4);
Insert into �ֹ��󼼳��� values (41,20,27,2);
Insert into �ֹ��󼼳��� values (42,20,28,4);
Insert into �ֹ��󼼳��� values (43,21,19,5);
Insert into �ֹ��󼼳��� values (44,21,22,4);
Insert into �ֹ��󼼳��� values (45,21,29,3);
Insert into �ֹ��󼼳��� values (46,22,4,1);
Insert into �ֹ��󼼳��� values (47,23,24,5);
Insert into �ֹ��󼼳��� values (48,24,13,3);
Insert into �ֹ��󼼳��� values (49,25,10,5);
Insert into �ֹ��󼼳��� values (50,26,15,4);
Insert into �ֹ��󼼳��� values (51,27,8,2);
Insert into �ֹ��󼼳��� values (52,27,13,3);
Insert into �ֹ��󼼳��� values (53,27,20,5);
Insert into �ֹ��󼼳��� values (54,27,20,1);
Insert into �ֹ��󼼳��� values (55,28,14,1);
Insert into �ֹ��󼼳��� values (56,28,23,4);
Insert into �ֹ��󼼳��� values (57,28,29,4);
Insert into �ֹ��󼼳��� values (58,29,11,4);
Insert into �ֹ��󼼳��� values (59,29,25,1);
Insert into �ֹ��󼼳��� values (60,30,28,3);