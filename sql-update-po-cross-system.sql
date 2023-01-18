-- SELECT * FROM cosmo_wms_9771.ods_raw_order_po po WHERE user_defined3 = 'htcThanat';

SELECT * FROM cosmo_wms_9773.ods_raw_order_po po 
WHERE CONCAT(po.po_no, '_', po.po_line) IN(
'4501202206_00130'
);
-- UPDATE cosmo_wms_9773.ods_raw_order_po SET receipt_flag = '' WHERE raw_order_po_id = '3061177cacb24e46a3361f549a21ba96'; 
-- UPDATE cosmo_wms_9771.ods_raw_order_po SET receipt_amount = po_amount, split_amount = 0, user_defined2 = 2, user_defined3 = 'htcThanat', user_defined4 = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE raw_order_po_id = '1b0ceef781134608852466f1ea10d1e2'; 
-- UPDATE cosmo_wms_9773.ods_raw_order_po SET po_amount = receipt_amount, base_amount = receipt_amount, split_amount = 0, user_defined2 = 2, user_defined3 = 'htcThanat', user_defined4 = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE raw_order_po_id = '7ec1add298a4456ba5883c9b8722bf46'; 

SELECT CONCAT(dn.po_no, '_', dn.po_line) AS 'KEY', SUM(request_amount) AS 'CREATED_QTY', SUM(receipt_amount) AS 'RECEIPT_QTY' 
FROM cosmo_wms_9771.ods_raw_order_in dn 
WHERE CONCAT(dn.po_no, '_', dn.po_line) = '4501206418_00480' AND dn.quality_status NOT IN ('2') 
GROUP BY CONCAT(dn.po_no, '_', dn.po_line);

SELECT * FROM cosmo_wms_9771.ods_raw_order_in dn 
WHERE CONCAT(dn.po_no, '_', dn.po_line) IN(
'4501206418_00480'
);

-- po.po_amount == SAP
-- po.receipt_amount == SUM(dn.receipt_amount) 
-- po.split_amount == po.po_amount - SUM(dn.request_amount)
