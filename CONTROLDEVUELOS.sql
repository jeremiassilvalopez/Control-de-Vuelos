CREATE DATABASE IF NOT EXISTS aeropuerto;
USE aeropuerto;

CREATE TABLE IF NOT EXISTS vuelos (
    codigo VARCHAR(10) NOT NULL,
    origen VARCHAR(50) NOT NULL,
    destino VARCHAR(50) NOT NULL,
    tipo ENUM('aterrizaje', 'despegue') NOT NULL,
    estado ENUM('esperando', 'en pista', 'finalizado') NOT NULL DEFAULT 'esperando',
    pista INT NULL
);
CREATE TABLE  IF NOT EXISTS pistas (
    id INT PRIMARY KEY,
    estado ENUM('disponible', 'ocupada') NOT NULL DEFAULT 'disponible'
);

CREATE TABLE IF NOT EXISTS controladores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    vuelo_codigo VARCHAR(10)
);

