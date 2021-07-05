/*CREAR BASE DE DATOS*/
create database desafio_cac;
/*ARMAR LAS TABLAS PERTINENTEE CON SUS RESPECTIVAS CLAVES PRIMARIAS Y FORANEAS*/
/*CREAR LAS TABLAS (Aplicando forma normal)*/
create TABLE departamentos(
    id_departamento INTEGER NOT NULL,
    nombre_departamento VARCHAR(40),
    presupuesto DECIMAL,
    PRIMARY KEY(id_departamento)
);

create table empleados(
    id_empleado INTEGER NOT NULL AUTO_INCREMENT,
    dni_empleado VARCHAR(12),
    nombre_empleado VARCHAR(40),
    apellidos_empleado,
    departamento_id VARCHAR(60),
    departamento_id INT,
    primary key(id_empleado),
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id_departamento)
);

/*CARGAR LAS TABLAS*/

insert into departamentos (
        id_departamento,
        nombre_departamento,
        presupuesto
    )
VALUES (14, 'Informatica', 80000);

insert into departamentos (
        id_departamento,
        nombre_departamento,
        presupuesto
    )
VALUES (77, 'Investigacion', 40000);

insert into departamentos (
        id_departamento,
        nombre_departamento,
        presupuesto
    )
VALUES (15, 'Gestion', 95000);

insert into departamentos (
        id_departamento,
        nombre_departamento,
        presupuesto
    )
VALUES (37, 'Desarrollo', 65000);

insert into departamentos (
        id_departamento,
        nombre_departamento,
        presupuesto
    )
VALUES (16, 'Comunicacion', 75000);

/*--------------------------------------------------------------------------------------------------*/

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('31096678', 'Juan', 'Lopez', 14);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('31096675', 'Martin', 'Zarabia', 77);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('34269854', 'Jose', 'Velez', 77);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('41369852', 'Paula', 'Madariaga', 77);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('33698521', 'Pedro', 'Perez', 14);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('32698547', 'Mariana', 'Lopez', 15);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('42369854', 'Abril', 'Sanchez', 37);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('36125896', 'Marti', 'Julia', 14);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('36985471', 'Omar', 'Diaz', 15);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('32145698', 'Guadalupe', 'Perez', 77);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('32369854', 'Berdardo', 'Pantera', 37);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('36125965', 'Lucia', 'Pesaro', 14);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('31236985', 'Maria', 'Diamante', 14);

insert into empleados (
        dni_empleado,
        nombre_empleado,
        apellidos_empleado,
        departamento_id
    )
VALUES ('32698547', 'Carmen', 'Barbieri', 16);

/*--------------------------------------------------------------------------------------------------*/
/*EJERCICIOS PUNTO 2*/

/*2.1*/

SELECT apellidos_empleado
from empleados;

/*2.2 - Apellidos sin repetir*/

SELECT DISTINCT apellidos_empleado
from empleados;

/*2.3* - datos de empleado con apellido lopez*/

from empleados
WHERE apellidos_empleado = 'Lopez';

/*2.4*/

SELECT *
from empleados
where apellidos_empleado = 'Lopez'
    or apellidos_empleado = 'Perez';

/*2.5*/

SELECT *
from empleados
where departamento_id = '14';

/*2.6*/

SELECT *
from empleados
where departamento_id = '37'
    or departamento_id = '77';

/*2.7 - Apellidos que empiecen con p*/

SELECT *
from empleados
where apellidos_empleado LIKE 'p%';

/*2.8*/

SELECT SUM(presupuesto)
from departamentos;

/*2.9*/

SELECT *
from empleados as emp
    INNER join departamentos as dep on emp.departamento_id = dep.id_departamento;

/*2.10 - datos empleados con sus resp dptos*/

SELECT nombre_empleado,
    apellidos_empleado,
    nombre_departamento,
    presupuesto
from empleados as emp
    INNER join departamentos as dep on emp.departamento_id = dep.id_departamento;

/*2.11 - nombre y apellido de empleados que tengan un presupuestso mayor de 60000*/

SELECT nombre_empleado,
    apellidos_empleado
from empleados as emp
    INNER join departamentos as dep on emp.departamento_id = dep.id_departamento
WHERE dep.presupuesto > 60000;

/*2.12 - insertar nuevo dpto y nuevo empleado en ese dpto*/

insert into departamentos (
        id_departamento,
        nombre_departamento,
        presupuesto
    ) 
VALUES (11,'Calidad',40000);

insert into empleados (
       dni_empleado,
       nombre_empleado,
       apellidos_empleado,
       departamento_id
    ) 
VALUES ('89267109','Esther', 'Vazquez',11);

/*2.13 - ajuste de presupuesto atodos los dptos*/

UPDATE departamentos
set presupuesto = presupuesto - (presupuesto*0.10); 

/*2.14 - Reasignar empleados del dpto 77 al 14*/

update empleados
set departamento_id = 14
where departamento_id = 77;

/*2.15*/

DELETE FROM empleados WHERE departamento_id = 14;

/*2.16 despedir empleados que tengan presupuesto mayor a 90000*/

DELETE emp 
FROM empleados as emp 
inner join departamentos as dep on emp.departamento_id = dep.id_departamento 
where dep.presupuesto > 90000;

