BULK INSERT proyectos
   FROM 'e:\wwwroot\a1208033\proyectos.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )