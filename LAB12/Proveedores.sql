BULK INSERT [Proveedores] 
  FROM 'e:\wwwroot\a1208033\Proveedores.csv' 
  WITH 
  ( 
    CODEPAGE = 'ACP', 
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n' 
  ) 