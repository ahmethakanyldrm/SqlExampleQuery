-- Group By - > Distinct ->Having
select distinct(c.Country) from Customers c order by c.Country
select distinct c.Country, c.City from Customers c order by c.Country

select c.Country , COUNT(*) from Customers c group by c.Country

select c.Country ,c.City, COUNT(*) from Customers c group by c.Country,c.City

-- End Group By - > Distinct ->Having

-- Joinler -> inner Join
select c.Country ,c.City, COUNT(*) 
from Customers c
where c.City <>'Nantes'
group by c.Country,c.City 
having count(*)>1 
order by c.Country

select * from Products p 
inner join Categories c 
on p.CategoryID=c.CategoryID 

select * from Products p 
inner join Categories c 
on p.CategoryID=c.CategoryID 
where p.UnitPrice>50 
order by c.CategoryID


-- Birden Çok Tabloyla Çalýþma
-- Product - Order -Order Details

select * from Products p 
inner join [Order Details] od 
on  p.ProductID=od.ProductID 
inner join Orders o 
on o.OrderID=od.OrderID

-- p.ProductName,o.OrderDate,od.Quantity*od.UnitPrice as Total

select p.ProductName,o.OrderDate,od.Quantity*od.UnitPrice 
as Total 
from Products p 
inner join [Order Details] od 
on  p.ProductID=od.ProductID 
inner join Orders o 
on o.OrderID=od.OrderID


select p.ProductName,o.OrderDate,od.Quantity*od.UnitPrice 
as Total 
from Products p 
inner join [Order Details] od 
on  p.ProductID=od.ProductID 
inner join Orders o 
on o.OrderID=od.OrderID
order by p.ProductName,o.OrderDate
-- End Joinler -> inner Join

-- Left Join 

select * from Products p left join [Order Details] od
on p.ProductID =od.ProductID
where od.ProductID  is null

select * from Customers c left join Orders o 
on c.CustomerID=o.CustomerID



select * from Customers c right join Orders o 
on c.CustomerID=o.CustomerID
where o.CustomerID  is null
--End Left Join 



--Right Join 

select * from Orders o right join Customers c
on o.CustomerID=c.CustomerID
where o.CustomerID  is null

select * from Customers c right join Orders o 
on c.CustomerID=o.CustomerID



select * from Customers c right join Orders o 
on c.CustomerID=o.CustomerID
where o.CustomerID  is null

--End Right Join 



-- Full Join 

select * from Customers c full join Orders o
on o.CustomerID=c.CustomerID



-- End Full Join 
















