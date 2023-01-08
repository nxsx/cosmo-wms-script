SELECT a.WorkUser_BarCode AS 'Barcode', 
    a.Prod_Code AS 'Material', 
    b.prod_desc AS 'Description', 
    a.Code AS 'Order No.', 
    b.EU AS 'Unit', 
    b.Edition AS 'Prod Version', 
    a.Create_By AS 'Offline By', 
    a.Create_Date AS 'Offline Date', 
    a.Site_Code AS 'Plant', 
    b.LineCode AS 'Line Code' 
FROM cosmo_im_9773.bns_pm_scanhistory_month a 
LEFT JOIN cosmo_im_9773.bns_pm_productionorder b ON a.Code = b.Code AND a.Prod_Code = b.prod_code 
WHERE a.type = '1' 
-- AND b.LineCode = 'W1' -- <= User can input line code 
-- AND a.Code = '20000009479' -- <= User can input fg order 
-- AND DATE_FORMAT(a.Create_Date,'%Y-%m-%d') BETWEEN '2022-10-01' AND '2022-10-31' -- <= User can input date range 
ORDER BY a.Create_Date; 
