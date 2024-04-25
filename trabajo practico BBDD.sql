create database EmpresaDevJav;
use  EmpresaDevJav;
create table departamento(
codDpto int,
nombreDpto varchar(20), 
ciudad varchar(20),
director int
);
create table empleado(
nDIEmp int,
nomEmp varchar(20),
sexEmp varchar(1),
fecNac date,
fecIncorporacion date,
salEmp int, 
comis int,
cargo varchar(20), 
nroDepto int
);
insert into departamento
 values (1000,"Gerencia","Buenos Aires", 31840269),
        (1990,"Recursos Humanos", "Lomas de Zamora", 200023456),
        (1203,"Marketing","Lanus", 13456783),
        (1590,"Comercial","Avellaneda", 09876432),
        (2000,"Finanzas","Buenos Aires", 45345654);
describe departamento;
select * from departamento;
 
insert into empleado 
values
 ('349986877', 'Rosa Aguero', 'F', '1999-04-25', '2020-04-25', '500000', '100000', 'Vendedora', '1590'),
 ('307029204', 'Roberto Diaz', 'M', '1978-02-19', '2006-01-20', '800000', '200000', 'Contador', '2000'),
 ('342024563', 'Miguel Perez', 'M', '1988-01-01', '2010-01-01', '900000', '200000', 'Comunity Manager', '1203'),
 ('202589878', 'Rosalia Rios', 'F', '1990-02-22', '2015-05-20', '1000000', '200000', 'Psicologa', '1990'),
 ('209706503', 'Giancarlo Tecca', 'M', '1989-08-17', '2010-05-01', '2000000', '0', 'Abogado', '1000'); 
 
 select * from empleado; 
 -- punto A: Obtener los nombres de los empleados
 select nomEmp from empleado;
 -- punto B: Mostrar los datos completos de los departamentos
 select * from departamento;
 -- punto C: Obtener los datos de empleados con cargo...
 select * from empleado where cargo = "Abogado";
 -- punto D: Mostrar la cantidad de empleados registrados
 select count(*) from empleado;
 -- punto E: Sacar un promedio de salarios de empleados
 select avg(salEmp) from empleado;
 -- punto F: Lista los nombres de los departamentos ordenados por ciudad
 
 select nombreDpto from departamento order by ciudad asc;
 -- punto G: Muestra un listado de salarios y comisiones de los empleados del departamento...
 
 select salEmp, comis from empleado where nroDepto = 2000;
 
 /* punto H: Calcular el valor a pagar a cada empleado si se realiza un incremento del 25%
en su salario más una bonificación de $20000, muestre una columna con el
salario actual, otra con el incremento y otra con la suma de todo */

select nomEmp, salEmp, 20000 AS bonificacion, salEmp * 0.25 AS incremento, salEmp + (salEmp * 0.25) + 20000 AS total
FROM empleado;

 -- punto I: Editar el salario realizando el incremento del punto anterior  
  UPDATE empleado SET salEmp = salEmp * 1.25;
  select * from empleado;
-- set sql_safe_updates = 0; (utilice este comando para desactivar el modo seguro)
-- punto J:  Modificar la ciudad _____ a la nueva ciudad _____
 UPDATE departamento SET ciudad = "Avellaneda" where ciudad = "Lanus";
 
 -- punto K: Hallar el salario del empleado con identificación...
 select salEmp from empleado where nDIEmp = 202589878;	
 
 -- punto I: Muestre empleados donde el nombre empiece con la letra A
 select * from empleado where nomEmp like "A%";
 
-- punto M: Liste los empleados que no tienen comisión
select * from empleado where comis = 0 or comis is null;

-- punto N_ Muestre los empleados cuyo sueldo supere _____ y que correspondan al departamento _______
select * from empleado where salEmp > 900000 && nroDepto = 1990;

-- punto O: Obtener el salario más alto y quien lo recibe
select nomEmp, salEmp from empleado where salEmp =(select max(salEmp) from empleado );

-- punto P El empleado _____ renunció, vamos a eliminar su registro
delete from empleado where nomEmp = "Miguel Perez";

select * from empleado;

 


 
 
 
 
 
       
 






