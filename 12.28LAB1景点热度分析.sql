SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='黄鹤楼'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='黄鹤楼'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
insert into attractions(OBJECTID,geometry) values(2,MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.304294,30.552323,NULL),NULL,NULL));
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='户部巷'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='户部巷'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
insert into attractions(OBJECTID,NAME,geometry) values(3,'东湖景区'，MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.379627,30.575498,NULL),NULL,NULL));
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='东湖景区'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=1500 unit=metre'
  ) = 'TRUE'; 
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='东湖景区'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1500 unit=metre'
  ) = 'TRUE';
 insert into attractions(OBJECTID,NAME,geometry) values(4,'武汉长江大桥'，MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.294736,30.555457,NULL),NULL,NULL));
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='武汉长江大桥'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=700 unit=metre'
  ) = 'TRUE'; 
   SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='武汉长江大桥'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=700 unit=metre'
  ) = 'TRUE'; 
     SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='湖北省博物馆'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=170 unit=metre'
  ) = 'TRUE'; 
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='湖北省博物馆'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=170 unit=metre'
  ) = 'TRUE'; 
insert into attractions(OBJECTID,NAME,geometry) values(5,'武汉大学'，MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.371293,30.544766,NULL),NULL,NULL));
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='武汉大学'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=4000 unit=metre'
  ) = 'TRUE'; 
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='武汉大学'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=4000 unit=metre'
  ) = 'TRUE'; 
insert into attractions(OBJECTID,NAME,geometry) values(6,'欢乐谷'，MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.401529,30.600773,NULL),NULL,NULL));
 SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='欢乐谷'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=600 unit=metre'
  ) = 'TRUE'; 
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='欢乐谷'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=600 unit=metre'
  ) = 'TRUE'; 
insert into attractions(OBJECTID,NAME,geometry) values(7,'江汉路'，MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.298197,30.586325,NULL),NULL,NULL));
 SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='江汉路'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'
  ) = 'TRUE'; 
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='江汉路'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'
  ) = 'TRUE'; 
