-- DN Delivery : status 0:Pending, 1:Scanning, 2:Finished : sap_flag 0:Post Pending, 1:Post Success 
SELECT * FROM cosmo_wms_9773.ods_pro_out_dn a 
WHERE a.delivery_order_code IN ('0080907128', '0080908589'); 
-- UPDATE cosmo_wms_9773.ods_pro_out_dn a SET a.out_amount = 770, a.status = 2, a.scan_time_begin = '2023-01-05 09:07:39', a.scan_time_end = '2023-01-05 10:14:53', a.fin_flag = '1', a.fin_time = '2023-01-05 10:14:53', a.sap_flag = '1', a.sap_up_time = '2023-01-05 10:15:14', a.sap_up_num = 770, a.fail_reason = 'PGI Success', a.user_defined2 = '4907070565', a.last_modified_by = 'htcThanat', a.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE a.out_nx_id = 'c9106451e010462f97bac93a0ee74afb'; 
-- UPDATE cosmo_wms_9773.ods_pro_out_dn a SET a.out_amount = 925, a.status = 1, a.scan_time_begin = '2023-01-04 16:45:37', a.scan_time_end = '2023-01-04 18:40:40', a.fin_flag = '1', a.fin_time = '2023-01-04 18:40:40', a.sap_flag = '0', a.sap_up_time = NULL, a.sap_up_num = NULL, a.fail_reason = NULL, a.user_defined2 = NULL, a.last_modified_by = 'htcThanat', a.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE a.out_nx_id = 'd76faf92bca0447a826afbeac1894220'; 
-- UPDATE cosmo_wms_9773.ods_pro_out_dn a SET a.user_defined1 = '0099', a.last_modified_by = 'htcThanat', a.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE a.out_nx_id = '4db3ceb0fe614265b10d7a44c90e1439'; 

-- DN Delivery Print 
SELECT * FROM cosmo_wms_9773.ods_pro_out_dn_print b 
WHERE b.nx_out_code IN ('0080907128', '0080908589'); 
-- UPDATE cosmo_wms_9773.ods_pro_out_dn_print b SET b.nx_out_code = '0080908589', b.update_by = 'htcThanat', b.update_date = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE b.id = '02e0b1c17c4e43e7bbe1480f31e0cce0'; 

INSERT INTO cosmo_wms_9773.ods_pro_out_dn_print (`id`, `nx_out_code`, `invoice`, `custom_field1`, `factory`, `booking_no`, `country`, `part_no`, `model`, `port`, `container_no`, `the_driver`, `seal_no`, `create_by`, `create_date`) 
VALUES (
	replace(uuid(),'-',''), 
    '0080907130', 'C022CNSG022', 
    '64-6674', '05/01/2023', 
    '9773', '6349989460', 
    'VN', 
    'AD0MTBE00', 'AHTE06AA: (GE-GE1-DOE)', 
    'CHICAGO,IL', 'OOLU9155340', 
    'the_driver', '24825317' 
    'htcThanat', DATE_ADD(NOW(), INTERVAL - 1 HOUR)
); 

-- FG In/Out Record : OI_TYPE 10:Inbound, 20:Outbound
SELECT c.ROW_ID, c.OI_TYPE, c.BARCODE, c.PRODUCT_DESC_ZH, c.QTY, c.ORDER_1, c.ORDER_2, c.ADD3, c.LAST_UPD_BY, c.LAST_UPD_DATE 
FROM cosmo_wms_9773.ods_pro_storage_records_sn c 
WHERE c.order_1 IN ('0080907128', '0080908589'); 
-- UPDATE cosmo_wms_9773.ods_pro_storage_records_sn c SET c.ORDER_1 = '0080908574', c.ORDER_2 = '000010', c.LAST_UPD_BY = 'htcThanat', c.LAST_UPD_DATE = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE c.ORDER_1 = '0080907131' AND c.ORDER_2 = '000010'; 

-- FG Loc Inventory / FG Loc Frozen Inventory : USE_FLAG 0:Unfrozen, 1:Frozen, 2:Hold 
SELECT * FROM cosmo_wms_9773.ods_pro_storage_sn_new d 
WHERE d.BARCODE IN ('AD0M9HE0011W1NCMP637', 'AD0M9HE0011W1NCMP722'); 
-- UPDATE cosmo_wms_9773.ods_pro_storage_sn_new d SET d.USE_FLAG = '0' WHERE ROW_ID = '28387'; 

-- History Record 
SELECT * FROM cosmo_wms_9773.ods_pro_storage_sn_operate_his e 
WHERE e.BARCODE IN ('AD0MTBE0021W2NCPJ357', 'AD0MTBE0021W2NCPJ358'); 

-- In Out Barcode Detail 
SELECT * FROM cosmo_wms_9773.ods_pro_move_record f 
WHERE f.bar_code IN ('AD0MTBE0021W2NCPJ357', 'AD0MTBE0021W2NCPJ358'); 
