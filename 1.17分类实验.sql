select count(*) from JAN_TRAJECTORY;

truncate table ��Ϊģʽ�ھ�;

select name from attractions order by name;

SELECT *
   FROM (SELECT *
  FROM JAN_TRAJECTORY l,ATTRACTIONS a
 WHERE a.name='����ʡ�����'
   AND sdo_within_distance (
         l.END_CORDINATE, a.GEOMETRY,'distance=170 unit=metre') 
       = 'TRUE') l,ATTRACTIONS a
  WHERE a.name='��������'
   AND sdo_within_distance (
         l.START_CORDINATE, a.GEOMETRY,'distance=1500 unit=metre') 
       = 'TRUE'
ORDER BY "T_START_TIME";

select count(*)*9,startarea,endarea,sttime,edtime from ��Ϊģʽ�ھ� where startarea!=endarea and startarea!='�人��ѧ' and endarea!='�人��ѧ'and startarea!='�人��������' and endarea!='�人��������'
group by startarea,sttime,endarea,edtime
order by count(*)*9 desc;

select count(*) from ��Ϊģʽ�ھ�;



/*update ��Ϊģʽ�ھ� set st=to_char('','YYYY-MM-DD HH24:MI:SS');*/


TO_DATE ('19700101', 'yyyymmdd') + in_number / 86400 + 
TO_NUMBER (SUBSTR (TZ_OFFSET (SESSIONTIMEZONE),1,3))/24



update ��Ϊģʽ�ھ� set st=TO_DATE ('19700101 00:00:00', 'yyyymmdd HH24:MI:SS') + stunixtime / 86400 + 
TO_NUMBER (SUBSTR (TZ_OFFSET (SESSIONTIMEZONE),1,3))/24;
update ��Ϊģʽ�ھ� set ed=TO_DATE ('19700101 00:00:00', 'yyyymmdd HH24:MI:SS') + edunixtime / 86400 + 
TO_NUMBER (SUBSTR (TZ_OFFSET (SESSIONTIMEZONE),1,3))/24;
delete from ��Ϊģʽ�ھ� where startarea=endarea or sttime=null or edtime=null 
or startarea='�人��ѧ' or endarea='�人��ѧ';

select count(*) from ��Ϊģʽ�ھ�;

select startarea,endarea,TO_CHAR(TO_DATE(st, 'YYYY-MM-DD HH24:MI:SS'), 'HH24:MI'),TO_CHAR(TO_DATE(ed, 'YYYY-MM-DD HH24:MI:SS'), 'HH24:MI') from ��Ϊģʽ�ھ�;

select startarea,endarea,TO_CHAR(TO_DATE(st,'YYYY-MM-DD HH24:MI:SS'),'HH24:MI'),TO_CHAR(TO_DATE(ed, 'YYYY-MM-DD HH24:MI:SS'), 'HH24:MI') from ��Ϊģʽ�ھ� where ROWNUM<100;

select startarea,endarea,stunixtime,edunixtimefrom ��Ϊģʽ�ھ� where rownum<10;

select startarea,sttime,endarea,edtime from ��Ϊģʽ�ھ�;

update ��Ϊģʽ�ھ� set sttime=1 where sttime='M';
update ��Ϊģʽ�ھ� set sttime=2 where sttime='F';
update ��Ϊģʽ�ھ� set sttime=3 where sttime='N';
update ��Ϊģʽ�ھ� set sttime=4 where sttime='A';
update ��Ϊģʽ�ھ� set edtime=1 where edtime='M';
update ��Ϊģʽ�ھ� set edtime=2 where edtime='F';
update ��Ϊģʽ�ھ� set edtime=3 where edtime='N';
update ��Ϊģʽ�ھ� set edtime=4 where edtime='A';
commit;