phpMyAdmin
Crear tablas:

CREATE TABLE Clientes (
    ClientesID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    DNI INT NOT NULL UNIQUE
);

CREATE TABLE Galletitas (
    GalletitasID INT AUTO_INCREMENT PRIMARY KEY,
    Relleno VARCHAR(50) NOT NULL,
    Precio INT NOT NULL
);

CREATE TABLE Pedidos (
    PedidosID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Cantidad INT NOT NULL,
    ClientesID INT NOT NULL,
    PagosID INT NOT NULL,
    GalletitasID INT NOT NULL,
    FOREIGN KEY (ClientesID) REFERENCES Clientes(ClientesID),
    FOREIGN KEY (PagosID) REFERENCES Pagos(PagosID),
    FOREIGN KEY (GalletitasID) REFERENCES Galletitas(GalletitasID)
);

CREATE TABLE Categorias (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    Gusto VARCHAR(50) NOT NULL
);

CREATE TABLE Sabores (
    SaboresID INT AUTO_INCREMENT PRIMARY KEY,
    CategoriaID INT NOT NULL,
    GalletitasID INT NOT NULL,
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID),
    FOREIGN KEY (GalletitasID) REFERENCES Galletitas(GalletitasID)
);
CREATE TABLE Pagos (
   PagosID INT AUTO_INCREMENT PRIMARY KEY,
   Monto INT NOT NULL,
   Metodo_pagos TEXT NOT NULL,
   GalletitasID INT NOT NULL,
   FOREIGN KEY (GalletitasID) REFERENCES Galletitas(GalletitasID)
);

 CREATE TABLE Metodo_Pagos (
    Metodo_PagosID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
 );


Insertar información:

–Insertar datos en la tabla Clientes–
INSERT INTO Clientes (Nombre, Apellido, DNI)
VALUES 
("Luana", "Lopez", 48112558),
("Karen", "Diaz", 48110978),
("Celeste", "Gonzalez", 47692550),
("Ezequiel", "Mollano", 42658371),
("Sebastian", "Troche", 48836925),
("Alex", "Loiacono", 36918397),
("Gonzalo", "Fernández", 47274402),
("Bianca", "Lopez", 46598207),
("Adriana", "Mollano", 28392271),
("Agustin", "Perez", 31427809);



–Insertar datos en la tabla Galletitas–
INSERT INTO Galletitas (Relleno, Precio)
VALUES
("Nutella", 2000),
("Bon o Bon", 2000),
("Sin relleno", 1500),
("Crema Oreo", 2000),
("Mermelada", 1500);



–Insertar datos en la tabla Categorias–
INSERT INTO Categorias (Gusto)
VALUES
("Vainilla"),
("Chocolate"),
("Avena"),
("Oreo"),
("Fruta");


–Insertar datos en la tabla Pedidos–
INSERT INTO Pedidos (Hora, Fecha, Cantidad)
VALUES
("17:59", "2025-05-19", 3),
("20:03", "2025-05-19", 1),
("09:20", "2025-05-20", 4),
("09:29", "2025-05-20", 2),
("13:33", "2025-05-20", 5),
("19:57", "2025-05-20", 2),
("23:16", "2025-05-20", 1),
("06:08", "2025-05-21", 6),
("11:27", "2025-05-21", 3),
("13:42", "2025-05-21", 2);


–Insertar datos en la tabla Metodo_Pagos–
INSERT INTO Metodo_Pagos (PagosID, Nombre)
VALUES 
(1, "Efectivo"),
(2, "Transferencia"),
(3, "Tarjeta");


INSERT INTO Sabores (CategoriaID, GalletitasID)
VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5),
(3, 1), (3, 3),
(4, 1), (4, 2), (4, 3), (4, 4),
(5, 3), (5, 5);

