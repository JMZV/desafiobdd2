--CREATE DATABASE desafio2;
--\c desafio2

CREATE TABLE departamento (id SERIAL, nombre VARCHAR(40) NOT NULL, PRIMARY KEY (id) );

CREATE TABLE trabajador (rut VARCHAR(9), nombre VARCHAR(40) NOT NULL, direccion VARCHAR(80), id_departamento INT NOT NULL, 
PRIMARY KEY (rut), FOREIGN KEY (id_departamento) REFERENCES departamento(id));

CREATE TABLE liquidaciones (id SERIAL, ubicacion VARCHAR(80), id_trabajador VARCHAR NOT NULL, 
PRIMARY KEY (id), FOREIGN KEY (id_trabajador) REFERENCES trabajador(rut));