select count(*) from JAN_TRAJECTORY;

truncate table 行为模式挖掘;

select name from attractions order by name;

SELECT *
   FROM (SELECT *
  FROM JAN_TRAJECTORY l,ATTRACTIONS a
 WHERE a.name='湖北省博物馆'
   AND sdo_within_distance (
         l.END_CORDINATE, a.GEOMETRY,'distance=170 unit=metre') 
       = 'TRUE') l,ATTRACTIONS a
  WHERE a.name='东湖景区'
   AND sdo_within_distance (
         l.START_CORDINATE, a.GEOMETRY,'distance=1500 unit=metre') 
       = 'TRUE'
ORDER BY "T_START_TIME";

select count(*)*9,startarea,endarea,sttime,edtime from 行为模式挖掘 where startarea!=endarea and startarea!='武汉大学' and endarea!='武汉大学'and startarea!='武汉长江大桥' and endarea!='武汉长江大桥'
group by startarea,sttime,endarea,edtime
order by count(*)*9 desc;

select count(*) from 行为模式挖掘;



/*update 行为模式挖掘 set st=to_char('','YYYY-MM-DD HH24:MI:SS');*/


TO_DATE ('19700101', 'yyyymmdd') + in_number / 86400 + 
TO_NUMBER (SUBSTR (TZ_OFFSET (SESSIONTIMEZONE),1,3))/24



update 行为模式挖掘 set st=TO_DATE ('19700101 00:00:00', 'yyyymmdd HH24:MI:SS') + stunixtime / 86400 + 
TO_NUMBER (SUBSTR (TZ_OFFSET (SESSIONTIMEZONE),1,3))/24;
update 行为模式挖掘 set ed=TO_DATE ('19700101 00:00:00', 'yyyymmdd HH24:MI:SS') + edunixtime / 86400 + 
TO_NUMBER (SUBSTR (TZ_OFFSET (SESSIONTIMEZONE),1,3))/24;
delete from 行为模式挖掘 where startarea=endarea or sttime=null or edtime=null 
or startarea='武汉大学' or endarea='武汉大学';

select count(*) from 行为模式挖掘;

select startarea,endarea,TO_CHAR(TO_DATE(st, 'YYYY-MM-DD HH24:MI:SS'), 'HH24:MI'),TO_CHAR(TO_DATE(ed, 'YYYY-MM-DD HH24:MI:SS'), 'HH24:MI') from 行为模式挖掘;

select startarea,endarea,TO_CHAR(TO_DATE(st,'YYYY-MM-DD HH24:MI:SS'),'HH24:MI'),TO_CHAR(TO_DATE(ed, 'YYYY-MM-DD HH24:MI:SS'), 'HH24:MI') from 行为模式挖掘 where ROWNUM<100;

select startarea,endarea,stunixtime,edunixtimefrom 行为模式挖掘 where rownum<10;

select startarea,sttime,endarea,edtime from 行为模式挖掘;

update 行为模式挖掘 set sttime=1 where sttime='M';
update 行为模式挖掘 set sttime=2 where sttime='F';
update 行为模式挖掘 set sttime=3 where sttime='N';
update 行为模式挖掘 set sttime=4 where sttime='A';
update 行为模式挖掘 set edtime=1 where edtime='M';
update 行为模式挖掘 set edtime=2 where edtime='F';
update 行为模式挖掘 set edtime=3 where edtime='N';
update 行为模式挖掘 set edtime=4 where edtime='A';
commit;