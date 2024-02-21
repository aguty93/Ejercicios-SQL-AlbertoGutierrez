/*Ejercicio 3
Nivel de dificultad: Difícil*/

/* 1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).*/
CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre TEXT (100) NOT NULL,
    precio NUMERIC (15)
);

/* 2. Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO Productos (id, nombre, precio) 
VALUES
(1, 'Producto1', 10.50),
(2, 'Producto2', 20.25),
(3, 'Producto3', 15.75),
(4, 'Producto4', 30.00),
(5, 'Producto5', 25.50);

/* 3. Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE Productos 
SET precio = 18.50 
WHERE id = 1;

/* 4. Elimina un producto de la tabla "Productos".*/
DELETE FROM Productos 
WHERE id = 5;

/* 5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").*/