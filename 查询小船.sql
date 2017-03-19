SELECT "FEATURE_ID" id,name boat_name
FROM mylake t
WHERE feature_id = 12
AND SDO_FILTER(t.shape, mdsys.sdo_geometry(2003,NULL,NULL,
    mdsys.sdo_elem_info_array(1,1003,1),
    mdsys.sdo_ordinate_array(0,0, 100,0, 100,100, 0,100, 0,0)),
    'querytype=WINDOW') = 'TRUE'; 