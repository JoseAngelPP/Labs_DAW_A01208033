----Procedimientos en tabla Materiales
IF EXISTS (SELECT name FROM sysobjects 
                       WHERE name = 'creaMaterial' AND type = 'P')
                DROP PROCEDURE creaMaterial
            GO
            
            CREATE PROCEDURE creaMaterial
                @uclave NUMERIC(5,0),
                @udescripcion VARCHAR(50),
                @ucosto NUMERIC(8,2),
                @uimpuesto NUMERIC(6,2)
            AS
                INSERT INTO Materiales VALUES(@uclave, @udescripcion, @ucosto, @uimpuesto)
            GO


SELECT * FROM Materiales

EXECUTE creaMaterial 5000,'Martillos Acme',250,15 

IF EXISTS (SELECT name FROM sysobjects 
						WHERE name = 'modificaMaterial' AND type = 'p')
						DROP PROCEDURE modificaMaterial

						GO

						CREATE PROCEDURE modificaMaterial 
						@uclave NUMERIC(5,0),
						@udescripcion VARCHAR(50),
						@ucosto NUMERIC(8,2),
						@uimpuesto NUMERIC(6,2)

					AS
						UPDATE Materiales
						SET Descripcion = @udescripcion , Costo = @ucosto , PorcentajeImpuesto = @uimpuesto 
						WHERE Clave = @uclave

						GO

EXECUTE modificaMaterial 5000,'Cantera verde', 400, 10

IF EXISTS (SELECT name FROM sysobjects 
						WHERE name = 'eliminaMaterial' AND type = 'p')
						DROP PROCEDURE eliminaMaterial

						GO

						CREATE PROCEDURE eliminaMaterial 
						@uclave NUMERIC(5,0)

					AS
						DELETE FROM Materiales 
						WHERE Clave = @uclave

						GO

EXECUTE eliminaMaterial 5000


----Procedimientos en tabla proyecto

select * from Proyectos

IF EXISTS (SELECT name FROM sysobjects 
                       WHERE name = 'creaProyecto' AND type = 'P')
                DROP PROCEDURE creaProyecto
            GO
            
            CREATE PROCEDURE creaProyecto
                @unumero NUMERIC(5,0),
                @udenominacion VARCHAR(50)
            AS
                INSERT INTO Proyectos VALUES(@unumero, @udenominacion)
            GO


SELECT * FROM Proyectos

EXECUTE creaProyecto 5020,'Vamos Mexico' 

IF EXISTS (SELECT name FROM sysobjects 
                       WHERE name = 'modificaProyecto' AND type = 'P')
                DROP PROCEDURE modificaProyecto
            GO
            
            CREATE PROCEDURE modificaProyecto
                @unumero NUMERIC(5,0),
                @udenominacion VARCHAR(50)
            AS
                UPDATE Proyectos
				SET Denominacion = @udenominacion
				WHERE Numero = @unumero
            GO


EXECUTE modificaProyecto 5020,'Aztecon'

IF EXISTS (SELECT name FROM sysobjects 
						WHERE name = 'eliminaProyecto' AND type = 'p')
						DROP PROCEDURE eliminaProyecto

						GO

						CREATE PROCEDURE eliminaProyecto 
						@unumero NUMERIC(5,0)

					AS
						DELETE FROM Proyectos 
						WHERE Numero = @unumero

						GO

EXECUTE eliminaProyecto 5020 

----Procedimiento para tabla Proveedores 

IF EXISTS (SELECT name FROM sysobjects 
                       WHERE name = 'creaProveedor' AND type = 'P')
                DROP PROCEDURE creaProveedor
            GO
            
            CREATE PROCEDURE creaProveedor
                @urfc NUMERIC(5,0),
                @urazonSocial VARCHAR(50)
            AS
                INSERT INTO Proveedores VALUES(@urfc, @urazonSocial)
            GO


SELECT * FROM Proveedores

EXECUTE creaProveedor 5000,'Prueba'

IF EXISTS (SELECT name FROM sysobjects 
						WHERE name = 'modificaProveedor' AND type = 'p')
						DROP PROCEDURE modificaProveedor

						GO

						CREATE PROCEDURE modificaProveedor 
						@urfc VARCHAR(50),
						@urazonSocial VARCHAR(50)
					AS
						UPDATE Proveedores
						SET RazonSocial = @urazonSocial  
						WHERE RFC = @urfc

						GO

EXECUTE modificaProveedor 5000,'prueba2'

IF EXISTS (SELECT name FROM sysobjects 
						WHERE name = 'eliminaProveedor' AND type = 'p')
						DROP PROCEDURE eliminaProveedor

						GO

						CREATE PROCEDURE eliminaProveedor
						@urfc VARCHAR(50)

					AS
						DELETE FROM Proveedores 
						WHERE RFC = @urfc

						GO

EXECUTE eliminaProveedor 5000

----Procedimiento para tabla entregan 
select * from Entregan

IF EXISTS (SELECT name FROM sysobjects 
                       WHERE name = 'creaEntrega' AND type = 'P')
                DROP PROCEDURE creaEntrega
            GO
            
            CREATE PROCEDURE creaEntrega
                @uclave NUMERIC(5,0),
                @urfc VARCHAR(50),
                @unumero NUMERIC(8,2),
                @ufecha DateTime,
				@ucantidad NUMERIC(5,0)
            AS
                INSERT INTO Entregan VALUES(@uclave, @urfc, @unumero, @ufecha, @ucantidad)
            GO


SELECT * FROM Entregan
 

IF EXISTS (SELECT name FROM sysobjects 
                       WHERE name = 'modificaEntrega' AND type = 'P')
                DROP PROCEDURE modificaEntrega
            GO
            
            CREATE PROCEDURE modificaEntrega
                @uclave NUMERIC(5,0),
                @urfc VARCHAR(50),
                @unumero NUMERIC(8,2),
                @ufecha DateTime,
				@ucantidad NUMERIC(5,0)
            AS
                UPDATE Entregan 
				SET RFC = @urfc, Numero = @unumero, Fecha = @ufecha, Cantidad = @ucantidad
            GO



IF EXISTS (SELECT name FROM sysobjects 
						WHERE name = 'eliminaEntrega' AND type = 'p')
						DROP PROCEDURE eliminaEntrega

						GO

						CREATE PROCEDURE eliminaEntrega
						@uclave NUMERIC(5,0)

					AS
						DELETE FROM Entregan 
						WHERE Clave = @uclave

						GO

EXECUTE eliminaMaterial 5000

-----------------------
 IF EXISTS (SELECT name FROM sysobjects 
                                       WHERE name = 'queryMaterial' AND type = 'P')
                                DROP PROCEDURE queryMaterial
                            GO
                            
                            CREATE PROCEDURE queryMaterial
                                @udescripcion VARCHAR(50),
                                @ucosto NUMERIC(8,2)
                            
                            AS
                                SELECT * FROM Materiales WHERE descripcion 
                                LIKE '%'+@udescripcion+'%' AND costo > @ucosto 
                            GO


EXECUTE queryMaterial 'Lad',20 

