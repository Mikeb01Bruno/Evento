-- Criar BD
CREATE DATABASE Gerenciamento;

USE Gerenciamento;

-- Criar Tabela

CREATE TABLE Eventos(
 EventosID int auto_increment primary key,
 NomeEvento varchar(255) not null,
 Localizacao varchar(255) not null
);

CREATE TABLE Participantes (
 ParticipantesID int auto_increment primary key,
 NomeParticipante varchar (255) not null,
 Email varchar(255) not null,
 Telefone varchar(15)
);

CREATE Table InscricoesEventos(
 InscricaoID int auto_increment primary key,
 EventID int,
 PartID int,
 foreign key (EventID) references Eventos(EventosID),
 foreign key (PartID) references Participantes(ParticipantesID)
);

-- Inserindo Daddos Eventos

INSERT INTO Eventos (NomeEvento, Localizacao) VALUES
("Churrasco", "Rua Matheus Fagundes");

INSERT INTO Eventos (NomeEvento, Localizacao) VALUES
("Casamento", "Dendezerios");

INSERT INTO Eventos (NomeEvento, Localizacao) VALUES
("Casa do Tio", "Barreiras");

INSERT INTO Eventos (NomeEvento, Localizacao) VALUES
("Praia", "Barra");

INSERT INTO Eventos (NomeEvento, Localizacao) VALUES
("Aniversário", "Matatu");

-- Inserir Dados Participantes

INSERT INTO Participantes (NomeParticipante, Email, Telefone) VALUES
("Matheus", "matheus@gmail.com", "(11)1111-1111");

INSERT INTO Participantes (NomeParticipante, Email, Telefone) VALUES
("Lins", "LiNs@gmail.com", "(22)2222-2222");

INSERT INTO Participantes (NomeParticipante, Email, Telefone) VALUES
("Maria", "MaRis@gmail.com", "(33)3333-3333");

INSERT INTO Participantes (NomeParticipante, Email, Telefone) VALUES
("Belix", "BeLiX@gmail.com", "(44)4444-4444");

INSERT INTO Participantes (NomeParticipante, Email, Telefone) VALUES
("Rauls", "Rauls@gmail.com", "(55)5555-5555");

-- Select From
Select * From Eventos;
Select * From Participantes;

-- Select
Select 
E.NomeEvento as "Eventos ",
P.NomeParticipante as "Participantes "
from Participantes P
Inner Join InscricoesEventos I on P.ParticipantesID = I.PartID
Inner Join Eventos E on I.EventID = P.ParticipantesID;
