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
INSERT INTO Clientes (Nombre, Apellido, DNI)
VALUES ("Luana", "Lopez", "48112558"),
 ("Karen", "Diaz", "48110978"),
 ("Celeste", "Gonzalez", "47692550"),
 ("Ezequiel", "Mollano", "42658371"),
 ("Sebastian", "Troche", "48836925"),
 ("Alex", "Loiacono", "36918397"),
 ("Gonzalo", "Fernandez", "47274402"),
 ("Bianca", "Lopez", "46598207"),
 ("Adriana", "Mollano", "28392271"),
 ("Agustin", "Perez", "31427809");
------------------------------
INSERT INTO Galletitas (Categoria, Relleno, Precio)
VALUES ("Vainilla", "Nutella", "$2.000"),
 ("Vainilla", "Bon o Bon", "$2.000"),
 ("Vainilla", "Sin relleno", "$1.500"),
 ("Chocolate", "Nutella", "$2.000"),
 ("Chocolate", "Bon o Bon", "$2.000"),
 ("Chocolate", "Sin relleno", "$1.500"),
 ("Avena", "Sin relleno", "$1.500"),
 ("Oreo", "Sin relleno", "$1.500"),
 ("Oreo", "Crema Oreo", "$2.000"),
 ("Fruta", "Mermelada", "$1.500");
------------------------------
INSERT INTO Pedidos (Hora, Fecha, Cantidad)
VALUES ("17:59", "19/05/2025", "3");
 ("20:03", "19/05/2025", "1");
 ("09:20", "20/05/2025", "4");
 ("09:29", "20/05/2025", "2"),
 ("13:33", "20/05/2025", "5"),
 ("19:57", "20/05/2025", "2"),
 ("23:16", "20/05/2025", "1"),
 ("06:08", "21/05/2025", "6"),
 ("11:27", "21/05/2025", "3"),
 ("13:10", "21/05/2025", "2");
------------------------------
CREATE TABLE "" (
	"PagosID"	INTEGER NOT NULL,
	"Monto"	INTEGER NOT NULL,
	"Metodo_pagos"	TEXT NOT NULL,
	"GalletitasID"	INTEGER,
	FOREIGN KEY("GalletitasID") REFERENCES "Galletitas"("GalletitasID"),
	PRIMARY KEY("PagoId" AUTOINCREMENT)
);

/*Para que sirve y a quien le venderia mi base de datos
Esta base de datos sirve para un emprendimiento de galletitas que no tienen un local
ayuda a controlar la cantidad de galletitas que pide cada cliente, muestra los precios de todas
la galetitas que venden, la informacion de lo clientes.

Se la venderia a un emprediminto que recien arranca y no sabe como organizar 
los pedidos y precios.
*/