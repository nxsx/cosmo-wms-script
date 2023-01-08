SELECT a.Site_Code AS 'Plant', 
    a.Prod_Code AS 'Material', 
    b.prod_desc AS 'Description', 
    COUNT(a.WorkUser_BarCode) AS 'Offline Qty', 
    b.EU AS 'Unit',
    b.Edition AS 'Prod Version' 
FROM cosmo_im_9773.bns_pm_scanhistory_month a 
LEFT JOIN cosmo_im_9773.bns_pm_productionorder b ON a.Code = b.Code AND a.Prod_Code = b.prod_code 
WHERE a.type = '1' 
AND DATE_FORMAT(a.Create_Date,'%Y-%m') IN ('2022-12') 
GROUP BY b.LineCode, a.Prod_Code, b.prod_desc, b.EU, b.Edition 
ORDER BY a.Create_Date; 
