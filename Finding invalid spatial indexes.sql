select table_name, index_name
from user_indexes
where index_type = 'DOMAIN'
and ityp_name = 'SPATIAL_INDEX'
and domidx_opstatus = 'FAILED';
