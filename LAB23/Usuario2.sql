SELECT *
FROM CLIENTES_BANCA

-- ¿Que pasa cuando deseas realizar esta consulta?
-- Se realiza correctamente

BEGIN TRANSACTION PRUEBA2
INSERT INTO CLIENTES_BANCA VALUES ('004', 'Ricardo Rios Maldonado', 19000);
INSERT INTO CLIENTES_BANCA VALUES ('005', 'Pablo Ortiz Arana', 15000);
INSERT INTO CLIENTES_BANCA VALUES ('006', 'Luis Manuel Alvarado', 18000);

SELECT *
FROM CLIENTES_BANCA
where NoCuenta = '001'

-- Explica por qué ocurre dicho evento.
-- AL estar en la segunda sesión la transacción sigue en proceso y se realiza la consulta correctamente.

ROLLBACK TRANSACTION PRUEBA2

SELECT *
FROM CLIENTES_BANCA

-- ¿Qué ocurrió y por que?
-- Ya que a la transacción Prueba2 se le hizo ROLLBACK y se "canceló", no se muestran los ultimos registros

