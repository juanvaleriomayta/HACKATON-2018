-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-07-24 14:26:38.148

-- tables
-- Table: Boleta
CREATE TABLE Boleta (
    idBoleta int  identity(1,1),
    costo varchar(100)  ,
    Pasajero_idPasajero int  ,
    CONSTRAINT Boleta_pk PRIMARY KEY  (idBoleta)
);

-- Table: FechaTransporte
CREATE TABLE FechaTransporte (
    idFechaTrans int  identity(1,1),
    fechaTrans date  ,
    horaPratida varchar(100)  ,
    Pasajero_idPasajero int  ,
    CONSTRAINT FechaTransporte_pk PRIMARY KEY  (idFechaTrans)
);

-- Table: Pasajero
CREATE TABLE Pasajero (
    idPasajero int  identity(1,1),
    nomPasajero varchar(100)  ,
    apePasajero varchar(100)  ,
    razsPasajero varchar(100)  ,
    rucPasajero char(12)  ,
    tipDocuPasajero varchar(100)  ,
    numDocu char(10)  ,
    origenPasajero varchar(100)  ,
    edadPasajero varchar(10)  ,
    destinoPasajero varchar(100)  ,
    FechaTransporte_idFechaTrans int  ,
    Boleta_idBoleta int  ,
    CONSTRAINT Pasajero_pk PRIMARY KEY  (idPasajero)
);

-- Table: Servicios
CREATE TABLE Servicios (
    idServicio int  identity(1,1),
    asientos varchar(100)  ,
    cantidad varchar(100)  ,
    Pasajero_idPasajero int  ,
    CONSTRAINT Servicios_pk PRIMARY KEY  (idServicio)
);

-- foreign keys
-- Reference: Boleta_Pasajero (table: Boleta)
ALTER TABLE Boleta ADD CONSTRAINT Boleta_Pasajero
    FOREIGN KEY (Pasajero_idPasajero)
    REFERENCES Pasajero (idPasajero);

-- Reference: FechaTransporte_Pasajero (table: FechaTransporte)
ALTER TABLE FechaTransporte ADD CONSTRAINT FechaTransporte_Pasajero
    FOREIGN KEY (Pasajero_idPasajero)
    REFERENCES Pasajero (idPasajero);

-- Reference: Pasajero_Boleta (table: Pasajero)
ALTER TABLE Pasajero ADD CONSTRAINT Pasajero_Boleta
    FOREIGN KEY (Boleta_idBoleta)
    REFERENCES Boleta (idBoleta);

-- Reference: Pasajero_FechaTransporte (table: Pasajero)
ALTER TABLE Pasajero ADD CONSTRAINT Pasajero_FechaTransporte
    FOREIGN KEY (FechaTransporte_idFechaTrans)
    REFERENCES FechaTransporte (idFechaTrans);

-- Reference: Servicios_Pasajero (table: Servicios)
ALTER TABLE Servicios ADD CONSTRAINT Servicios_Pasajero
    FOREIGN KEY (Pasajero_idPasajero)
    REFERENCES Pasajero (idPasajero);

-- End of file.

