--Seleccionar los empleados que únicamente son de California
select empleado.*,estado.Name from HumanResources.Employee rh
inner join Person.Person empleado
on empleado.BusinessEntityID = rh.BusinessEntityID
inner join Person.BusinessEntityAddress direccion
on direccion.BusinessEntityID = empleado.BusinessEntityID
inner join Person.Address pa
on pa.AddressID = direccion.AddressID
inner join Person.StateProvince estado
on estado.StateProvinceID = pa.StateProvinceID
where estado.Name = 'California';
