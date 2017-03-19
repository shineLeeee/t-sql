--select distinct "name",count(*) co from "town"  group by "name" having count(*) >1 order by count(*) desc;
set serveroutput on;
declare
  vsql varchar(1000);
  tsql varchar(1000);
  csql varchar(1000);
  zname varchar(20);--乡镇名
  zcount number;
  areacode number;
  cname varchar(20);--村名
  zid number;
  curcode number;
  cid number;
  latitude number;
  longitude number;
  flag number;
  cursor zcur is 
  select distinct "name",count(*) co from "town"  group by "name" having count(*) >1 order by count(*) desc;
  --寻找所有重复的乡镇
  cursor codecur is
  select "areacode" from "town" where "name"=zname;
begin
  open zcur;
  while 1=1
  loop
  exit when not zcur%found;
  fetch zcur into zname,zcount;
  --dbms_output.put_line(zname||zcount);
  select "id","areacode","latitude","longitude" into zid,areacode,latitude,longitude from (select * from "town" where "name"=zname) where rownum=1;
  dbms_output.put_line(zname||','||zid||','||areacode||','||latitude||','||longitude);--求得乡镇中的id，经纬度信息
  open codecur;
  while 2=2
  loop
  exit when not codecur%found;
  fetch codecur into curcode;
--  dbms_output.put_line(zname||'_____'||curcode);
     csql:='update "country" set "areacode"='||''''||areacode||''''||' where "areacode"='||''''||curcode||'''';
     dbms_output.put_line(csql);
     execute immediate csql;
     commit;
----  dbms_output.put_line(cname||','||areacode);
  end loop;
  close codecur;--先修改村，然后开始合并错误城镇
   vsql:='delete from "town" where "name"='||''''||zname||'''';
  dbms_output.put_line(vsql);
    EXECUTE IMMEDIATE vsql;
    commit;
    tsql:='insert into "town"("id","name","areacode","status","longitude","latitude") 
    values ('
    ||''''||zid||''','||''''||zname||''','||''''||areacode||''','||''''||1||''','||''''||longitude||''','||''''||latitude||''')';
    execute immediate tsql;
    commit;
  dbms_output.put_line(tsql);
  end loop;
  close zcur; 
end;