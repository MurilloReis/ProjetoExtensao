USE VSB;		#Garantindo que o script utilize o banco de dados "VSB"

# Adicionando dados à tabela usuario

INSERT INTO VSB.usuario (email, senha, nome, dataNascimento, telefone)
VALUES
	('A.papaleo@aluno.ifsp.edu.br', 'senha123', 'André Papaleo', '2004-02-05', '123456789'),
	('F.cunegundes@aluno.ifsp.edu.br', 'senha456', 'Felipe Cunegundes', '2001-05-10', '987654321'),
	('Nascimento.matheus1@aluno.ifsp.edu.br', 'senha789', 'Matheus Nascimento', '2003-08-09', '940028922'),
	('Murillo.reis@aluno.ifsp.edu.br', 'senha777', 'Murillo Reis', '2004-04-11', '986278697');

# Adicionando dados à tabela caderno

INSERT INTO VSB.caderno (nome, ultimaModificacao, idUsuario)
VALUES
  ('Caderno A', NOW(), 1),
  ('Caderno B', NOW(), 2),
  ('Caderno C', NOW(), 3),
  ('Caderno D', NOW(), 4);

# Adicionando dados à tabela disciplina

INSERT INTO VSB.disciplina (nome, ultimaModificacao, idCaderno)
VALUES
  ('Matemática', NOW(), 1),
  ('Ciências', NOW(), 2),
  ('Geografia', NOW(), 3),
  ('Filosofia', NOW(), 4);

# Adicionando dados à tabela assunto

INSERT INTO VSB.assunto (nome, ultimaModificacao, idDisciplina)
VALUES
  ('Álgebra Linear', NOW(), 1),
  ('Algebra Não linear', NOW(), 1),
  ('Física Quântica', NOW(), 2),
  ('Química Orgânica', NOW(), 2),
  ('Geopolítica Mundial', NOW(), 3),
  ('Climas e Biomas', NOW(), 3),
  ('Ética e Moral', NOW(), 4),
  ('Lógica Filosófica', NOW(), 4);

# Adicionando dados à tabela pagina

INSERT INTO VSB.pagina (nome, ultimaModificacao, idAssunto)
VALUES
  ('Equações Lineares', NOW(), 1),
  ('Teoria do Caosassunto', NOW(), 2),
  ('Mecânica Quântica', NOW(), 3),
  ('Reações Orgânicas', NOW(), 4),
  ('Fronteiras Geopolíticas', NOW(), 5),
  ('Ecossistemas Terrestres', NOW(), 6),
  ('Teorias Éticas', NOW(), 7),
  ('Raciocínio Dedutivo', NOW(), 8);