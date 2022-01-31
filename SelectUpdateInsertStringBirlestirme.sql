use  [AdventureWorksDW2014]

select * from DimDate d

select d.EnglishDayNameOfWeek as 'Week' ,d.DayNumberOfWeek as 'WeekNum' from DimDate d

select  Sum(fs.UnitPrice) from FactInternetSales fs


-- ***************
select  * from FactInternetSales fs

select  * from FactInternetSales fs 
where fs.ProductKey=310


select  * from FactInternetSales fs 
where fs.ProductKey=310 and fs.CurrencyKey=19

select  * from FactInternetSales fs 
where fs.ProductKey=310 
and fs.CurrencyKey=19
and fs.CustomerKey=21768

select  * from FactInternetSales fs 
where fs.ProductKey=310 
or fs.ProductKey=346 

select * from DimProduct dp 
	where dp.EnglishProductName='Adjustable Race'

select * from DimProduct dp 
where dp.EnglishProductName='Adjustable Race' and dp.ProductKey=1

select * from DimProduct dp 
where dp.EnglishProductName in ('Adjustable Race','Bearing Ball','Blade')

select * from DimProduct dp 
where dp.EnglishProductName like '%A%'

select * from DimProduct dp 
where dp.EnglishProductName like 'R%'

select * from DimProduct dp 
where dp.EnglishProductName like 'R%' and dp.ProductKey>100

select * from DimProduct dp 
where dp.EnglishProductName not like 'R%' and dp.ProductKey>100

-- ***********************
insert into DimAccount
values(17,110,110,'Balance Sheet My Version','Assets','+',Null,'Currency',Null)


update DimEmployee 
set LastName='Mustaine' where EmployeeKey=1


update DimEmployee 
set LastName ='Hetfield' , MiddleName ='Jr.' 
where ParentEmployeeKey =112


-- *********************** 

SELECT TOP (1000) 
	  ([AccountDescription] + ' - ' + [AccountType]) as 'Birleþik Account Type', 
	  (Cast([AccountKey] as varchar) + ' - ' + [AccountDescription]) as 'Key Desc'
  FROM [AdventureWorksDW2014].[dbo].[DimAccount]

  SELECT TOP (1000) 
	  ([AccountDescription] + ' - ' + [AccountType]) as 'Birleþik Account Type', 
	  (Cast([AccountKey] as varchar) + ' - ' + [AccountDescription]) as 'Key Desc', 
	  (AccountCodeAlternateKey + 1000) as 'Yeni Maaþ'
  FROM [AdventureWorksDW2014].[dbo].[DimAccount]

























