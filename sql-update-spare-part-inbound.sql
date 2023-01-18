-- UPDATE DN DETAIL
SELECT CONCAT(dn.po_no, '_', dn.po_line) AS 'ref_id', dn.* FROM cosmo_wms_9771.ods_raw_order_in dn 
WHERE dn.dn_no IN (
'DN202301120403'
); 
-- UPDATE cosmo_wms_9771.ods_raw_order_in dn SET dn.wl_code = 'SP00', dn.receipt_amount = dn.request_amount, dn.quality_status = '1', dn.order_status = '2', dn.receipt_operator = 'htcThanat', dn.receipt_time = DATE_ADD(NOW(), INTERVAL - 1 HOUR), dn.accounting_status = '2', dn.accounting_time = NOW(), dn.accounting_message = 'Material document created!', dn.user_defined7 = '5000861869', dn.user_defined8 = '2023', dn.last_modified_by = 'htcThanat', dn.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR), dn.unqualify_amount = '0' WHERE dn.raw_order_in_id = '91cfd00eb02242c28dae9d92e8350ce7'; 
-- UPDATE cosmo_wms_9771.ods_raw_order_in dn SET dn.wl_code = 'SP00', dn.receipt_amount = dn.request_amount, dn.quality_status = '1', dn.order_status = '2', dn.receipt_operator = 'htcThanat', dn.receipt_time = DATE_ADD(NOW(), INTERVAL - 1 HOUR), dn.accounting_status = '2', dn.accounting_time = NOW(), dn.accounting_message = 'Material document created!', dn.user_defined7 = '5000861880', dn.user_defined8 = '2023', dn.last_modified_by = 'htcThanat', dn.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR), dn.unqualify_amount = '0' WHERE dn.raw_order_in_id = 'd96f7080a2e649629c693ff85f81f8ed'; 

-- UPDATE PO DETAIL
SELECT po.price, CONCAT(po.po_no, '_', po.po_line) AS 'po_item', po.* FROM cosmo_wms_9771.ods_raw_order_po po 
WHERE CONCAT(po.po_no, '_', po.po_line) IN (
'4501210059_00010', '4501210059_00020' 
); 
-- UPDATE cosmo_wms_9771.ods_raw_order_po SET receipt_amount = po_amount, user_defined2 = 2, user_defined3 = 'htcThanat', user_defined4 = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE raw_order_po_id = 'b1020b3b46804b63a648fa28d0a5db72';
-- UPDATE cosmo_wms_9771.ods_raw_order_po SET receipt_amount = po_amount, user_defined2 = 2, user_defined3 = 'htcThanat', user_defined4 = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE raw_order_po_id = '08400a955d944193a276b934da1e4d44';
