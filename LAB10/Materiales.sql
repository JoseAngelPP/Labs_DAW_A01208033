BULK INSERT materiales
   FROM 'e:\wwwroot\a1208033\materiales.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )