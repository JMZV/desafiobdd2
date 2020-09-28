-- CREATE DATABASE biblioteca;
--\c biblioteca
CREATE TABLE editorial (codigo SERIAL, nombre VARCHAR(50) NOt NULL, PRIMARY KEY (codigo));

CREATE TABLE autor (codigo INT, nombre VARCHAR(50) NOT NULL, PRIMARY KEY (codigo));

CREATE TABLE libro (codigo INT, titulo VARCHAR(100) NOT NULL, PRIMARY KEY (codigo));

CREATE TABLE lector (codigo SERIAL, nombre VARCHAR(50) NOT NULL, PRIMARY KEY (codigo));

CREATE TABLE prestado (id SERIAL, cod_libro INT NOT NULL, 
cod_lector INT NOT NULL, fecha_devolucion DATE NOT NULL, 
PRIMARY KEY (id), FOREIGN KEY (cod_libro) REFERENCES libro(codigo),
FOREIGN KEY (cod_lector) REFERENCES lector(codigo));

CREATE TABLE libroeditorial (cod_libro INT NOT NULL, cod_editorial INT NOT NULL, 
FOREIGN KEY (cod_libro) REFERENCES libro(codigo),
FOREIGN KEY (cod_editorial) REFERENCES editorial(codigo));

CREATE TABLE libroautor (cod_libro INT NOT NULL, cod_autor INT NOT NULL, 
FOREIGN KEY (cod_libro) REFERENCES libro(codigo),
FOREIGN KEY (cod_autor) REFERENCES autor(codigo));

