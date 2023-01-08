-- UPDATE DN DETAIL
SELECT CONCAT(dn.po_no, '_', dn.po_line) AS 'ref_id', dn.* FROM cosmo_wms_9771.ods_raw_order_in dn 
WHERE dn.dn_no IN (
'DN202301050015'
); 
-- UPDATE cosmo_wms_9771.ods_raw_order_in dn SET dn.wl_code = 'SP00', dn.receipt_amount = '10', dn.quality_status = '1', dn.order_status = '2', dn.receipt_operator = 'htcThanat', dn.receipt_time = DATE_ADD(NOW(), INTERVAL - 1 HOUR), dn.accounting_status = '2', dn.accounting_time = NOW(), dn.accounting_message = 'Material document created!', dn.user_defined7 = '5000850425', dn.user_defined8 = '2023', dn.last_modified_by = 'htcThanat', dn.gmt_modified = DATE_ADD(NOW(), INTERVAL - 1 HOUR), dn.unqualify_amount = '0' WHERE dn.raw_order_in_id = 'f6be32ee23884bee88abad8baefc27cc'; 

-- UPDATE PO DETAIL
SELECT po.price, CONCAT(po.po_no, '_', po.po_line) AS 'po_item', po.* FROM cosmo_wms_9771.ods_raw_order_po po 
WHERE CONCAT(po.po_no, '_', po.po_line) IN (
'4501208146_00040'
); 
-- UPDATE cosmo_wms_9771.ods_raw_order_po SET receipt_amount = 100, user_defined2 = 2, user_defined3 = 'htcThanat', user_defined4 = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE raw_order_po_id = '87bd22af3138485d9b7fd27279b4f4f2';
