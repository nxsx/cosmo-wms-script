-- Delivery Header
SELECT b.invoice AS INVOICE_NO, 
b.container_no AS CONTAINER_NO, 
b.booking_no AS BOOKING_NO, 
b.seal_no AS SEAL_CODE, 
b.port AS PORT_NO, 
b.custom_field1 AS SPARE_PART, 
b.car_no AS CAR_NO, 
b.user_defined1 AS PO_NO, 
a.delivery_order_code AS LOADING_CODE, 
a.material_desc AS MAT_DESC, 
b.country AS COUNTRY, 
a.pro_factory AS PLANT, 
a.material_code AS MAT_CODE, 
a.out_amount AS QTY, 
a.sale_unit AS UNIT 
FROM cosmo_wms_9774.ods_pro_out_dn a 
LEFT JOIN cosmo_wms_9774.ods_pro_out_dn_print b ON a.delivery_order_code = b.nx_out_code 
WHERE a.delivery_order_code = '0080907666' 
ORDER BY a.row_item; 

-- Delivery Detail
SELECT SUBSTR(sn.barcode, 12, 20) AS SERIAL_NO 
FROM cosmo_wms_9774.ods_pro_storage_records_sn sn 
WHERE sn.oi_type = '20' and sn.add3 = '0' AND sn.order_1 = '0080907666' 
AND sn.product_code = 'AABR98E00' 
ORDER BY substr(sn.barcode, 12, 20) ASC; 

-- Next Header
SELECT b.invoice AS INVOICE_NO, 
b.car_no AS CAR_NO, 
b.country AS COUNTRY, 
b.nx_out_code AS LOADING_CODE 
FROM cosmo_wms_9774.ods_pro_out_dn_print b 
WHERE b.nx_out_code = '0080907666'; 

-- Next Detail
SELECT a.material_code AS MAT_CODE, 
a.material_desc AS MAT_DESC, 
a.out_amount AS QTY 
FROM cosmo_wms_9774.ods_pro_out_dn a 
WHERE a.delivery_order_code = '0080907666' 
ORDER BY a.row_item; 
