desc ȸ��;

create table ����ȸ������ó (ȸ����ȣ varchar2(7), ���� varchar2(20), �ּ� varchar2(50), ��ȭ��ȣ varchar(20), primary key(ȸ����ȣ));

insert into ����ȸ������ó(ȸ����ȣ, ����, �ּ�, ��ȭ��ȣ)
select ȸ����ȣ, ����, �ּ�, ��ȭ��ȣ from ȸ�� where �ּ� like '����%';

create table ����ȸ������ó as
select ȸ����ȣ, ����, �ּ�, ��ȭ��ȣ from ȸ�� where �ּ� not like '����%';

insert into �з� values (4, 'Ű����');

insert into ��ǰ values (30, '�Ｚ 32GB USB �޸�', 4, NULL, 2);

update ȸ�� set �ּ� = '�λ�� ������' where ȸ����ȣ = 'T001';

update ��ǰ set �ܰ� = �ܰ� * 1.1;

delete from �ֹ��󼼳��� where ��ǰ��ȣ = '8';
delete from ��ǰ where ��ǰ��ȣ = '8';

delete from �ֹ��󼼳��� where �ֹ���ȣ in (select �ֹ���ȣ from �ֹ� where ȸ����ȣ = 'T004');
delete from �ֹ� where ȸ����ȣ = 'T004';
delete from ȸ�� where ȸ����ȣ = 'T004';

select distinct ȸ��.ȸ����ȣ from ȸ��, �ֹ� where ȸ��.ȸ����ȣ = �ֹ�.ȸ����ȣ and ȸ��.���� = '��';

select ��ǰ��ȣ from ��ǰ where ��ǰ��ȣ not in (select ��ǰ��ȣ from �ֹ��󼼳���) and �ܰ� <= '10000';