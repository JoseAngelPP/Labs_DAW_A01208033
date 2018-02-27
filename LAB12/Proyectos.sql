BULK INSERT [Proyectos] 
  FROM 'e:\wwwroot\a1208033\Proyectos.csv' 
  WITH 
  ( 
    CODEPAGE = 'ACP', 
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n' 
  ) 