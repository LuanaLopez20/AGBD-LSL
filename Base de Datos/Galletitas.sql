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