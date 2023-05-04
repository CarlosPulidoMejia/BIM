--Empleados que están unicamente en el área de QA y Producción
select rh.BusinessEntityID, rh.*,departamento.Name from HumanResources.Employee rh 
inner join HumanResources.EmployeeDepartmentHistory historico
on rh.BusinessEntityID = historico.BusinessEntityID
inner join HumanResources.Department departamento
on departamento.DepartmentID = historico.DepartmentID
where departamento.Name in ('Quality Assurance', 'Production');