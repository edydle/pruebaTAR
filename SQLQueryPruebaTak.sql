CREATE TABLE empleado (
    empleado_id INT PRIMARY KEY IDENTITY (1, 1),
    nombres VARCHAR (50) NOT NULL,
    apellidos VARCHAR (50) NOT NULL,
	estado_civil VARCHAR (50) NOT NULL,
	fecha_nacimiento DATETIME,
	grado_academico VARCHAR (50) NOT NULL,
	direccion VARCHAR (50) NOT NULL,
	telefono VARCHAR(20),
    create_at DATETIME,
	edit_at DATETIME,
    departamento_id INT NOT NULL,
    FOREIGN KEY (departamento_id) REFERENCES departamento (departamento_id)
);

CREATE TABLE departamento (
    departamento_id INT PRIMARY KEY IDENTITY (1, 1),
    nombre_departamento VARCHAR (50) NOT NULL,
    descripcion VARCHAR (50) NOT NULL,
    create_at DATETIME,
	edit_at DATETIME
);

insert into departamento 
values
('sistemas','Departamento de informatica',SYSDATETIME(),''),
('auditoria','Departamento de aditoria',SYSDATETIME(),'');


insert into empleado 
values
('Manuel','Estrada','casado','1990/06/14','Universidad','ciudad','55458545',SYSDATETIME(),'',2),
('Mario','Garcia','casado','1994/09/18','diversificado','mixco','58545956',SYSDATETIME(),'',3);

select * from departamento;
select * from empleado;