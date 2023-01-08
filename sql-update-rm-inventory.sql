SELECT rm.storage_id, rm.wl_code, 
    rm.material_code, rm.material_desc, 
    rm.amount, rm.storage_amount, rm.occupy_amount, rm.user_defined1, 
	rm.last_modified_by, rm.gmt_modified, 
    rm.factory_code 
FROM cosmo_wms_9773.ods_raw_storage_news rm 
WHERE CONCAT(rm.material_code, '_', rm.wl_code) IN (
'0010736377A_A000R00'
); 

-- UPDATE cosmo_wms_9774.ods_raw_storage_news rm SET rm.amount = rm.amount - 100, rm.last_modified_by = 'htcThanat', rm.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE rm.storage_id = '26e05d597b5b11ed85be02021ce9ee18'; 
-- UPDATE cosmo_wms_9774.ods_raw_storage_news rm SET rm.amount = rm.amount + 100, rm.last_modified_by = 'htcThanat', rm.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE rm.storage_id = '4374d917001a4138ba15ea67fc2d1c6a'; 
-- UPDATE cosmo_wms_9773.ods_raw_storage_news rm SET rm.occupy_amount = 0, rm.last_modified_by = 'htcThanat', rm.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE rm.storage_id = 'a60100c27e60430abc6be12151d81565'; 
