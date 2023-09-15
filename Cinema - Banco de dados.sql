
CREATE TABLE Salas (
Id_sala integer PRIMARY KEY autoincrement ,
Nome_da_sala VARCHAR(50) ,
Capacidade int

)

CREATE TABLE Horarios (
Id_horario integer PRIMARY KEY autoincrement ,
Horario VARCHAR(50) 

)

CREATE TABLE filmes (
Id_filme integer PRIMARY KEY autoincrement ,
Nome_do_filme VARCHAR(50) ,
Nome_original VARCHAR(50) ,
Nome_do_diretor VARCHAR(50) ,
Ano_de_lançamento int ,
Genero VARCHAR(50) ,
Sinopse VARCHAR(800),
UNIQUE(Nome_do_filme,Ano_de_lançamento)
)

CREATE TABLE premiaçoes(
Id_filme integer,
nome_das_premiações varchar(100),
foreign key (Id_filme) references filmes(Id_filme)
)

CREATE TABLE sessões(
Id_sessão integer PRIMARY KEY autoincrement,
Id_sala integer,
Id_filme integer,
Id_Horario integer,
Data_Da_sessão varchar(15),
foreign key (Id_sala) references Salas(Id_sala)
foreign key (Id_filme) references filmes(Id_filme),
foreign key (Id_Horario) references Horarios(Id_Horario)

)

CREATE TABLE funcionarios (
Id_funcionario integer PRIMARY KEY autoincrement ,
Nome_do_funcionario VARCHAR(50) ,
Numero_CLT type UNIQUE ,
Data_Da_admissão varchar(20) ,
Salario varchar(20)

)

CREATE TABLE funçoes (
Id_função integer PRIMARY KEY autoincrement ,
Nome_do_função VARCHAR(50) 
)

CREATE TABLE Registro_de_funções(
Id_funcionario integer,
Id_função integer,
Id_Horario integer,
foreign key (Id_funcionario) references funcionarios(Id_funcionario),
foreign key (Id_função) references funçoes(Id_função),
foreign key (Id_Horario) references Horarios(Id_Horario)

)

-- inserindo valores em Salas

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('01', 50);

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('02', 50);

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('03', 50);

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('04', 35);

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('05', 35);

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('06', 35);

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('07', 70);

INSERT INTO Salas
(Nome_da_sala, Capacidade)
VALUES('08', 70);

--inserindo valores em Horarios

INSERT INTO Horarios
(Horario)
VALUES('16:00');

INSERT INTO Horarios
(Horario)
VALUES('17:00');

INSERT INTO Horarios
(Horario)
VALUES('18:00');

INSERT INTO Horarios
(Horario)
VALUES('19:30');

INSERT INTO Horarios
(Horario)
VALUES('20:00');

INSERT INTO Horarios
(Horario)
VALUES('22:00');

INSERT INTO Horarios
(Horario)
VALUES('23:00');


--inserindo valores em filmes

INSERT INTO filmes
(Nome_do_filme, Nome_original, Nome_do_diretor, Ano_de_lançamento, Genero, Sinopse)
VALUES('Avatar', 'Avatar', 'James Cameron', 2009, 'Ficção científica', 'No exuberante mundo alienígena de Pandora vivem os Navi, seres que parecem ser primitivos, mas são altamente evoluídos. Como o ambiente do planeta é tóxico, foram criados os avatares, corpos biológicos controlados pela mente humana que se movimentam livremente em Pandora. Jake Sully, um ex-fuzileiro naval paralítico, volta a andar através de um avatar e se apaixona por uma Navi. Esta paixão leva Jake a lutar pela sobrevivência de Pandora.');

INSERT INTO filmes
(Nome_do_filme, Nome_original, Nome_do_diretor, Ano_de_lançamento, Genero, Sinopse)
VALUES('titanic', 'titanic', 'James Cameron', 1998, 'Romance', 'Um artista pobre e uma jovem rica se conhecem e se apaixonam na fatídica viagem inaugural do Titanic em 1912. Embora esteja noiva do arrogante herdeiro de uma siderúrgica, a jovem desafia sua família e amigos em busca do verdadeiro amor.');

INSERT INTO filmes
(Nome_do_filme, Nome_original, Nome_do_diretor, Ano_de_lançamento, Genero, Sinopse)
VALUES('John Wick 4: Baba Yaga', 'John Wick 4: Baba Yaga', 'Chad Stahelski', 2023, 'Ação', 'Com o preço por sua cabeça cada vez maior, o lendário assassino de aluguel John Wick leva sua luta contra o High Table global enquanto procura os jogadores mais poderosos do submundo, de Nova York a Paris, do Japão a Berlim.');

INSERT INTO filmes
(Nome_do_filme, Nome_original, Nome_do_diretor, Ano_de_lançamento, Genero, Sinopse)
VALUES('Capitã Marvel', 'Captain Marvel', 'Anna Boden', 2019, 'Ação', 'Capitã Marvel é uma alienígena Kree que se encontra no meio de uma batalha entre seu povo e os Skrulls. Com a ajuda de Nick Fury, ela tenta impedir uma invasão na Terra, descobrir os segredos de seu passado e pôr um fim ao antigo conflito.');


--inserindo valores em premiaçoes

INSERT INTO premiaçoes
(Id_filme, nome_das_premiações)
VALUES(1, 'filme do ano');

INSERT INTO premiaçoes
(Id_filme, nome_das_premiações)
VALUES(2, 'filme do ano');

INSERT INTO premiaçoes
(Id_filme, nome_das_premiações)
VALUES(2, 'melhor atriz');

INSERT INTO premiaçoes
(Id_filme, nome_das_premiações)
VALUES(1, 'melhor diretor');

INSERT INTO premiaçoes
(Id_filme, nome_das_premiações)
VALUES(3, 'melhor filme de ação');



--inserindo valores em funcionarios

INSERT INTO funcionarios
(Nome_do_funcionario, Numero_CLT, Data_Da_admissão, Salario)
VALUES('Joao', 5267488, '23/08/2021', 'R$ 2.200,00');

INSERT INTO funcionarios
(Nome_do_funcionario, Numero_CLT, Data_Da_admissão, Salario)
VALUES('marcelo', 8945271, '15/02/2022', 'R$ 2.500,00');

INSERT INTO funcionarios
(Nome_do_funcionario, Numero_CLT, Data_Da_admissão, Salario)
VALUES('Marta', 8641395, '18/04/2023', 'R$ 1.800,00');

INSERT INTO funcionarios
(Nome_do_funcionario, Numero_CLT, Data_Da_admissão, Salario)
VALUES('Isabel', 7489251, '14/09/2019', 'R$ 2.300,00');

INSERT INTO funcionarios
(Nome_do_funcionario, Numero_CLT, Data_Da_admissão, Salario)
VALUES('Raquel', 6987423, '25/10/2022', 'R$ 2.700,00');

INSERT INTO funcionarios
(Nome_do_funcionario, Numero_CLT, Data_Da_admissão, Salario)
VALUES('Paulo', 9548261, '30/11/2020', 'R$ 2.800,00');


--inserindo valores em funções

INSERT INTO funçoes
(Nome_do_função)
VALUES('Baleiro');

INSERT INTO funçoes
(Nome_do_função)
VALUES('Bilheteiro');

INSERT INTO funçoes
(Nome_do_função)
VALUES('Caixa');

INSERT INTO funçoes
(Nome_do_função)
VALUES('Segurança');

INSERT INTO funçoes
(Nome_do_função)
VALUES('zelador');

INSERT INTO funçoes
(Nome_do_função)
VALUES('pipoqueiro');

INSERT INTO funçoes
(Nome_do_função)
VALUES('suporte de TI');


--inserindo valores em Registro de funçoes

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(2, 3, 2);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(4, 2, 5);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(5, 3, 4);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(6, 4, 4);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(3, 1, 3);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(1, 7, 6);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(2, 1, 1);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(4, 5, 7);

INSERT INTO Registro_de_funções
(Id_funcionario, Id_função, Id_Horario)
VALUES(1, 6, 3);

--inserindo valores em Registro de funçoes

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(1, 1, 1, '25/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(3, 1, 3, '14/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(2, 2, 5, '16/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(5, 1, 7, '10/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(4, 2, 2, '20/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(7, 2, 7, '14/09/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(6, 2, 6, '22/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(8, 1, 3, '11/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(1, 2, 4, '30/08/2023');

INSERT INTO sessões
(Id_sala, Id_filme, Id_Horario, Data_Da_sessão)
VALUES(1, 2, 1, '25/08/2023');

--filmes que estão em cartaz

SELECT DISTINCT  f.Nome_do_filme
FROM filmes f , sessões s 
WHERE f.Id_filme = s.Id_filme 


--filmes que não estao em cartaz
SELECT DISTINCT f.Nome_do_filme
FROM filmes f
WHERE f.Nome_do_filme NOT IN (
	SELECT DISTINCT  f.Nome_do_filme
	FROM filmes f , sessões s 
	WHERE f.Id_filme = s.Id_filme 
)

-- sessoes dos filmes que possuem a premiaçao de melhor filme

SELECT DISTINCT  s.Data_Da_sessão, f.Nome_do_filme  
FROM premiaçoes p , filmes f , sessões s 
where f.Id_filme = p.Id_filme and f.Id_filme = s.Id_filme  and p.nome_das_premiações = 'filme do ano' and f.Id_filme
 

--nome dos funcinarios e as funcoes do funcionarios que trabalharam na sessao do dia 25/08 do filme titanic

SELECT f.Nome_do_funcionario  , f3.Nome_do_função , s.Data_Da_sessão 
FROM funcionarios f ,sessões s , filmes f2 , Horarios h , funçoes f3 , Registro_de_funções rdf 
WHERE  f2.Id_filme = 2 and s.Id_filme = f2.Id_filme and s.Data_Da_sessão = '25/08/2023'  and s.Id_Horario = h.Id_horario and h.Id_horario = rdf.Id_Horario and rdf.Id_funcionario = f.Id_funcionario and rdf.Id_função = f3.Id_função 

--lista dos filmes e quantidade de premiaçoes que cada um tem


SELECT  f.Nome_do_filme , COUNT(p.nome_das_premiações) 
FROM filmes f , premiaçoes p 
WHERE f.Id_filme = p.Id_filme 
GROUP BY f.Id_filme 



--filmes sem premiaçoes

SELECT f.Nome_do_filme
FROM filmes f
WHERE f.Nome_do_filme NOT IN (
	SELECT  f.Nome_do_filme 
	FROM filmes f , premiaçoes p 
	WHERE f.Id_filme = p.Id_filme  
)

-- sessoes dos filmes que não possuem a premiaçao de filme do ano ou de melhor atriz

SELECT DISTINCT f.Nome_do_filme , s.Data_Da_sessão 
FROM premiaçoes p , filmes f , sessões s 
where f.Id_filme = p.Id_filme and f.Id_filme = s.Id_filme  and p.nome_das_premiações <> 'filme do ano' and p.nome_das_premiações <> 'melhor atriz' 
 

-- sessoes com premiaçao do tipo ''melhor''

SELECT DISTINCT f.Nome_do_filme , s.Data_Da_sessão 
FROM premiaçoes p , filmes f , sessões s 
where f.Id_filme = p.Id_filme and f.Id_filme = s.Id_filme  and p.nome_das_premiações LIKE '%melhor%'

SELECT * FROM premiaçoes p 