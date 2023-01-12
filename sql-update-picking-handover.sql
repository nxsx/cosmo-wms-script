-- Pullist detail
SELECT * FROM cosmo_wms_9773.ods_raw_order_out a 
-- UPDATE cosmo_wms_9773.ods_raw_order_out a SET a.total_mo_amount = a.total_mo_amount - 925 WHERE a.order_out_id = '001112f9ac4a4368b5d7e7df55815b5f'; 
-- UPDATE cosmo_wms_9773.ods_raw_order_out a SET a.total_hv_amount = a.total_hv_amount - 925 WHERE a.order_out_id = '001112f9ac4a4368b5d7e7df55815b5f'; 
WHERE a.prd_order = '20000010010' AND a.material_code IN ('0010729253CA'); 

-- Picking header
SELECT * FROM cosmo_wms_9773.ods_raw_mission_out_jh b 
-- UPDATE cosmo_wms_9773.ods_raw_mission_out_jh b SET b.amount = b.amount - 925, b.operator_amount = b.operator_amount - 925 WHERE b.ods_raw_mission_id = 'dd34d4eeea7b45b8a2909f7fd055f9ba'; 
-- DELETE FROM cosmo_wms_9773.ods_raw_mission_out_jh b WHERE b.ods_raw_mission_id = 'dd34d4eeea7b45b8a2909f7fd055f9ba'; 
WHERE b.prd_order = '20000010010' AND b.material_code IN ('0010729253CA'); 
-- Picking detail
SELECT * FROM cosmo_wms_9773.ods_raw_mission_out_jh_sn bsn 
-- UPDATE cosmo_wms_9773.ods_raw_mission_out_jh_sn bsn SET bsn.virtual_amount = 0 WHERE bsn.ods_raw_mission_id = '4e6a056600c14669a73a11bafd95ae77'; 
-- DELETE FROM cosmo_wms_9773.ods_raw_mission_out_jh_sn bsn WHERE bsn.ods_raw_mission_id = '23d2905074d1401d92ae0b1fa6bfe115'; 
WHERE bsn.prd_order = '20000010010' AND bsn.material_code IN ('0010729253CA'); 

-- Hand Over
SELECT * FROM cosmo_wms_9773.ods_raw_mission_out c 
-- DELETE FROM cosmo_wms_9773.ods_raw_mission_out c WHERE c.ods_raw_mission_id = 'fb39b5df24ce4eb38f4aebf92fea8b95'; 
WHERE c.prd_order = '20000010010' AND c.material_code IN ('0010729253CA'); 

-- Inventory
SELECT * FROM cosmo_wms_9773.ods_raw_storage_news rm 
-- UPDATE cosmo_wms_9773.ods_raw_storage_news rm SET rm.occupy_amount = rm.occupy_amount - 925 WHERE rm.storage_id = '0067de1acb344Afdb03a0aa8c2583110'; 
WHERE rm.material_code = '0010729253CA' AND rm.wl_code = 'WMSE'; 

-- Virtual inventory
SELECT * FROM cosmo_wms_9771.ods_virtual_order v 
-- UPDATE cosmo_wms_9771.ods_virtual_order v SET v.mrp_code = '009' WHERE v.virtual_order_id = '01651c83c4794ad585445a8528403c9c'; 
-- DELETE FROM cosmo_wms_9771.ods_virtual_order WHERE v.virtual_order_id = '01651c83c4794ad585445a8528403c9c'; 
WHERE v.material_code = '1810041019N' AND v.send_spot = 'RPSS'; 
