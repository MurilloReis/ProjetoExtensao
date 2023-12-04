CREATE DATABASE VSB; #Criando o banco de dados
USE VSB;#Garantindo que o script utilize o banco de dados "VSB"

#CRIANDO TABELA "USER" PARA ARMAZENAR OS USUÁRIOS

CREATE TABLE VSB.usuario (
  idUsuario INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL,
  nome VARCHAR(255) NOT NULL,
  dataNascimento DATE NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  PRIMARY KEY (idUsuario),
  UNIQUE INDEX email_UNIQUE (email),
  UNIQUE INDEX idUsuario_UNIQUE (idUsuario),
  UNIQUE INDEX telefone_UNIQUE (telefone)
);

#CRIANDO TABELA "caderno" PARA ARMAZENAR AS DISCIPLINAS

CREATE TABLE VSB.caderno (
  idCaderno INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  ultimaModificacao DATETIME,
  idUsuario INT,														#FOREIGN KEY
  
  UNIQUE INDEX idCaderno_UNIQUE (idCaderno),
  PRIMARY KEY (idCaderno),
  FOREIGN KEY (idUsuario) REFERENCES VSB.usuario(idUsuario)
);

#CRIANDO TABELA "disciplina" PARA ARMAZENAR OS ASSUNTOS

CREATE TABLE VSB.disciplina (
  idDisciplina INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  ultimaModificacao DATETIME,
  idCaderno INT,														#FOREIGN KEY
  
  UNIQUE INDEX idDisciplina_UNIQUE (idDisciplina),
  PRIMARY KEY (idDisciplina),
  FOREIGN KEY (idCaderno) REFERENCES caderno(idCaderno)
);

#CRIANDO TABELA "assunto" PARA ARMAZENAR AS PAGINAS

CREATE TABLE VSB.assunto (
  idAssunto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  ultimaModificacao DATETIME,
  idDisciplina INT,														#FOREIGN KEY
  
  UNIQUE INDEX idAssunto_UNIQUE (idAssunto),
  PRIMARY KEY (idAssunto),
  FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina)
);

#CRIANDO TABELA "PAGINA" PARA ARMAZENAR OS TEXTOS

CREATE TABLE VSB.pagina (
  idPagina INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  ultimaModificacao DATETIME,
  idAssunto INT,														#FOREIGN KEY
  
  UNIQUE INDEX idPagina_UNIQUE (idPagina),
  PRIMARY KEY (idPagina),
  FOREIGN KEY (idAssunto) REFERENCES assunto(idAssunto)
);