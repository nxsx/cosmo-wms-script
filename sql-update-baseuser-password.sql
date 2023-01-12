SELECT t.user_id, t.login_name, t.password, t.rf_pwd, t.user_name, t.last_pwd_modifed, t.last_modified_by  
FROM cosmo_base.base_user t 
WHERE t.login_name = '70001097';

-- UPDATE cosmo_base.base_user t SET t.password = '15de21c670ae7c3f6f3f1f37029303c9', t.last_pwd_modifed = NOW(), t.last_modified_by = 'htcThanat' WHERE t.user_id = 'f02e0683f5004162b8677a6f546d642e'; 
-- UPDATE cosmo_base.base_user t SET t.rf_pwd = '2529', t.last_pwd_modifed = NOW(), t.last_modified_by = 'htcThanat' WHERE t.user_id = 'e4c7838655014a0ab4a430c51d785831';
