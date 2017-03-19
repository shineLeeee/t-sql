create table fre_nalysis as (
select PRODUCT_ID,RETAILER_ID_CUST,YMD from EXPORDERLINE
);


select count(*) from fre_nalysis;
/* 747个香烟品牌  33734个零售户 211天的 99999条数据 */

select count(*) from fre_nalysis group by retailer_id_cust;

/*发现一个零售户只有几条编码，根本没法分析，换个思路，按照行政区划来做，重新建表*/

drop table fre_nalysis;
commit;

select count(distinct(ADMV_DVSN))from exporderline;
/*发现有115个行政区划，可以做*/

create table fre_analysis as (
select PRODUCT_ID,admv_dvsn,YMD from EXPORDERLINE
);

delete fre_analysis where  admv_dvsn is null;/*空行删掉*/
delete fre_analysis where  product_id is null;
delete fre_analysis where  YMD is null;

select count(*) from (select count(distinct(product_id)) nm from FRE_ANALYSIS group by admv_dvsn,ymd order by nm asc) where NM>5 and YMD=20130109;

/*看看有多少可用的*/
/*
中间要执行创建wmsys.concat的的命令


*/

create or replace view r_fre as (select to_char(wm_concat(distinct(product_id))) brandid，ymd ymd from FRE_ANALYSIS group by admv_dvsn,ymd )order by ymd asc;
/*去掉brand是单个的记录*/
create or replace view r_pro as (select * from r_fre where length(BRANDID)>24);
select count(*) from R_PRO;