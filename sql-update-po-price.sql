SELECT po.price, po.raw_order_po_id, CONCAT(po.po_no, '_', po.po_line) AS 'key' FROM cosmo_wms_9771.ods_raw_order_po po 
WHERE CONCAT(po.po_no, '_', po.po_line) IN(
'4501210393_00010'
);

-- UPDATE cosmo_wms_9771.ods_raw_order_po po SET po.price = '', po.user_defined3 = 'htcThanat', po.user_defined4 = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE po.raw_order_po_id = '';
