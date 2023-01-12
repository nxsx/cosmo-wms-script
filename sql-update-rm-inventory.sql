SELECT rm.storage_id, rm.wl_code, 
    rm.material_code, rm.material_desc, 
    rm.amount, rm.storage_amount, rm.occupy_amount, rm.user_defined1, 
	rm.last_modified_by, rm.gmt_modified, 
    rm.factory_code 
FROM cosmo_wms_9771.ods_raw_storage_news rm 
WHERE CONCAT(rm.material_code, '_', rm.wl_code) IN (
'0061800873BT_R01E005H'
); 

-- DELETE FROM cosmo_wms_9774.ods_raw_storage_news WHERE storage_id = '1759a2334c344bc590cee75a3a5ef103';
-- UPDATE cosmo_wms_9771.ods_raw_storage_news rm SET rm.amount = rm.amount - 300, rm.last_modified_by = 'htcThanat', rm.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE rm.storage_id IN ('a60100c27e60430abc6be12151d80970', 'bfa9bdb490ae11ed9829fa163ee15cda'); 
-- UPDATE cosmo_wms_9771.ods_raw_storage_news rm SET rm.amount = rm.amount + 300, rm.last_modified_by = 'htcThanat', rm.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE rm.storage_id IN ('c128e9b3804711ed85be02021ce9ee18'); 
-- UPDATE cosmo_wms_9771.ods_raw_storage_news rm SET rm.occupy_amount = 0, rm.last_modified_by = 'htcThanat', rm.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE rm.storage_id = 'dc244f1e4549458b8c70e1931ee598ef'; 
