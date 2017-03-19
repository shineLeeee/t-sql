SELECT COUNT(*)FROM  JAN_TRAJECTORY l,  ATTRACTIONS a WHERE  a.NAME='江汉路'AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'  ) = 'TRUE'and l.t_start_time>1388530800 and l.t_end_time<1388574000;

SELECT * FROM  JAN_TRAJECTORY l,  ATTRACTIONS a WHERE  a.NAME='江汉路'AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'  ) = 'TRUE'and l.t_start_time>1388530800 and l.t_end_time<1388574000;

SELECT count(*) FROM  JAN_TRAJECTORY l,  ATTRACTIONS a WHERE  a.NAME='江汉路'AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'  ) = 'TRUE'and l.t_start_time>1388530800 and l.t_end_time<1388574000;


SELECT count(*) FROM  JAN_TRAJECTORY l,  ATTRACTIONS a WHERE  a.NAME='江汉路'AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'  ) = 'TRUE'and l.t_start_time>1388530800 and l.t_end_time<1388574000;

SELECT count(*) 
FROM JAN_TRAJECTORY l,ATTRACTIONS a 
WHERE  a.NAME='江汉路'AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre')='TRUE'
and l.t_start_time>1388530800 
and l.t_end_time<1388574000;