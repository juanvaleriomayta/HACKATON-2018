CREATE DATABASE Transporte
GO
use Transporte
GO
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

/*insert into Boleta*/
insert INTO Boleta(costo) VALUES('S/.50');
insert INTO Boleta(costo) VALUES('S/.20');
insert INTO Boleta(costo) VALUES('S/.55');
insert INTO Boleta(costo) VALUES('S/.44');
insert INTO Boleta(costo) VALUES('S/.99');



/*insert into Fecha Transporte*/
insert INTO FechaTransporte(fechaTrans,horaPratida)VALUES('12-12-2015','08:00am');
insert INTO FechaTransporte(fechaTrans,horaPratida)VALUES('12-12-2017','09:00am');
insert INTO FechaTransporte(fechaTrans,horaPratida)VALUES('10-10-2016','10:00am');
insert INTO FechaTransporte(fechaTrans,horaPratida)VALUES('11-11-2012','11:00am');
insert INTO FechaTransporte(fechaTrans,horaPratida)VALUES('10-05-2010','05:00am');




/*insert into Pasajero*/
insert INTO Pasajero(nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero)VALUES('jhon','carlens','fffff','236589652365','DNI','2152396896','lima','29','callao');
insert INTO Pasajero(nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero)VALUES('jose','suarez','fffff','236500052365','DNI','2002365896','ica','29','pisco');
insert INTO Pasajero(nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero)VALUES('saul','gonzales','fffff','236589601265','DNI','2152365896','lima','29','ica');
insert INTO Pasajero(nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero)VALUES('jose','carlens','fffff','236589652665','DNI','2152302596','pisco','29','pisco');
insert INTO Pasajero(nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero)VALUES('cesar','carlens','fffff','625589652365','DNI','0052365896','chincha','29','lima');
insert INTO Pasajero(nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero)VALUES('juan','parma','fffff','239869952365','DNI','2152377896','lima','29','pisco');


/*insert into servicios*/
INSERT INTO servicios(asientos,cantidad) VALUES('24','2');
INSERT INTO servicios(asientos,cantidad) VALUES('60','2');
INSERT INTO servicios(asientos,cantidad) VALUES('20','1');
INSERT INTO servicios(asientos,cantidad) VALUES('19','2');
INSERT INTO servicios(asientos,cantidad) VALUES('26','1');
