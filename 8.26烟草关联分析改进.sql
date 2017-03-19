--create table fre_nalysis as (
--select PRODUCT_ID,RETAILER_ID_CUST,YMD from EXPORDERLINE);
--select count(*) from fre_nalysis;
--/* 747个香烟品牌  33734个零售户 211天的 99999条数据 */
--select count(*) from fre_nalysis group by retailer_id_cust;
--
--select count(*) from exporderline;
----下面创建一个带有辅助aid列的表
DROP TABLE fre_analysis;
SELECT COUNT(*) FROM fre_analysis;
--create table fre_analysis as (
--select PRODUCT_ID,admv_dvsn,concat(admv_dvsn,ymd) aid,YMD from EXPORDERLINE where rownum<1000000);
--delete fre_analysis where  admv_dvsn is null;/*空行删掉*/
--delete fre_analysis where  product_id is null;
--delete fre_analysis where  YMD is null;
--
--
--
--
--SELECT aid,
--  TRANSLATE (LTRIM (text, '/'), '*/', '*,') researcherList
--FROM
--  (SELECT ROW_NUMBER () OVER (PARTITION BY aid ORDER BY aid, lvl DESC) rn,
--    aid,
--    text
--  FROM
--    (SELECT aid,
--      LEVEL lvl,
--      SYS_CONNECT_BY_PATH (distinct(PRODUCT_ID),'/') text
--    FROM
--      (SELECT aid,
--        PRODUCT_ID AS PRODUCT_ID,
--        ROW_NUMBER () OVER (PARTITION BY aid ORDER BY aid,PRODUCT_ID) x
--      FROM fre_analysis where rownum<10000
--      ORDER BY aid,PRODUCT_ID
--      ) a
--      CONNECT BY aid = PRIOR aid
--    AND x - 1        = PRIOR x
--    )
--  )
--WHERE rn = 1
--ORDER BY aid ASC;
--
--SELECT aid,
--        PRODUCT_ID AS PRODUCT_ID,
--        ROW_NUMBER () OVER (PARTITION BY aid ORDER BY aid,PRODUCT_ID) x
--      FROM fre_analysis where rownum<10000 order by x desc;
--
--
--select aid,CONCAT('product_id:',Number) from fre_analysis where rownum<100 group by aid;
--with temp as(
--  select 'China' nation ,'Guangzhou' city from dual union all
--  select 'China' nation ,'Shanghai' city from dual union all
--  select 'China' nation ,'Beijing' city from dual union all
--  select 'USA' nation ,'New York' city from dual union all
--  select 'USA' nation ,'Bostom' city from dual union all
--  select 'Japan' nation ,'Tokyo' city from dual
--)
--select nation,listagg(city,',') within GROUP (order by city)
--from temp
--group by nation
--select distinct(a) from (select substr(admv_dvsn,0,6) a from EXPORDERLINE where admv_dvsn<'522732' and  rownum<100000 order by admv_dvsn desc);


-------------------------------------------------------------------------------------------------------------------------------------------------------------可用
CREATE OR REPLACE VIEW fre_analysis
AS
  SELECT PRODUCT_ID,
    SUBSTR(admv_dvsn,0,6) subid,
    concat(admv_dvsn,ymd) aid,
    YMD
  FROM EXPORDERLINE
  WHERE rownum               <10000000
  AND admv_dvsn             >='520100'
  AND admv_dvsn             <='522732'
  AND SUBSTR(admv_dvsn,0,6) IS NOT NULL
  AND product_id            IS NOT NULL
  AND YMD                   IS NOT NULL ;
  --select count(*) from fre_analysis;
  ---------------------------------------------选择出了所有订单中文名称------------
--  SELECT aid,v_d_cgrt_spec.brand_name FROM fre_analysis  LEFT JOIN v_d_cgrt_spec  ON fre_analysis.product_id=v_d_cgrt_spec.id ;
  ---------------------------------------------把同一天的相同订单去掉--------------
 -- SELECT aid,brand_name FROM fre_analysis  LEFT JOIN v_d_cgrt_spec  ON fre_analysis.product_id=v_d_cgrt_spec.id;--选出
  ------去掉重复-------
  create or replace view fre_analysis2 as 
  select aid,brand_code from(SELECT aid,brand_code,count(*) a FROM fre_analysis  LEFT JOIN v_d_cgrt_spec  ON fre_analysis.product_id=v_d_cgrt_spec.id group by aid,brand_code); 
  
  
  create or replace view fre_analysis3 as
  SELECT LISTAGG(brand_code,',') WITHIN GROUP (ORDER BY brand_code) AS brand_code FROM fre_analysis2 GROUP BY aid;
  
  select BRAND_code from fre_analysis3 where length(BRAND_code)>6;---R中调用
  
-------------------------------------------------------------------------------------------------------------------------------------------------------------可用 
  select * from fre_analysis3;
  set BRAND_NAME gbk; 
  select BRAND_NAME from fre_analysis3 where length(BRAND_NAME)>3;
  
  SELECT * FROM NLS_DATABASE_PARAMETERS;
  
  
  
--  SELECT colunm_name1,
--    colunm_name2
--  FROM table_name1
--  LEFT JOIN table_name2
--  ON table_name1.colunmname=table_name2.colunmname;
  SELECT userenv('language') FROM dual;
  SELECT product_name FROM v_d_cgrt_spec WHERE rownum=1;
  --delete fre_analysis where  subid is null;/*空行删掉*/
  --delete fre_analysis where  product_id is null;
  --delete fre_analysis where  YMD is null;
  --drop view r_frequen;
  ----创建了中间视图
  --
  --CREATE TABLE r_frequen AS
  --  (SELECT SUBSTR(aid,1,6) subid,
  --      SUBSTR(aid,7,14) ymd,
  --      to_clob(SUBSTR(SUM,1,39)) productid
  --    FROM
  --      (SELECT aid,
  --        listagg(product_id,',') within GROUP (
  --      ORDER BY product_id) SUM
  --      FROM fre_analysis
  --      GROUP BY aid
  --      ORDER BY aid ASC
  --      )
  --  )
  --;
  SELECT aid,
    listagg(product_id,',') within GROUP (
  ORDER BY product_id),
    LENGTH(listagg(product_id,',') within GROUP (
  ORDER BY product_id))
  FROM fre_analysis
  GROUP BY aid
  ORDER BY aid DESC;
CREATE OR REPLACE VIEW r_fre
AS
  (SELECT TO_CHAR(wm_concat(DISTINCT(product_id))) brandid，ymd ymd
  FROM FRE_ANALYSIS
  GROUP BY admv_dvsn,
    ymd
  )order by ymd ASC;
  
  
  
--  尝试生成.csv
 
--spool C:\Users\ls\Desktop\lfc.csv
--set colsep ,  
--set feedback off  
--set heading off  
--set trimout on   
--select '"' || loc ||  '"' from dept
--spool off  

--select '"' || product_name ||  '"' from "texttest";