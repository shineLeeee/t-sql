SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='�ƺ�¥'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='�ƺ�¥'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
insert into attractions(OBJECTID,geometry) values(2,MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.304294,30.552323,NULL),NULL,NULL));
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='������'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='������'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=500 unit=metre'
  ) = 'TRUE';
insert into attractions(OBJECTID,NAME,geometry) values(3,'��������'��MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.379627,30.575498,NULL),NULL,NULL));
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='��������'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=1500 unit=metre'
  ) = 'TRUE'; 
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='��������'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1500 unit=metre'
  ) = 'TRUE';
 insert into attractions(OBJECTID,NAME,geometry) values(4,'�人��������'��MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.294736,30.555457,NULL),NULL,NULL));
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='�人��������'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=700 unit=metre'
  ) = 'TRUE'; 
   SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='�人��������'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=700 unit=metre'
  ) = 'TRUE'; 
     SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='����ʡ�����'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=170 unit=metre'
  ) = 'TRUE'; 
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='����ʡ�����'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=170 unit=metre'
  ) = 'TRUE'; 
insert into attractions(OBJECTID,NAME,geometry) values(5,'�人��ѧ'��MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.371293,30.544766,NULL),NULL,NULL));
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='�人��ѧ'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=4000 unit=metre'
  ) = 'TRUE'; 
SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='�人��ѧ'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=4000 unit=metre'
  ) = 'TRUE'; 
insert into attractions(OBJECTID,NAME,geometry) values(6,'���ֹ�'��MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.401529,30.600773,NULL),NULL,NULL));
 SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='���ֹ�'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=600 unit=metre'
  ) = 'TRUE'; 
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='���ֹ�'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=600 unit=metre'
  ) = 'TRUE'; 
insert into attractions(OBJECTID,NAME,geometry) values(7,'����·'��MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.298197,30.586325,NULL),NULL,NULL));
 SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='����·'
AND sdo_within_distance ( l.END_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'
  ) = 'TRUE'; 
  SELECT
  COUNT(*)
FROM
  JAN_TRAJECTORY l,
  ATTRACTIONS a
WHERE
  a.NAME='����·'
AND sdo_within_distance ( l.START_CORDINATE, a.GEOMETRY,'distance=1000 unit=metre'
  ) = 'TRUE'; 
