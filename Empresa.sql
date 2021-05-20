-- Create a new table called 'Funcionarios' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Funcionarios', 'U') IS NOT NULL
DROP TABLE dbo.Funcionarios
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Funcionarios
(
  FuncionariosId INT NOT NULL PRIMARY KEY, -- primary key column
  Nome [NVARCHAR](50) NOT NULL,
  Local [NVARCHAR](50) NOT NULL
  -- specify more columns here
);
GO 

--Inserindo rows na table 'Funcionarios'
INSERT INTO Funcionarios 
([FuncionariosId], [Nome], [Local])
VALUES 
   ( 1, N'Jared', N'Australia'),
   ( 2, N'Nikita', N'India'),
   ( 3, N'Tom', N'Germany'),
   ( 4, N'Jake', N'United States') 
   GO 

   --Query quantidade de funcionarios 
   SELECT COUNT(*) as FuncionarioCount FROM dbo.Funcionarios;

   --Query com informações dos funcionarios
   SELECT e.FuncionariosId, e.Nome, e.Local 
   FROM dbo.Funcionarios as e 
   GO
