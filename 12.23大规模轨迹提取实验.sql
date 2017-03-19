select count(*) FROM "whole_month" WHERE ROWNUM<10000000 and "T_TargetID"='MMC8000GPSANDASYN051113-23887-00000000' ;

insert into whole_month_inorder(carid,longitude,latitude,status,speed,cartime) 
select substr("whole_month"."T_TargetID",25,5),"T_Longitude","T_Latitude","T_Status","T_Speed","T_UTCTime" 
from "whole_month"  order by "T_TargetID","T_UTCTime" asc;

truncate table whole_month_inorder ;

update whole_month_inorder set carid=substr(carid,25,5);


select * from whole_month_inorder where rownum<1000000;//看看前1000000行中有多少10319

select min(distinct carid) from whole_month_inorder;

insert into "whole_test"
select * from whole_month_inorder where rownum<1000000;
commit;

create index idindex on whole_month_inorder(carid);
create index timeindex on whole_month_inorder(cartime);
create index longitudeindex on whole_month_inorder(longitude);
create index latitudeindex on whole_month_inorder(latitude);
create index speedindex on whole_month_inorder(speed);
create index statusindex on whole_month_inorder(status);

truncate table "whole_trajectory";
truncate table "whole_test";

select count(*) from "whole_trajectory";
select * from "whole_trajectory" where "T_TargetID"=11388 order by "S_UTCTime" asc;

select cartime,status from WHOLE_MONTH_INORDER where carid=16798 order by cartime; 
select carid,cartime,longitude,latitude,status from WHOLE_MONTH_INORDER;

select * from (select ROWNUM as R,CARID,CARTIME,LONGITUDE,LATITUDE,SPEED,STATUS from WHOLE_MONTH_INORDER WHERE rownum<100 )where R>0;

select ROWNUM,cartime,CARID,LONGITUDE,LATITUDE,STATUS from "WHOLE_MONTH_INORDER"

select ROWNUM,CARTIME,CARID,LONGITUDE,LATITUDE,STATUS from \"WHOLE_MONTH_INORDER\" where rownum between <1000000 ;

delete from "whole_trajectory" where rownum=1;
select rownum,"S_UTCTime","S_Latitude","S_Longitude","E_UTCTime","E_Longitude","E_Latitude" from "whole_trajectory";


update "whole_trajectory"  set "E_Longitude"=114.309128,"E_Latitude"=30.529848,"E_UTCTime"=1388965998 where "S_Longitude"=114.363826 ;


select count(*) from "whole_trajectory";