-- INSERT INTO cosmo_wms_9771.ods_raw_storage_news(storage_id, 
storage_type, wl_code, material_code, material_desc, 
amount, storage_amount, occupy_amount, user_defined1, 
create_by, gmt_create, last_modified_by, gmt_modified, 
active_flag, factory_code) 
VALUES(
	replace(uuid(),'-',''), 
    '1', 
    'R01F008HB', 
    '0060234629CN', 
    'FIXING MEMBER-/ICE_WATER_ALLOY_T-DOOR_US', 
    6723, 0, 0, 
    'EA', 
    'htcThanat', DATE_ADD(NOW(), INTERVAL - 1 HOUR), 
    'htcThanat', DATE_ADD(NOW(), INTERVAL - 1 HOUR), 
    1, '9771'
);
