INSERT INTO mylake VALUES(
    10, 
    'Lake Calhoun', 
    MDSYS.SDO_GEOMETRY(
        2003,
        NULL,
        NULL,
        MDSYS.SDO_ELEM_INFO_ARRAY(1,1003,1, 19,2003,1),
        MDSYS.SDO_ORDINATE_ARRAY(0,0, 10,0, 10,10, 0,10, 0,0, 4,4, 6,4, 6,6, 4,6, 4,4)
    ));
INSERT INTO mylake VALUES(
    11, 
    'The Windswept', 
    MDSYS.SDO_GEOMETRY(
        2003,
        NULL,
        NULL,
        MDSYS.SDO_ELEM_INFO_ARRAY(1,1003,1),
        MDSYS.SDO_ORDINATE_ARRAY(2,2, 3,2, 3,2, 2,3, 2,2)
    )
);

INSERT INTO mylake VALUES(
    12, 
    'Blue Crest', 
    MDSYS.SDO_GEOMETRY(
        2003,
        NULL,
        NULL,
        MDSYS.SDO_ELEM_INFO_ARRAY(1,1003,1),
        MDSYS.SDO_ORDINATE_ARRAY(7,7, 8,7, 8,7, 7,8, 7,7)
    )
);