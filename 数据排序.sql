select count(*) from "whole_month";
select count(*) from "whole_month_order";

insert into "whole_month_order"("T_TargetID","T_Longitude","T_Latitude","T_Status","T_Speed","T_UTCTime") select "T_TargetID","T_Longitude","T_Latitude","T_Status","T_Speed","T_UTCTime" from "whole_month" order by "T_TargetID","T_UTCTime" asc