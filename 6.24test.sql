create table clusterpre as(select SLHJ a1,YSJEHJ a2 from SCOTT.t_order);
commit;
 drop view vcluster;
select * from clusterpre;
