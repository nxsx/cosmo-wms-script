SELECT a.hang_flag, a.* FROM cosmo_wms_9771.ods_raw_order_out a 
WHERE a.hang_flag = '1' AND CONCAT(a.prd_order, '_', a.material_code) IN (
'30000114941_0060247845CP'
);

-- UPDATE cosmo_wms_9771.ods_raw_order_out a SET a.hang_flag = '0', a.last_modified_by = 'htcThanat', a.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE a.order_out_id IN ('87fffdbc880d4550acb5c9585d5c6efe'); 
