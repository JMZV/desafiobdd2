--CREATE DATABASE desafio2caso2;
--\c desafio2caso2

CREATE TABLE curso (id SERIAL, nombre VARCHAR(30) NOT NULL, 
PRIMARY KEY (id));

CREATE TABLE profesor (id SERIAL, nombre VARCHAR(40) NOT NULL, departamento VARCHAR(20) NOT NULL, 
PRIMARY KEY (id));

CREATE TABLE alumno (rut VARCHAR(9), nombre VARCHAR(40) NOT NULL, id_curso INT, 
PRIMARY KEY (rut), FOREIGN KEY (id_curso) REFERENCES curso(id));

CREATE TABLE prueba (id SERIAL, puntaje SMALLINT,
id_profesor INT NOT NULL, id_alumno VARCHAR(9),
PRIMARY KEY (id), 
FOREIGN KEY (id_profesor) REFERENCES profesor(id),
FOREIGN KEY (id_alumno) REFERENCES alumno(rut) );   