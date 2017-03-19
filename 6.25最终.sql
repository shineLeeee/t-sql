create table LS_CLUSTER as 
(select  distinct v_s_sd_co.pub_org_id_dept, sum(ORDER_COUNT_SUM) BILLCOUNTS, sum(REC_AMT_SUM) RECSUM,sum(AMT_TAX_SUM) TAXSUM 
from v_s_sd_co t1 left join V_D_ORGAN_STRU t2 on  t1.pub_org_id_dept=to_number(t2.id) group by v_s_sd_co.pub_org_id_dept);

create view clusterpre as select pubid,recsum p1,taxsum p2 from LS_CLUSTER;

drop view clusterpre;
drop table LS_CLUSTER;
/-------/
create table LS_CLUSTER as 
(select distinct t1.pub_org_id_dept pubid, sum(ORDER_COUNT_SUM) BILLCOUNTS, sum(REC_AMT_SUM) RECSUM, sum(AMT_TAX_SUM) TAXSUM  from V_S_SD_CO t1 left join V_D_ORGAN_STRU t2 on  t1.pub_org_id_dept=to_number(t2.id) group by pub_org_id_dept);
alter table LS_CLUSTER add (clusterresult varchar(10));
create view clusterpre as select pubid,recsum p1,taxsum p2 from LS_CLUSTER;
/-----/
select * from clusterpre;


update ls_cluster set clusterresult='AB' where rownum=1;
update ls_cluster set clusterresult='AB' where rownum=1;

update ls_cluster set clusterresult='AA' where rownum=1;

drop table "clustered";

select "c" from "clustered";