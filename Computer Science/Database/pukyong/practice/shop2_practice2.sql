select avg(�ܰ�) as "�ܰ� ���" from ��ǰ;

select �з��ڵ�, avg(�ܰ�) as "�ܰ� ���" from ��ǰ group by �з��ڵ�;

select count(*) as "��ǰ�� ����" from ��ǰ where �ܰ� >= '10000';

select ȸ����ȣ, count(*) as "�ֹ� Ƚ��" from �ֹ� group by ȸ����ȣ order by ȸ����ȣ asc;

select ȸ����ȣ, count(*) as "�ֹ� Ƚ��" from �ֹ� group by ȸ����ȣ having count(*) >= 3 order by ȸ����ȣ asc;

select ��ǰ.��ǰ��ȣ, sum(��ǰ.�ܰ�) as "�ֹ��� �հ�" from ��ǰ, �ֹ��󼼳���
where ��ǰ.��ǰ��ȣ = �ֹ��󼼳���.��ǰ��ȣ
group by ��ǰ.��ǰ��ȣ order by ��ǰ.��ǰ��ȣ asc;

select ��ǰ.��ǰ��ȣ, sum(��ǰ.�ܰ�) as "�ֹ��� �հ�" from ��ǰ, �ֹ��󼼳���
where ��ǰ.��ǰ��ȣ = �ֹ��󼼳���.��ǰ��ȣ
group by ��ǰ.��ǰ��ȣ having sum(��ǰ.�ܰ�) >= 100000 order by ��ǰ.��ǰ��ȣ asc;

select �ֹ�.�ֹ���ȣ, sum(��ǰ.�ܰ�) as "�ֹ��� �հ�" from ��ǰ, �ֹ�, �ֹ��󼼳���
where �ֹ�.�ֹ���ȣ = �ֹ��󼼳���.�ֹ���ȣ and �ֹ��󼼳���.��ǰ��ȣ = ��ǰ.��ǰ��ȣ
group by �ֹ�.�ֹ���ȣ order by �ֹ�.�ֹ���ȣ asc;

select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-02' intersect
select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-03';

select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-02' and
ȸ����ȣ in (select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-03');

select ��ǰ��ȣ, ��ǰ�� from ��ǰ where �ܰ� > All
(select �ܰ� from ��ǰ where �з��ڵ� = '1');

select s1.��ǰ��ȣ, s1.��ǰ�� from ��ǰ s1, ��ǰ s2
where s2.��ǰ��ȣ = '14'
and s1.�ܰ� > s2.�ܰ�;