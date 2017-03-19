drop view clusterpre;
drop table T_TJ;
create table T_TJ as (select distinct YXB,sum(xqslhj) xqslhj,sum(SLHJ) slhj,sum(ysjehj) ysjehj,count(*) counts from T_ORDER group by YXB);

create view clusterpre as select slhj p1,ysjehj p2 from t_tj;
select * from clusterpre;
select * from T_order;
commit;
