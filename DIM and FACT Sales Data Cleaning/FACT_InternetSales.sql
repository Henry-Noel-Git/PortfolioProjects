-- Cleaning FactInternetSales Fact Table --

SELECT 
  TOP (1000) 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --[PromotionKey], 
  --[CurrencyKey], 
  --[SalesTerritoryKey], 
  [SalesOrderNumber], 
  --[SalesOrderLineNumber], 
  --[RevisionNumber], 
  --[OrderQuantity], 
  --[UnitPrice], 
  --[ExtendedAmount], 
  --[UnitPriceDiscountPct], 
  --[DiscountAmount], 
 -- [ProductStandardCost], 
  --[TotalProductCost], 
  [SalesAmount] 
  --[TaxAmt], 
 -- [Freight], 
  --[CarrierTrackingNumber], 
  --[CustomerPONumber], 
  --[OrderDate], 
  --[DueDate], 
  --[ShipDate] 
FROM 
  [dbo].[FactInternetSales]
WHERE 
	LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 2 --only looking at data from previous two years--
ORDER BY
	OrderDateKey ASC