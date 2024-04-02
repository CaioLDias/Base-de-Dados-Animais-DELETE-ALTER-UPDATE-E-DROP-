-- Criação da tabela Espécie
CREATE TABLE Espécie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descrição TEXT
);

-- Inserção de dados na tabela Espécie
INSERT INTO Espécie (id,nome, descrição) VALUES
(1,'Cão', 'Mamífero doméstico'),
(2,'Gato', 'Mamífero doméstico'),
(3,'Elefante', 'Mamífero selvagem');

CREATE TABLE Animal(
  id INT,
  nome varchar(60),
  data_nasc date,
  peso decimal(8,2),
  cor varchar(15),
  id_especie INT
  )
  
INSERT INTO Animal (id, nome, data_nasc, peso, cor,id_especie)
VALUES
  (1, 'Ágata', '2015-04-09', 13.9, 'branco',2),
  (2, 'Félix', '2016-06-06', 14.3, 'preto',2),
  (3, 'Tom', '2013-02-08', 11.2, 'azul',2),
  (4, 'Garfield', '2015-07-06', 17.1, 'laranja',2),
  (5, 'Frajola', '2013-08-01', 13.7, 'preto',2),
  (6, 'Manda-chuva', '2012-02-03', 12.3, 'amarelo',1),
  (7, 'Snowball', '2014-04-06', 13.2, 'preto',2),
  (10, 'Agata', '2015-08-03', 11.9, 'azul',3),
  (11, 'Gato de Botas', '2012-12-10', 11.6, 'amarelo',2),
  (12, 'Kitty', '2020-04-06', 11.6, 'amarelo',2),
  (13, 'Milu', '2013-02-04', 17.9, 'branco',2),
  (14, 'Pluto', '2012-01-03', 12.3, 'amarelo',1),
  (15, 'Pateta', '2015-05-01', 17.7, 'preto',1),
  (16, 'Snoopy', '2013-07-02', 18.2, 'branco',1),
  (17, 'Rex', '2019-11-03', 19.7, 'beje',1),
  (20, 'Bidu', '2012-09-08', 12.4, 'azul',1),
  (21, 'Dum Dum', '2011-02-03', 14.3, 'laranja',1),
  (22, 'Muttley', '2015-04-06', 11.2, 'laranja',1),
  (23, 'Scooby', '2012-01-02', 19.9, 'marrom',1),
  (24, 'Rufus', '2014-04-05', 19.7, 'branco',3),
  (25, 'Rex', '2021-08-19', 19.7, 'branco',3);
    
drop table Animal

select * from Animal

ALTER TABLE Animal
ADD COLUMN altura DECIMAL(5,2),
ADD COLUMN observacao TEXT;

UPDATE Animal
SET nome = 'Goofy'
WHERE nome = 'Pateta';

UPDATE Animal
SET peso = 10
WHERE nome = 'Garfield';

UPDATE Animal
SET cor = 'laranja'
WHERE id_especie = (SELECT id FROM Espécie WHERE nome = 'Gato');

DELETE FROM Animal
WHERE peso > 200;

DELETE FROM Animal
WHERE nome LIKE 'C%';

ALTER TABLE Animal
DROP COLUMN cor;

ALTER TABLE Animal
ALTER COLUMN nome VARCHAR(80);

DELETE FROM Animal
WHERE id_especie IN (SELECT id FROM Espécie WHERE nome IN ('Gato', 'Cão'));

ALTER TABLE Animal
DROP COLUMN data_nasc;

DELETE FROM Animal;

DROP TABLE Espécie;
