/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [AccountKey]
      ,[ParentAccountKey]
      ,[AccountCodeAlternateKey]
      ,[ParentAccountCodeAlternateKey]
      ,[AccountDescription]
      ,[AccountType]
      ,[Operator]
      ,[CustomMembers]
      ,[ValueType]
      ,[CustomMemberOptions], 
	  ([AccountDescription] + ' - ' + [AccountType]) as 'Birleşik Account Type', 
	  (Cast([AccountKey] as varchar) + ' - ' + [AccountDescription]) as 'Key Desc'
  FROM [AdventureWorksDW2014].[dbo].[DimAccount]

    SELECT  [ProductKey],[CurrencyKey] , Sum(SalesAmount) as 'Toplam Satış'
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  where CurrencyKey>6 
  Group by ProductKey,CurrencyKey 


  SELECT  [ProductKey],[CurrencyKey] , Sum(SalesAmount) as 'Toplam Satış'
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  where CurrencyKey>6 
  Group by ProductKey,CurrencyKey order by CurrencyKey desc

    SELECT  [ProductKey],[CurrencyKey] , Sum(SalesAmount) as 'Toplam Satış'
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  where CurrencyKey>6 and ProductKey>360
  Group by ProductKey,CurrencyKey order by ProductKey 



  SELECT  [CurrencyKey] , Sum(SalesAmount) as 'Toplam Satış' 
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  Group by CurrencyKey

     SELECT  [ProductKey],[CurrencyKey] , Sum(SalesAmount) as 'Toplam Satış'
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  where CurrencyKey>6 
  Group by ProductKey,CurrencyKey 
  Having ProductKey >604
  order by CurrencyKey asc

      SELECT  [ProductKey],[CurrencyKey] , Avg(SalesAmount) as 'Toplam Satış'
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  where CurrencyKey>6 
  Group by ProductKey,CurrencyKey 
  Having ProductKey >604
  order by CurrencyKey asc


       SELECT  [ProductKey],
	   [CurrencyKey] , 
	   Sum(SalesAmount) as 'Toplam Satış', 
	   Count(SalesAmount) as 'Sayım',
	   Avg(SalesAmount) as 'Ortalama'
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  where CurrencyKey>6 
  Group by ProductKey,CurrencyKey 
  Having ProductKey >604
  order by CurrencyKey asc






