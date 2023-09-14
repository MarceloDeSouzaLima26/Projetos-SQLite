-- 1- criando a tabela tipos de atividade
 
 CREATE TABLE Tipo_De_Atividade(
Id_TipoDeAtividade integer primary key autoincrement,
Tipo_Da_Atividade varchar(20)

)

-- 2- criando a Tabela instrutores

CREATE TABLE Instrutores (
Id_instrutor integer PRIMARY KEY autoincrement ,
Nome_Do_Instrutor VARCHAR(50) ,
RG_Do_Instrutor int ,
Data_de_Nascimento varchar(15) ,
Endereço varchar(80) ,
titulação varchar(50)
)

-- 3- criando a Tabela Alunos

CREATE	TABLE Alunos(
RA integer PRIMARY KEY autoincrement ,
Nome_Do_Aluno varchar(50),
Endereço varchar(80) ,
Data_de_Nascimento varchar(15),
peso integer,
Quantidade_De_Turmas int,
Telefone int
)

 -- 4- criando a Tabela Turmas

CREATE	TABLE Turmas(
Id_Turma integer PRIMARY KEY autoincrement ,
Nome_da_Turma varchar (30),
Numero_De_Alunos INT(100),
Id_TipoDeAtividade integer,
Id_Instrutor integer ,
RA_Do_Monitor integer,
Data_de_Inicio varchar(15),
Data_de_encerramento varchar(15),
foreign key (Id_instrutor) references instrutores(Id_instrutor),
foreign key (RA_Do_Monitor) references Alunos(RA)
foreign key (Id_TipoDeAtividade) references Tipo_De_Atividade(Id_TipoDeAtividade)
)

-- 5- criando a Tabela Aulas
CREATE TABLE Aulas (
Id_Aula integer PRIMARY KEY autoincrement ,
Id_Turma integer,
Horario_da_Aula varchar(10),
duração_da_Aula varchar(15),
foreign key (Id_Turma) references Turmas(Id_Turma)

)

-- 6- criando a Tabela Monitaria

CREATE TABLE Monitoria(
RA integer,
Id_Turma integer,
Data_De_Inicio varchar(15),
Data_De_Encerramento varchar(15),
foreign key (RA) references Alunos(RA)
foreign key (Id_Turma) references Turmas(Id_Turma)

)

-- 7- criando a Tabela Ausencias

CREATE TABLE Ausencias(
RA integer,
Id_Turma integer,
Id_Aula integer,
data_da_ausencia varchar(15),
Justificativa varchar(500),
foreign key (RA) references Alunos(RA),
foreign key (Id_Turma) references Turmas(Id_Turma),
foreign key (Id_Aula) references Aulas(Id_Aula)

)

-- 8- criando a Tabela Lista_De_Alunos

CREATE TABLE Lista_De_Alunos(
Id_Turma integer,
RA integer,
foreign key (RA) references Alunos(RA),
foreign key (Id_Turma) references Turmas(Id_Turma)

)

-- 9- criando a tabela Tipo do contato
CREATE TABLE tipo_do_contato (
Id_TipoDoContato integer primary key autoincrement,
Descrição_de_TipoDeContato varchar(30)
)

-- 10- criando a tabela Contatos
CREATE TABLE Contatos (
Id_instrutor integer ,
Id_TipoDoContato integer,
Numero varchar(15),
foreign key (Id_instrutor) references Id_instrutor(Instrutores)
)

-- 11- Inserindo valores na tabela Tipo de contato
insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Celular')  

insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Fixo')  

insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Comercial')  

insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Telefone da Mãe')  

insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Telefone da Pai')  

insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Telefone do vizinho')  

insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Telefone da Esposa')  

insert INTO tipo_do_contato  (
Descrição_de_TipoDeContato 
) values ('Telefone do Marido')

-- 12- Inserindo valores na tabela Alunos

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Marcelo','Manaus, AM', '24/06/1997' , 84 ,6,92982504657)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('José','sao paulo, SP', '19/04/1995' , 80 ,6,92982508541)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Maria','Manaus, AM', '24/06/1997' , 84 ,6,92982504657)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Luciano','Manaus, AM', '24/06/1997' , 84 ,6,92982504657)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Lenon','Manaus, AM', '24/06/1997' , 84 ,6,92982504657)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Claudia','Manaus, AM', '24/06/1997' , 84 ,6,92982504657)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Luana','Manaus, AM', '24/06/1997' , 84 ,6,92982504657)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Silvio','Manaus, AM', '24/06/1997' , 84 ,6,92982504657)

insert INTO Alunos (
Nome_Do_Aluno  ,
Endereço ,
Data_de_Nascimento ,
peso ,
Quantidade_De_Turmas ,
Telefone
) values ('Guilherme','Manaus, AM', '27/06/1997' , 84 ,6,92982504657)

-- 13- inserindo valores na Tabela tipos de atividade

insert INTO Tipo_De_Atividade  (
Tipo_Da_Atividade 
) values ('Aerobica')

insert INTO Tipo_De_Atividade  (
Tipo_Da_Atividade 
) values ('Natação')

insert INTO Tipo_De_Atividade  (
Tipo_Da_Atividade 
) values ('Musculação')

-- 14- Inserindo valores na tabela Instrutores

insert INTO Instrutores  (
Nome_Do_Instrutor ,
RG_Do_Instrutor,
Data_de_Nascimento,
Endereço,
titulação
) values ('Paulo',378525967,'25/01/1989','Jundiai,SP','Professor')  

insert INTO Instrutores  (
Nome_Do_Instrutor ,
RG_Do_Instrutor,
Data_de_Nascimento,
Endereço,
titulação
) values ('Joao',378525982,'25/01/1992','Jundiai,SP','Professor')

-- 15- Inserindo valores na tabela Turmas

insert INTO Turmas  (
Numero_De_Alunos ,
Nome_da_Turma ,
Id_TipoDeAtividade ,
Id_Instrutor,
RA_Do_Monitor,
Data_de_Inicio,
Data_de_encerramento
) values (15,'Aero1',1,1,4,'25/05/2020','22/09/2020')

insert INTO Turmas  (
Numero_De_Alunos ,
Nome_da_Turma ,
Id_TipoDeAtividade ,
Id_Instrutor,
RA_Do_Monitor,
Data_de_Inicio,
Data_de_encerramento
) values (15,'Nat1',2,1,5,'27/05/2020','22/09/2020')

insert INTO Turmas  (
Numero_De_Alunos ,
Nome_da_Turma ,
Id_TipoDeAtividade ,
Id_Instrutor,
RA_Do_Monitor,
Data_de_Inicio,
Data_de_encerramento
) values (15,'Musc1',3,1,6,'29/05/2020','22/09/2020')

insert INTO Turmas  (
Numero_De_Alunos ,
Nome_da_Turma ,
Id_TipoDeAtividade ,
Id_Instrutor,
RA_Do_Monitor,
Data_de_Inicio,
Data_de_encerramento
) values (15,'Aero2',1,1,7,'26/05/2020','22/09/2020')

insert INTO Turmas  (
Numero_De_Alunos ,
Nome_da_Turma ,
Id_TipoDeAtividade ,
Id_Instrutor,
RA_Do_Monitor,
Data_de_Inicio,
Data_de_encerramento
) values (15,'Nat2',2,2,8,'14/05/2020','22/09/2020')

insert INTO Turmas  (
Numero_De_Alunos ,
Nome_da_Turma ,
Id_TipoDeAtividade ,
Id_Instrutor,
RA_Do_Monitor,
Data_de_Inicio,
Data_de_encerramento
) values (15,'Musc2',3,2,9,'17/05/2020','22/09/2020')

-- 16- Inserindo valores na tabela Aulas

insert INTO Aulas(
Horario_da_Aula ,
duração_da_Aula,
Id_Turma 
) values ('14:30 - 15:30','1 hora',2)

insert INTO Aulas(
Horario_da_Aula ,
duração_da_Aula,
Id_Turma 
) values ('14:30 - 16:30','2 horas',4)

-- 17- Inserindo valores na tabela Ausencias

insert INTO Ausencias  (
RA ,
Id_Turma ,
Id_Aula ,
data_da_ausencia ,
Justificativa 
) values (1,2,1,'29/05/2020','consulta médica')

-- 18- Inserindo valores na tabela Monitoria

insert INTO Monitoria  (
RA ,
Id_Turma ,
Data_De_Inicio,
Data_De_Encerramento 
) values (4,1,'15/06/2020','08/07/2020')

-- 19- Inserindo valores na tabela contatos

insert INTO Contatos (
Id_instrutor ,
Id_TipoDoContato ,
Numero 
) values (1,2,'11965475214')  

insert INTO Contatos (
Id_instrutor,
Id_TipoDoContato ,
Numero 
) values (1,1,'11965472314')  

insert INTO Contatos (
Id_instrutor,
Id_TipoDoContato ,
Numero 
) values (1,7,'115475214')  

insert INTO Contatos (
Id_instrutor,
Id_TipoDoContato ,
Numero 
) values (2,2,'11968725214')  

insert INTO Contatos (
Id_instrutor,
Id_TipoDoContato ,
Numero 
) values (2,1,'11965957114')










