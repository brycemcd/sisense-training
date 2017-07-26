SELECT
'Dim_Dates' AS Table,
'Date' AS Key,
count(t.Date) [Total Count],
DISTINCT_count(t.Date) [Distinct Count],
count(t.Date)-DISTINCT_count(t.Date) AS [Duplicated Records],
ifint(count(t.Date)-DISTINCT_count(t.Date)>0,1,0) AS M2M_Flag
FROM [dim_Dates] t

UNION ALL

SELECT
'Dim_Product' AS Table,
'Product_ID' AS Key,
count(t.Product_ID) [Total Count],
DISTINCT_count(t.Product_ID) [Distinct Count],
count(t.Product_ID)-DISTINCT_count(t.Product_ID) AS [Duplicated Records],
ifint(count(t.Product_ID)-DISTINCT_count(t.Product_ID)>0,1,0) AS M2M_Flag

FROM [dim_Product] t
UNION All
SELECT

'Dim_Customer' AS Table,
'Cusstomer_ID' AS Key,
count(t.Customer_Id) [Total Count],
DISTINCT_count(t.Customer_Id) [Distinct Count],
count(t.Customer_Id)-DISTINCT_count(t.Customer_Id) AS [Duplicated Records],
ifint(count(t.Customer_Id)-DISTINCT_count(t.Customer_Id)>0,1,0) AS M2M_Flag
FROM [dim_Customer] t
