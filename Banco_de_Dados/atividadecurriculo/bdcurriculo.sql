CREATE TABLE Pessoa(
  nome VARCHAR(50) not null,
  data_nascimento DATE not null,
  cpf VARCHAR(14) not null,
  PRIMARY KEY (cpf)
  )
CREATE TABLE Curriculo(
  curso VARCHAR(100) not NULL,
  matricula VARCHAR(6),
  PRIMARY KEY (matricula)
  )
CREATE TABLE Empresa(
  id_pk serial,
  endereco VARCHAR(100) not NULL,
  nome VARCHAR(50) NOT NULL,
  avaliacao DECIMAL(2,1) not NULL,
  PRIMARY KEY(id_pk)
  )
  ALTER TABLE curriculo ADD COLUMN cpf_pessoa VARCHAR(14) not NULL
  ALTER TABLE curriculo add FOREIGN key(cpf_pessoa) REFERENCES pessoa(cpf)
  ALTER TABLE empresa ADD COLUMN matricula_curriculo VARCHAR(6) not NULL
  ALTER TABLE empresa ADD FOREIGN KEY(matricula_curriculo) REFERENCES curriculo(matricula)
  
  INSERT INTO pessoa(nome, data_nascimento, cpf)
  VALUES('joao','2006-06-13','12321321123645'),
  ('pedro','2000-07-23','12321307963645'),
  ('igor','1999-12-03','12321321104859'),
  ('paulo','2006-06-13','09856218123645')
  INSERT INTO curriculo(curso, matricula, cpf_pessoa)
  VALUES('administracao', 'kfas12','12321321123645'),
  ('eng mecanica', 'vjki65','12321307963645'),
  ('jornalismo', 'reon02','12321321104859'),
  ('ti', 'aasd10','09856218123645')
  INSERT INTO empresa(endereco,nome,avaliacao,matricula_curriculo)
  VALUES('rua prefeito reinoldo alves','engevix',4.2,'kfas12'),
  ('praca das bandeiras','intel',9.2,'vjki65'),
  ('passa vinte','mercado muller',7.2,'reon02'),
  ('rua paulo henrique','panificadora kipan',7.2,'aasd10')
  
  SELECT * FROM empresa