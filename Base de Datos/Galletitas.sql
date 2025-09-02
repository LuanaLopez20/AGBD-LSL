/* Crear Base de Datos */

CREATE TABLE "Clientes" (
	"ClientesID"	INTEGER,
	"Nombre"	VARCHAR(50) NOT NULL,
	"Apellido"	VARCHAR(50) NOT NULL,
	"DNI"	INT NOT NULL UNIQUE,
	PRIMARY KEY("ClientesID" AUTOINCREMENT)
);

CREATE TABLE "Pedidos" (
	"PedidosID"	INTEGER,
	"Fecha" INT NOT NULL,
	"Hora" INT NOT NULL,
	"Cantidad" INT NOT NULL,
	"ClientesID" INTEGER NOT NULL,
	"PagosID" INTEGER NOT NULL,
	"GalletitasID" INTEGER NOT NULL,
	FOREIGN KEY("ClientesID") REFERENCES Clientes("ClientesID"),
	FOREIGN KEY("PagosID") REFERENCES Pagos("PagosID"),
	FOREIGN KEY("GalletitasID") REFERENCES Galletitas("GalletitasID"),
	PRIMARY KEY("PedidosID" AUTOINCREMENT)
);

CREATE TABLE "Galletitas" (
	"GalletitasID"	INTEGER,
	"Relleno"	VARCHAR(50) NOT NULL,
	"Precio"	INT NOT NULL,
	PRIMARY KEY("GalletitasID" AUTOINCREMENT)
);

CREATE TABLE "Pagos" (
	"PagosID"	INTEGER,
	"Monto"	INT NOT NULL,
	"Metodo_Pagos"	VARCHAR(50) NOT NULL,
	PRIMARY KEY("PagosID" AUTOINCREMENT)
);

CREATE TABLE "Categorias" (
	"CategoriaID"	INTEGER,
	"Gusto"	VARCHAR(50) NOT NULL,
	FOREIGN KEY("CategoriaID") REFERENCES "Categorias"("CategoriaID"),
	PRIMARY KEY("GalletitasID" AUTOINCREMENT)
);

CREATE TABLE "Sabores" (
	"SaboresID"	INTEGER,
	"CategoriaID" INTEGER NOT NULL,
	"GalletitasID" INTEGER NOT NULL,
	FOREIGN KEY("CategoriaID") REFERENCES Categorias("CategoriaID"),
	FOREIGN KEY("GalletitasID") REFERENCES Galletitas("GalletitasID"),
	PRIMARY KEY("SaboresID" AUTOINCREMENT)
);
------------------------------
CREATE TABLE "Metodo_Pagos" (
	"PagosID"	INTEGER,
	"Metodo_PagosID"	INTEGER,
	"Nombre"	VARCHAR(50) NOT NULL,
	FOREIGN KEY("Metodo_PagosID") REFERENCES "Metodo_Pagos"("Metodo_PagosID"),
	PRIMARY KEY("PagosID" AUTOINCREMENT)
);
------------------------------
INSERT INTO Metodo_Pagos(PagosID, Nombre)
VALUES (1, "Efectivo"), (2, "Tranferencia"),(3, "Tarjeta");
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
INSERT INTO Galletitas (Relleno, Precio)
VALUES("Nutella", "$2.000"),
("Bon o Bon", "$2.000"),
("Sin relleno", "$1.500"),
("Crema Oreo", "$2.000"),
("Mermelada", "$1.500");
------------------------------
INSERT INTO Categorias (Gusto)
VALUES ("Vainilla"),
 ("Chocolate"),
 ("Avena"),
 ("Oreo"),
 ("Fruta");
------------------------------
INSERT INTO Pedidos (Hora, Fecha, Cantidad)
VALUES ("17:59", "19/05/2025", "3"),
 ("20:03", "19/05/2025", "1"),
 ("09:20", "20/05/2025", "4"),
 ("09:29", "20/05/2025", "2"),
 ("13:33", "20/05/2025", "5"),
 ("19:57", "20/05/2025", "2"),
 ("23:16", "20/05/2025", "1"),
 ("06:08", "21/05/2025", "6"),
 ("11:27", "21/05/2025", "3"),
 ("13:42", "21/05/2025", "2");
------------------------------
INSERT INTO Sabores(CategoriaID,GalletitasID)
VALUES(1,1), (1,2), (1,3), (1,4), (1,5), 
(2,1), (2,2), (2,3), (2,4), (2,5), 
(3,1), (3,3), 
(4,1), (4,2), (4,3), (4,4), 
(5,3), (5,5)
------------------------------
CREATE TABLE "" (
	"PagosID"	INTEGER NOT NULL,
	"Monto"	INTEGER NOT NULL,
	"Metodo_pagos"	TEXT NOT NULL,
	"GalletitasID"	INTEGER NOT NULL,
	FOREIGN KEY("GalletitasID") REFERENCES "Galletitas"("GalletitasID"),
	PRIMARY KEY("PagoId" AUTOINCREMENT)
);

/*Para que sirve y a quien le venderia mi base de datos
Esta base de datos sirve para un emprendimiento de galletitas que no tienen un local
ayuda a controlar la cantidad de galletitas que pide cada cliente, muestra los precios de todas
la galetitas que venden, la informacion de lo clientes.

Se la venderia a un empredimiento que recien arranca y no sabe como organizar 
los pedidos y precios.*/