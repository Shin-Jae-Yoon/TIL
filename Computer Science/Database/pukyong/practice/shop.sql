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

insert into ��ǰ values (4, 'DDZONE)���콺 DM-110(ȭ��Ʈ)', 1, 4520, 1);
insert into ��ǰ values (5, '�ڽ�) �ĳ�󸶱����콺(COM-45)/���', 1, 12030, 1);
insert into ��ǰ values (6, '������)�ĸ��� ���� �� ���콺(M-PADURWH)', 2, 24800, 1);
insert into ��ǰ values (7, '������)�ĸ��� �� ���콺(M-PPAUP2RSV)', 2, 12410, 1);
insert into ��ǰ values (8, '������)�޺� ���콺(M-M2UP2RRD)', 2, 8280, 1);
insert into ��ǰ values (10, '������)��Ʈ�Ͽ� �޺� ���콺(M-M1UP2RBK)', 2, 8120, 1);
insert into ��ǰ values (11, '�Ｚ)�����콺 (SML-210PB)', 3, 9780, 1);
insert into ��ǰ values (13, '�Ｚ)�� ���콺(SPM-3650/�ǹ�)�޺�', 3, 9540, 1);
insert into ��ǰ values (14, '������ MX1100 ���� ������ ���콺', 4, 25000, 1);
insert into ��ǰ values (15, '������ LS1 ������ ���콺', 4, 32000, 1);
insert into ��ǰ values (17, '[G-Cube] ��ť�� ������ ���콺+���콺�е� Wind', 5, 2890, 1);
insert into ��ǰ values (46, 'SKC)USB������ġ(4GB/��)', 7, 36020, 3);
insert into ��ǰ values (52, '�׼�)USB������ġ(8GB/i-bar)', 1, 41320, 3);
insert into ��ǰ values (53, '�׼�)USB������ġ(4GB/i-PASSION XM)', 1, 24920, 3);
insert into ��ǰ values (55, '�׼�)USB������ġ(2GB/i-PASSION GOLD)', 1, 20430, 3);
insert into ��ǰ values (57, '���̿��� CellDisk ��ǰ Swing 1GB (��,�ǹ�)', 4, 6600, 3);
insert into ��ǰ values (59, '�޸𷺽�)USB������ġ(4GB/������)', 4, 42500, 3);
insert into ��ǰ values (60, '������)USB������ġ(2GB)', 5, 26210, 3);
insert into ��ǰ values (65, 'SKC) CD-RW 1P 700MB/80min', 6, 1120, 2);
insert into ��ǰ values (67, 'SKC) CD-R 100P 700MB/80min', 6, 27630, 2);
insert into ��ǰ values (68, 'DDZONE)CD-R 50P 700MB/80min', 6, 8620, 2);
insert into ��ǰ values (69, 'DDZONE)CD-R 100P 700MB/80min', 6, 17220, 2);
insert into ��ǰ values (70, '�ڴ�)CD-R 50P 700MB/80min', 2, 16240, 2);
insert into ��ǰ values (71, '�̸��̼�)CD-R 100P', 2, 29120, 2);
insert into ��ǰ values (72, '�׼�)800MB CD-R 50P 48X/90min', 2, 13920, 2);
insert into ��ǰ values (73, '�Ҵ�)DVD-R 1P(4.7G)', 5, 890, 2);
insert into ��ǰ values (74, '�Ҵ�)CD-R 50P 700MB/80min', 5, 15220, 2);
insert into ��ǰ values (75, '�޸𷺽�)CD-R 50P 700MB', 6, 12620, 2);
insert into ��ǰ values (77, '�޸𷺽�)CD-R 100P 700MB', 6, 25210, 2);

Create table �ֹ� (
	�ֹ���ȣ int,
	ȸ����ȣ varchar2(7),
	�ֹ��� varchar2(50),
	����ּ� varchar2(50),
	��ۿ���ó varchar2(15),
	primary key (�ֹ���ȣ),
	foreign key (ȸ����ȣ) references ȸ��
);

Insert into �ֹ� values (1, 'T001', '2007-12-16', '�λ�� �ϱ�', '(011)1122-5555');
Insert into �ֹ� values (2, 'T003', '2007-12-19', '�λ�� ������', '(011)1122-6666');
Insert into �ֹ� values (3, 'T005', '2007-05-26', '�뱸�� ������', '(010)1122-8888');
Insert into �ֹ� values (4, 'T007', '2007-05-28', '����� ��걸', '(019)1234-0001');
Insert into �ֹ� values (5, 'T008', '2007-05-30', '�λ�� ���', '(010)1234-5678');
Insert into �ֹ� values (6, 'T004', '2007-06-02', '������ �д籸', '(016)1122-7777');
Insert into �ֹ� values (7, 'T001', '2007-06-13', '�λ�� �ϱ�', '(011)1122-5555');
Insert into �ֹ� values (8, 'T008', '2007-06-17', '�λ�� ������', '(010)1234-0011');
Insert into �ֹ� values (9, 'T001', '2007-06-26', '�λ�� �ϱ�', '(011)1122-5555');
Insert into �ֹ� values (15, 'T003', '2007-06-27', '�λ�� ������', '(011)1122-6666');
Insert into �ֹ� values (16, 'T005', '2007-06-30', '�뱸�� ������', '(010)3322-8888');

Create table �ֹ��󼼳��� (
	�ֹ��󼼹�ȣ int,
	�ֹ���ȣ int,
	��ǰ��ȣ int,
	���� int,
	primary key (�ֹ��󼼹�ȣ),
	foreign key (�ֹ���ȣ) references �ֹ�,
	foreign key (��ǰ��ȣ) references ��ǰ
);

Insert into �ֹ��󼼳��� values (1, 1, 17, 1);
Insert into �ֹ��󼼳��� values (2, 1, 52, 2);
Insert into �ֹ��󼼳��� values (3, 2, 77, 2);
Insert into �ֹ��󼼳��� values (4, 2, 13, 1);
Insert into �ֹ��󼼳��� values (5, 3, 46, 1);
Insert into �ֹ��󼼳��� values (6, 3, 75, 2);
Insert into �ֹ��󼼳��� values (8, 4, 59, 1);
Insert into �ֹ��󼼳��� values (10, 5, 75, 1);
Insert into �ֹ��󼼳��� values (12, 6, 13, 3);
Insert into �ֹ��󼼳��� values (13, 7, 68, 1);
Insert into �ֹ��󼼳��� values (14, 8, 15, 1);
Insert into �ֹ��󼼳��� values (15, 9, 70, 2);
