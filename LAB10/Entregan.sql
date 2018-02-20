set dateformat dmy
BULK INSERT entregan
   FROM 'e:\wwwroot\a1208033\entregan.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )