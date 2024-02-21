/* Ejercicio 2*/
/*Nivel de dificultad: Fácil*/
/*1. Crea una base de datos llamada "MiBaseDeDatos".*/
CREATE DATABASE MiBaseDeDatos;

/* 2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).*/
CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre TEXT (100) NOT NULL,
    edad INT (2)
);

/* 3. Inserta dos registros en la tabla "Usuarios".*/
INSERT INTO Usuarios (id, nombre, edad) 
VALUES
(1, 'Alberto', 25),
(2, 'Alvaro', 30);

/* 4. Actualiza la edad de un usuario en la tabla "Usuarios".*/
UPDATE Usuarios SET edad = 35 WHERE id = 1;

/*5. Elimina un usuario de la tabla "Usuarios".*/
DELETE FROM Usuarios WHERE id = 2;

/*Nivel de dificultad: Moderado*/
/* 1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE Ciudades (
    id INT PRIMARY KEY,
    nombre TEXT (100) NOT NULL,
    pais TEXT (15)
);

/* 2. Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO Ciudades (id, nombre, pais) 
VALUES
(1, 'Ciudad1', 'Pais1'),
(2, 'Ciudad2', 'Pais2'),
(3, 'Ciudad3', 'Pais3');

/* 3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".*/
ALTER TABLE Usuarios 
ADD COLUMN ciudad_id INT;

ALTER TABLE Usuarios 
ADD FOREIGN KEY (ciudad_id) REFERENCES Ciudades(id);

/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT Usuarios.nombre AS nombre_usuario, Ciudades.nombre AS nombre_ciudad, Ciudades.pais
FROM Usuarios
LEFT JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id;

/* 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).*/
SELECT Usuarios.nombre AS nombre_usuario, Ciudades.nombre AS nombre_ciudad, Ciudades.pais
FROM Usuarios
INNER JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id;