SELECT * FROM cosmoimbase.elastic_job_config t 
WHERE t.factory_code IN('9771', '9773', '9774') AND t.create_by IN('FG', 'SFG') 
ORDER BY t.factory_code, t.create_by;

-- UPDATE cosmoimbase.elastic_job_config t SET t.status = '1', t.update_by = 'htcThanat', t.update_time = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE t.id IN('6', '9'); 
-- UPDATE cosmoimbase.elastic_job_config t SET t.status = '1', t.update_by = 'htcThanat', t.update_time = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE t.id IN('1', '11'); 
-- UPDATE cosmoimbase.elastic_job_config t SET t.status = '1', t.update_by = 'htcThanat', t.update_time = DATE_ADD(NOW(), INTERVAL - 1 HOUR) WHERE t.id IN('26', '12'); 
-- The status field is 0:stop, 1:start
