UPDATE JAN_TRAJECTORY 
SET START_CORDINATE=MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(T_START_LONGTI,T_START_LATI,NULL),NULL,NULL),
END_CORDINATE=MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(T_END_LONGTI,T_END_LATI,NULL),NULL,NULL);




MDSYS.SDO_GEOMETRY(2001,8307,MDSYS.SDO_POINT_TYPE(114.304294,30.552323,NULL),NULL,NULL)