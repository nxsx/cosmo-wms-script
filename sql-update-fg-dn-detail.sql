SELECT * FROM cosmo_wms_9773.ods_pro_storage_records_sn c 
-- UPDATE cosmo_wms_9773.ods_pro_storage_records_sn c SET c.ORDER_1 = '0080908589', c.ORDER_2 = '000010', c.LAST_UPD_BY = 'htcThanat', c.LAST_UPD_DATE = DATE_ADD(NOW(), INTERVAL - 1 HOUR) 
WHERE c.ROW_ID IN (
'358294'
);
