create database practica_bd_cac;

create TABLE alumnos(
    id INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40),
    apellido VARCHAR(40),
    edad TINYINT,
    fecha TIMESTAMP,
    provincia VARCHAR(40),
    PRIMARY KEY(id)
);

insert into alumnos (
        id,
        nombre,
        apellido,
        edad,
        fecha,
        provincia
    )
VALUES ('Luciano','Flores',23,);
