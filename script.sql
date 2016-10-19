﻿-- Centro Federal de Educação Tecnológica de Minas Gerais
-- Departamento de Engenharia da Computação - Lab. Engenharia de Software
-- Any+
-- SQL Database Script

create table Pessoa (
  idPESSOA INT NOT NULL,
  nomePESSOA VARCHAR (45) NOT NULL,
  emailPESSOA VARCHAR(45) NOT NULL,
  senhaPESSOA VARCHAR(45) NOT NULL,
  generoPESSOA VARCHAR(1),
  tipoPESSSOA INT NOT NULL,
  enderecoPESSOA VARCHAR(255) NOT NULL,
  bairroPESSOA VARCHAR(45) NOT NULL,
  complementoPESSOA VARCHAR(45),
  cidadePESSOA VARCHAR(45) NOT NULL,
  cepPESSOA VARCHAR(8) NOT NULL,
  ufPESSOA VARCHAR(2) NOT NULL,
  telefonePESSOA VARCHAR(10) NOT NULL,
  
  CONSTRAINT pk_Pessoa PRIMARY KEY (idPessoa)
);

create table Admin (
  idADMIN INT NOT NULL,
  idPESSOA INT,
  
  CONSTRAINT pk_Admin PRIMARY KEY (idADMIN),
  CONSTRAINT fk_AdminPessoa FOREIGN KEY (idPESSOA) REFERENCES Pessoa(idPESSOA) ON DELETE CASCADE
);

create table Petshop (
  idPET INT NOT NULL,
  idPESSOA INT,
  enderecoPET VARCHAR(255) NOT NULL,
  telefonePET VARCHAR(12),
  cnpjPET VARCHAR(14) NOT NULL,
  
  CONSTRAINT pk_Petshop PRIMARY KEY (idPET),
  CONSTRAINT fk_PetshopPessoa FOREIGN KEY (idPESSOA) REFERENCES Pessoa(idPESSOA) ON DELETE CASCADE
);

create table Servico (
  idSERVICO INT NOT NULL,
  nomeSERVICO VARCHAR(255),
  descSERVICO VARCHAR(255),
  
  CONSTRAINT pk_Servico PRIMARY KEY (idSERVICO)
);

create table Pet_Servico (
  idPET INT NOT NULL,
  idSERVICO INT NOT NULL,
  
  CONSTRAINT fk_PetServPetshop FOREIGN KEY (idPET) REFERENCES Petshop(idPET) ON DELETE CASCADE,
  CONSTRAINT fk_PetServServico FOREIGN KEY (idSERVICO) REFERENCES Servico(idSERVICO) ON DELETE CASCADE,
  CONSTRAINT pk_Pet_Servico PRIMARY KEY (idPET, idSERVICO)  
);

create table Usuario (
  idUSUARIO INT NOT NULL,
  idPESSOA INT,
  enderecoUSUARIO VARCHAR(255),
  telefoneUSUARIO VARCHAR(12),
  cpfUSUARIO VARCHAR(11),
  
  CONSTRAINT fk_UsuarioPessoa FOREIGN KEY (idPESSOA) REFERENCES Pessoa(idPESSOA) ON DELETE CASCADE,
  CONSTRAINT pk_Usuario PRIMARY KEY (idUSUARIO, idPESSOA)  
);

create table Raca_Animal (
  idRACA INT NOT NULL,
  nomeRACA VARCHAR(255),
  porteRACA VARCHAR(45) NOT NULL,
  observacaoRACA VARCHAR(255),
  CONSTRAINT pk_Raca_Animal PRIMARY KEY (idRACA)  
);

create table Animal (
  idANIMAL INT NOT NULL,
  idDONO INT,
  idRACA INT,
  nomeANIMAL VARCHAR(45),
  generoANIMAL VARCHAR(1) NOT NULL,
  
  CONSTRAINT pk_Animal PRIMARY KEY (idANIMAL),
  CONSTRAINT fk_AnimalPessoa FOREIGN KEY (idDONO) REFERENCES Pessoa(idPESSOA) ON DELETE CASCADE,
  CONSTRAINT fk_RacaAnimal FOREIGN KEY (idRACA) REFERENCES Raca_Animal(idRACA) ON DELETE CASCADE
);

create table Medicamento (
  idMEDICAMENTO INT NOT NULL,
  nomeMEDICAMENTO VARCHAR(255),
  descMEDICAMENTO VARCHAR(255),
  
  CONSTRAINT pk_Medicamento PRIMARY KEY (idMEDICAMENTO)  
);

create table Animal_Medicamento (
  idANIMAL INT NOT NULL,
  idMEDICAMENTO INT NOT NULL,
  periodicidadeMED INT,
  
  CONSTRAINT fk_AniMedAnimal FOREIGN KEY (idANIMAL) REFERENCES Animal(idANIMAL) ON DELETE CASCADE,
  CONSTRAINT fk_AniMedMedicamento FOREIGN KEY (idMEDICAMENTO) REFERENCES Medicamento(idMEDICAMENTO) ON DELETE CASCADE,
  CONSTRAINT pk_Animal_Medicamento PRIMARY KEY (idANIMAL, idMEDICAMENTO) 
);

create table Vacina (
  idVACINA INT NOT NULL,
  nomeVACINA VARCHAR(255),
  descVACINA VARCHAR(255),
  
  CONSTRAINT pk_Vacina PRIMARY KEY (idVACINA) 
);

create table Animal_Vacina (
  idANIMAL INT NOT NULL,
  idVACINA INT NOT NULL,
  periodicidadeVAC INT,
  
  CONSTRAINT fk_AniVacAnimal FOREIGN KEY (idANIMAL) REFERENCES Animal(idANIMAL) ON DELETE CASCADE,
  CONSTRAINT fk_AniVacVacina FOREIGN KEY (idVACINA) REFERENCES Vacina(idVACINA) ON DELETE CASCADE,
  CONSTRAINT pk_Animal_Vacina PRIMARY KEY (idANIMAL, idVACINA) 
);
