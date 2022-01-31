-- Veri Filtrelemek

select * from employees e;

select 
e.employee_id,e.first_name,e.last_name,e.salary
from employees e
where e.employee_id=101

select 
e.employee_id,e.first_name,e.last_name,e.salary
from employees e
where e.employee_id<105

select 
e.employee_id,e.first_name,e.last_name,e.salary
from employees e
where e.employee_id >= 105

select 
e.employee_id,e.first_name,e.last_name,e.salary
from employees e
where e.employee_id<=105

select 
e.employee_id,e.first_name,e.last_name,e.salary
from employees e
where e.employee_id<>105



-- first name Bruce olanları getirmesin 
--hire date içerisinde o tairh içinde olmayanları getirsin

select e.employee_id, e.first_name,e.last_name 
from employees e 
where e.first_name <> 'Bruce'

select e.employee_id, e.first_name,e.last_name ,e.hire_date
from employees e 
where e.hire_date '1999-02-07 00:00:00' 
















































