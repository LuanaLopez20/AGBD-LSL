/* Crear Base de Datos */

CREATE TABLE Clientes (
ClientesID INT PRIMARY KEY,
Nombre VARCHAR (50),
Apellido VARCHAR (50),
DNI INT)

CREATE TABLE Pedidos (
Pedidos INT PRIMARY KEY,
Fecha INT,
Hora INT,
Cantidad INT)

CREATE TABLE Galletitas (
GalletitasID INT PRIMARY KEY,
Categoria VARCHAR (50),
Relleno VARCHAR (50),
Precio INT)

CREATE TABLE Pagos (
PagosID INT PRIMARY KEY,
Monto INT,
Metodo_Pagos VARCHAR (50))

------------------------------
INSERT INTO Clientes (ClientesID, Nombre, Apellido, DNI)
VALUES ("1", "Luana", "Lopez", "48112558");

INSERT INTO Clientes (ClientesID, Nombre, Apellido, DNI)
VALUES ("2", "Karen", "Diaz", "48110978");

------------------------------
INSERT INTO Galletitas (GalletitasID, Categoria, Relleno, Precio)
VALUES ("1", "Vainilla", "Nutella", "$2.000");

INSERT INTO Galletitas (GalletitasID, Categoria, Relleno, Precio)
VALUES ("2", "Vainilla", "Bon o Bon", "$2.000");

INSERT INTO Galletitas (GalletitasID, Categoria, Relleno, Precio)
VALUES ("3", "Vainilla", "Sin relleno", "$1.500");

INSERT INTO Galletitas (GalletitasID, Categoria, Relleno, Precio)
VALUES ("4", "Chocolate", "Nutella", "$2.000");

INSERT INTO Galletitas (GalletitasID, Categoria, Relleno, Precio)
VALUES ("5", "Chocolate", "Bon o Bon", "$2.000");

INSERT INTO Galletitas (GalletitasID, Categoria, Relleno, Precio)
VALUES ("6", "Chocolate", "Sin relleno", "$1.500");

------------------------------
CREATE TABLE "" (
	"PagosID"	INTEGER NOT NULL,
	"Monto"	INTEGER NOT NULL,
	"Metodo_pagos"	TEXT NOT NULL,
	"GalletitasID"	INTEGER,
	FOREIGN KEY("GalletitasID") REFERENCES "Galletitas"("GalletitasID"),
	PRIMARY KEY("PagoId" AUTOINCREMENT)
);

------------------------------
INSERT INTO Pedidos (Pedidos, Hora, Fecha, Cantidad)
VALUES ("1", "17:59", "19/05/2025", "3");

INSERT INTO Pedidos (Pedidos, Hora, Fecha, Cantidad)
VALUES ("2", "20:03", "19/05/2025", "1");

INSERT INTO Pedidos (Pedidos, Hora, Fecha, Cantidad)
VALUES ("3", "09:20", "20/05/2025", "4");
