insert into "行为模式挖掘"(startarea,sttime,stunixtime,endarea,edtime,edunixtime) 
values('黄鹤楼','a','138865262','户部巷','p','139885263');

select count(*) from JAN_TRAJECTORY;
select count(*) from "行为模式挖掘";

select startarea,sttime,endarea,edtime,count(*) from "行为模式挖掘" group by startarea,sttime,endarea,edtime order by count(*) desc;

select name from ATTRACTIONS order by name;

select * from 行为模式挖掘;