
-- String birleştirme ve takma isim(alias)

select e.employee_id,e.first_name || ' ' || e.last_name  from employees e

select e.employee_id as no,e.first_name || ' ' || e.last_name as full_name  from employees e


select e.first_name || ' ' || e.last_name as full_name  from employees e











