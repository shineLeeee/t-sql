UPDATE "LOGTRACK_TEST_11/24" SET "time"=to_date('1970-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') + "T_UTCTime"/86400+"TO_CHAR"(SUBSTR(TZ_OFFSET(sessiontimezone),1,3))/24;