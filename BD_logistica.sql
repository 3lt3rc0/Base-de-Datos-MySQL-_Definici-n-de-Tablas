CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200) 
);

CREATE TABLE Envio (
    idEnvio INT PRIMARY KEY AUTO_INCREMENT,
    destino VARCHAR(100),
    estado VARCHAR(50),
    fechaEnvio DATE,
    fechaEntrega DATE
);

CREATE TABLE OrdenDeEnvio (
    idOrden INT PRIMARY KEY AUTO_INCREMENT,
    idEnvio INT,
    idCliente INT,
    FOREIGN KEY (idEnvio) REFERENCES Envio(idEnvio),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);
DESCRIBE cliente;
ALTER TABLE Clientes 
MODIFY COLUMN idCliente INT AUTO_INCREMENT PRIMARY KEY;

USE logistica;

CREATE TABLE IF NOT EXISTS Clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

