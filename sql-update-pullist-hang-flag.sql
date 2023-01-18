SELECT a.hang_flag, a.* FROM cosmo_wms_9771.ods_raw_order_out a 
WHERE a.hang_flag = '1' AND CONCAT(a.prd_order, '_', a.material_code) IN (
'30000116618_0060867781BA'
);

-- UPDATE cosmo_wms_9771.ods_raw_order_out a SET a.hang_flag = '0', a.last_modified_by = 'htcThanat', a.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE a.order_out_id IN ('d6d7c1ba7fa44f6f83c36db15bcdacae'); 
