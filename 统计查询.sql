SELECT count(*) from "huanghelou_test" 
WHERE ("E_UTCTime" >=to_date('13-12-31 00:00:00','yyyy-mm-dd hh24:mi:ss')+1/24) 
AND ("E_UTCTime" <=to_date('13-12-31 00:01:00','yyyy-mm-dd hh24:mi:ss')+2/24)