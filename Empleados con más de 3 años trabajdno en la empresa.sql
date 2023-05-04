--Empleados con más de 3 años en la empresa que siguen trabajando, con nombre agrupado, genero y estado civil
select CONCAT(p.FirstName, ' ',p.LastName) as Empleado,
DATEDIFF(year, StartDate, GETDATE()) AS AñosTrabajados,
Case When Gender = 'M' then 'Hombre' When Gender = 'F' then 'Mujer'end AS Genero,
Case When MaritalStatus = 'S' then 'Soltero' When MaritalStatus = 'M' then 'Casado' end AS EstadoCivil
from HumanResources.Employee e 
inner join Person.Person p 
on e.BusinessEntityID = p.BusinessEntityID
inner join HumanResources.vEmployeeDepartmentHistory h
on e.BusinessEntityID = h.BusinessEntityID
where DATEDIFF(year, StartDate, EndDate) > 3  OR EndDate IS NULL
order by AñosTrabajados desc