insert into "��Ϊģʽ�ھ�"(startarea,sttime,stunixtime,endarea,edtime,edunixtime) 
values('�ƺ�¥','a','138865262','������','p','139885263');

select count(*) from JAN_TRAJECTORY;
select count(*) from "��Ϊģʽ�ھ�";

select startarea,sttime,endarea,edtime,count(*) from "��Ϊģʽ�ھ�" group by startarea,sttime,endarea,edtime order by count(*) desc;

select name from ATTRACTIONS order by name;

select * from ��Ϊģʽ�ھ�;