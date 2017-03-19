select table_name, column_name
from   user_tab_columns
where  data_type = 'SDO_GEOMETRY'
and    (table_name, column_name) not in (
  select table_name, column_name from user_sdo_geom_metadata
)
order by table_name;
