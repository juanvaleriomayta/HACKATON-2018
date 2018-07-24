----------------PASAJEROS----------------
/*PERMITE VISUALIZAR LA LISTA DE LOS DATOS DEL PASAJERO*/
CREATE VIEW LIST_PASAJEROS
AS
SELECT idPasajero,nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero
FROM Pasajero
GO




---------------------------BOLETA-------------------------
/*PERMITE VISUALIZAR LA LISTA DE LAS BOLETAS*/
CREATE VIEW LIST_BOLETAS
AS
SELECT idBoleta,costo
FROM Boleta
GO





-----------------------------FECHA TRANSPORTE---------------------------------
/*PERMITE VISUALIZAR LA LISTA DE LOS DATOS DEL PASAJERO*/
CREATE VIEW LIST_FECHATRANSPORTE
AS
SELECT idFechaTrans,fechaTrans
FROM FechaTransporte
GO




--------------------SERVICIOS-----------------------------
/*PERMITE VISUALIZAR LA LISTA DE LOS DATOS DEL PASAJERO*/
CREATE VIEW LIST_SERVICIOS
AS
SELECT idServicio,asientos,cantidad
FROM Servicios
GO

