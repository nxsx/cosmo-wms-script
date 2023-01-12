-- Hand Over : This record has been processed before!
SELECT c.ods_raw_mission_id, c.prd_order, c.material_code, c.destination_location, c.sap_reg_amount, c.sap_file_no, c.accounting_flag, c.accounting_time, c.accounting_message, c.last_modified_by, c.gmt_modified 
FROM cosmo_wms_9773.ods_raw_mission_out c 
WHERE CONCAT(c.prd_order, '_', c.material_code, '_', c.destination_location) IN (
'20000010536_0010211551A_0312'
); 

-- UPDATE cosmo_wms_9773.ods_raw_mission_out c SET c.accounting_flag = '2', c.accounting_message = 'Material document created!', c.last_modified_by = 'htcThanat', c.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE c.ods_raw_mission_id = '5aec7b904b9c4d26a4a413320ceeabb6'; 
