SELECT a.row_id AS 'id',
	DATE_FORMAT(a.created_date, '%Y-%m-%d %H:%i:%s') AS 'date_in',
	a.barcode AS 'sern',
	a.product_code AS 'mat_code',
	a.order_no AS 'order_no',
	b.send_spot AS 'ware_id',
	a.factory_code AS 'plant',
	a.qty AS 'qty' 
FROM cosmo_wms_9771.ods_pro_storage_records_sn a 
LEFT JOIN cosmo_base.md_send_spot b ON a.factory_code = b.factory_code AND a.loc_code = b.user_defined2 
WHERE a.yd_type = 'SHRK' AND a.oi_type = '10' AND a.add1 IS NULL 
ORDER BY a.created_date 
