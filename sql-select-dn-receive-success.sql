SELECT dn.material_code, 
	dn.receipt_amount, 
    po.supply_code, 
    po.supply_name, 
    DATE_FORMAT(dn.accounting_time, '%Y-%m-%d %H:%i:%s') AS accounting_time 
FROM cosmo_wms_9773.ods_raw_order_in dn 
LEFT JOIN cosmo_wms_9773.ods_raw_order_po po ON dn.po_no = po.po_no 
AND dn.po_line = po.po_line 
AND dn.material_code = po.material_code 
WHERE dn.accounting_status = 2 
AND DATE_FORMAT(dn.accounting_time, '%Y-%m-%d') = DATE_FORMAT(NOW() - INTERVAL 1 DAY, '%Y-%m-%d') 
ORDER BY dn.accounting_time ASC;
