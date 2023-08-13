SELECT 
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
--,[PromotionKey]
--,[CurrencyKey]
--,[SalesTerritoryKey]
[SalesOrderNumber],
--,[SalesOrderLineNumber]
--,[RevisionNumber]
--,[OrderQuantity]
--,[UnitPrice]
--,[UnitPriceDiscountPct]
--,[DiscountAmount]
--,[ProductStandardCost]
--,[TotalProductCost]
[SalesAmount]
--,[TaxAmt]
--,[Freight]
--,[CarrierTrackingNumber]
--,[CustomerPONumber]
--,[OrderDate]
--,[DueDate]
--,[ShipDate]
FROM 
dbo.FactInternetSales
WHERE 
LEFT (OrderDateKey,4) >= YEAR(GETDATE()) -2 -- Me asegura extraer solamente dos años hacia atras
ORDER BY
OrderDateKey ASC
--Ultima actualizacion 10/08/2023
