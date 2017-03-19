

select min(T_START_LONGTI) from JAN_TRAJECTORY;

INSERT INTO user_sdo_geom_metadata VALUES (  
    'JAN_TRAJECTORY',     
    'START_CORDINATE',   
    MDSYS.SDO_DIM_ARRAY(     
        MDSYS.SDO_DIM_ELEMENT('Long', 0, 140, 0.000001),     
        MDSYS.SDO_DIM_ELEMENT('Lat', 0, 140, 0.000001)),8307); 
        
select * from user_sdo_geom_metadata;

INSERT INTO user_sdo_geom_metadata VALUES (  
    'JAN_TRAJECTORY',     
    'END_CORDINATE',   
    MDSYS.SDO_DIM_ARRAY(     
        MDSYS.SDO_DIM_ELEMENT('Long', 0, 140, 0.000001),     
        MDSYS.SDO_DIM_ELEMENT('Lat', 0, 140, 0.000001)),8307); 
        
drop index Janstartindex;
CREATE INDEX Janstartindex ON JAN_TRAJECTORY(START_CORDINATE) INDEXTYPE is MDSYS.spatial_index;        

CREATE INDEX Janendindex ON JAN_TRAJECTORY(END_CORDINATE) INDEXTYPE is MDSYS.spatial_index;       
        
        
