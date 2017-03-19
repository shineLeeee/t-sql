create table TAXI_TEST
(
T_TargetID char(255) primary key,
T_UTCTime decimal,
T_Longitude decimal(10,0)default null,
T_Latitude decimal(10,0) default NULL,
T_Speed decimal(10,6) default NULL,
T_Heading decimal(10,6) default null,
T_Alarm decimal(10,0) default null,
T_Status decimal(10,0) default NULL,
T_Info varchar(150) default null,
T_Cost decimal(5,0) default null,
T_AsynFlag varchar(10) default null,
T_RecordTime decimal(15) default null)