select * from ȸ�� where ȸ����ȣ like 'T006';

select distinct ��ǰ��ȣ from �ֹ��󼼳���;

select distinct ��ǰ��ȣ from �ֹ��󼼳��� order by ��ǰ��ȣ;

select distinct ��ǰ��ȣ from �ֹ��󼼳��� order by ��ǰ��ȣ asc;

select ���� from ȸ�� where �ּ� like '����%';

select ���� from ȸ�� where �ּ� not like '����%';

select ���� from ȸ�� where �ּ� like '����%' and ���� = '��';

select ��ǰ�� from ��ǰ where �з��ڵ� = '1';

select ��ǰ�� from ��ǰ order by �ܰ� desc;

select ��ǰ��ȣ, ��ǰ�� from ��ǰ where �ܰ� between '5000' and '15000';

select * from ȸ�� natural join �ֹ�;
select * from ȸ��, �ֹ� where ȸ��.ȸ����ȣ = �ֹ�.ȸ����ȣ;

select * from �ֹ� natural join �ֹ��󼼳���;
select * from �ֹ�, �ֹ��󼼳��� where �ֹ�.�ֹ���ȣ = �ֹ��󼼳���.�ֹ���ȣ;

select * from ��ǰ, �ֹ��󼼳���, �ֹ� where ��ǰ.��ǰ��ȣ = �ֹ��󼼳���.��ǰ��ȣ and �ֹ��󼼳���.�ֹ���ȣ = �ֹ�.�ֹ���ȣ;

select �ֹ��󼼹�ȣ, ��ǰ.�ܰ� * �ֹ��󼼳���.���� as �ֹ��� from ��ǰ, �ֹ��󼼳���, �ֹ� 
where ��ǰ.��ǰ��ȣ = �ֹ��󼼳���.��ǰ��ȣ
and �ֹ��󼼳���.�ֹ���ȣ = �ֹ�.�ֹ���ȣ;