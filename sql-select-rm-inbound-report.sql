SELECT dn.factory_code AS 'PLANT', 
CASE 
	WHEN DATE_FORMAT(dn.receipt_time,'%Y-%m-%d') <= DATE_FORMAT(po.receipt_time,'%Y-%m-%d') 
	THEN 'On time' 
	ELSE 'Delay' 
END AS 'DN_STATE', 
ABS(DATEDIFF(dn.receipt_time, po.receipt_time)) AS 'DN_DAYS', 
dn.dn_no AS 'DN_NO', 
dn.po_no AS 'PO_NO', 
dn.po_line AS 'ITEM', 
dn.material_code AS 'MAT_CODE', 
dn.material_desc AS 'MAT_DESC', 
DATE_FORMAT(po.receipt_time,'%Y-%m-%d') AS 'DELIVERY_DATE', 
dn.request_amount AS 'CREATED_QTY', 
dn.receipt_amount AS 'GR_QTY', 
dn.unit AS 'UNIT_CODE', 
DATE_FORMAT(dn.receipt_time,'%Y-%m-%d') AS 'GR_DATE', 
DATE_FORMAT(dn.receipt_time,'%H:%i:%s') AS 'GR_TIME', 
po.price AS 'UNIT_PRICE', 
po.waers AS 'CURRENCY', 
po.supply_code AS 'VENDOR_ID', 
po.supply_name AS 'VENDOR_NAME', 
po.po_type AS 'PO_TYPE', 
CASE 
	WHEN po.po_type = 'ZT02' THEN 'HTC Domestic' 
	WHEN po.po_type = 'ZT04' THEN 'HTC Free' 
	WHEN po.po_type = 'ZT05' THEN 'HTC Purchase From China' 
	WHEN po.po_type = 'ZT06' THEN 'HTC Import' 
	WHEN po.po_type = 'ZT09' THEN 'HTC Subcontract' 
	WHEN po.po_type = 'ZT11' THEN 'HTC Spare Part' 
	ELSE '...' 
END AS 'TYPE_DESC', 
dn.user_defined7 AS 'DOCUMENT_NO', 
dn.user_defined8 AS 'DOC_YEAR' 
FROM cosmo_wms_9774.ods_raw_order_in dn 
LEFT JOIN cosmo_wms_9774.ods_raw_order_po po ON dn.po_no = po.po_no AND dn.po_line = po.po_line 
WHERE dn.accounting_status = '2' 
-- AND dn.po_no = '4501199349' -- <= User can input po number
-- AND dn.dn_no = 'DN202209301001' -- <= User can input dn number
AND DATE_FORMAT(dn.receipt_time,'%Y-%m') IN ('2022-12') -- <= User can input receipt date
ORDER BY dn.gmt_create; 
