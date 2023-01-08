-- INSERT INTO cosmo_wms_9773.ods_raw_storage_news(storage_id, 
storage_type, wl_code, material_code, material_desc, 
amount, storage_amount, occupy_amount, user_defined1, 
create_by, gmt_create, last_modified_by, gmt_modified, 
active_flag, factory_code) 
VALUES(
	replace(uuid(),'-',''), 
    '1', 
    'A000A08', 
    '0010105323P', 
    'SIDE BOARD OF ELECTRIC BOX-/10K,12K_WAC', 
    1050, 0, 0, 
    'EA', 
    'htcThanat', DATE_ADD(NOW(), INTERVAL - 1 HOUR), 
    'htcThanat', DATE_ADD(NOW(), INTERVAL - 1 HOUR), 
    1, '9773'
);
