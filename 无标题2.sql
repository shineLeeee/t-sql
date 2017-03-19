set linesize 30;
select t_targetid,t_status,t_longtitude,t_latitude,t_heading,t_status,t_utctime from taxi_onecar where t_targetid=10319 order by t_utctime;