-- SELECT * FROM cosmo_wms_9771.ods_raw_order_po po WHERE user_defined3 = 'htcThanat';

SELECT * FROM cosmo_wms_9771.ods_raw_order_po po 
WHERE CONCAT(po.po_no, '_', po.po_line) IN(
'4501208828_00230'
);

-- UPDATE cosmo_wms_9771.ods_raw_order_po SET receipt_amount = po_amount, split_amount = 0, user_defined2 = 2, user_defined3 = 'htcThanat', user_defined4 = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE raw_order_po_id = '215e1065888245108ddfafb8004fd13c';

SELECT * FROM cosmo_wms_9771.ods_raw_order_in dn 
WHERE CONCAT(dn.po_no, '_', dn.po_line) IN(
'4501204209_00010'
);
