SELECT count(*)
   FROM (SELECT *
  FROM JAN_TRAJECTORY l,ATTRACTIONS a
 WHERE a.OSMUSER='�ƺ�¥'
   AND sdo_within_distance (
         l.END_CORDINATE, a.GEOMETRY,'distance=3000 unit=metre') 
       = 'TRUE') l,ATTRACTIONS a
  WHERE a.OSMUSER='����ʡ�����'
   AND sdo_within_distance (
         l.START_CORDINATE, a.GEOMETRY,'distance=2000 unit=metre') 
       = 'TRUE'
ORDER BY T_START_TIME;//

