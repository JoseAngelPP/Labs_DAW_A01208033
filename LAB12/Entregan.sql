  INSERT INTO Materiales values(1000, 'xxx', 1000) 
  select * 
  FROM Materiales

  Delete from Materiales where Clave = 1000 and Costo = 1000 

  ALTER TABLE Materiales add constraint llaveMateriales PRIMARY KEY (Clave) 
  INSERT INTO Materiales values(1000, 'xxx', 1000) 
  sp_helpconstraint materiales
  
   ALTER TABLE Proveedores add constraint llaveProveedores PRIMARY KEY (RFC) 
   --ALTER TABLE Proyectos add constraint llaveProyectos PRIMARY KEY (Numero) 
   ALTER TABLE Entregan add constraint llaveEntregan PRIMARY KEY (Clave, RFC, Numero, Fecha)

   select * 
  FROM Proyectos

  --Los datos de la tabla se duplicaron, elimine la tabala para poder crear la de nuevo y cargar los datos de cero.

  drop table Proyectos

  CREATE TABLE Proyectos 
( 
  Numero numeric(5) not null, 
  Denominacion varchar(50) 
) 

BULK INSERT [Proyectos] 
  FROM 'e:\wwwroot\a1208033\Proyectos.csv' 
  WITH 
  ( 
    CODEPAGE = 'ACP', 
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n' 
  ) 


  ALTER TABLE Proyectos add constraint llaveProyectos PRIMARY KEY (Numero) 

---Ejercicio 3

select * from Entregan
select * from Materiales
select * from Proveedores
select * from Proyectos

INSERT INTO entregan values (0, 'xxx', 0, '1-jan-02', 0)
Delete from Entregan where Clave = 0 
ALTER TABLE entregan add constraint cfentreganclave 
  foreign key (clave) references materiales(clave)
  
  ALTER TABLE entregan add constraint cfentreganRFC 
  foreign key (RFC) references Proveedores(RFC)
  
  ALTER TABLE entregan add constraint cfentreganNumero 
  foreign key (Numero) references Proyectos(Numero) 

sp_helpconstraint Entregan
sp_helpconstraint Materiales 
sp_helpconstraint Proveedores
sp_helpconstraint Proyectos

--Ejercicio 4

INSERT INTO entregan values (1000, 'AAAA800101', 5000, GETDATE(), 0) 
Delete from Entregan where Cantidad = 0 
ALTER TABLE entregan add constraint cantidad check (cantidad > 0)