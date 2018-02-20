BULK INSERT proveedores
   FROM 'e:\wwwroot\a1208033\proveedores.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )