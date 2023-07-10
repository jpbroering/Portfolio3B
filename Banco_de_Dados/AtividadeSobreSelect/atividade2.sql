CREATE TABLE alunos(
  id_aluno serial,
  nome VARCHAR(50) not NULL,
  curso VARCHAR(100) not NULL,
  PRIMARY KEY(id_aluno)
  )
CREATE TABLE notas(
  id_nota serial,
  id_aluno_pk INT not NULL,
  nota DECIMAL(3,1) not NULL,
  PRIMARY KEY(id_nota),
  FOREIGN key(id_aluno_pk) REFERENCES alunos(id_aluno)
  )
  INSERT into alunos(nome, curso)
  VALUES('lahs', 'RI')
  INSERT INTO notas(id_aluno_pk, nota)
  VALUES(3, 4.9)
 
 SELECT nome, curso, AVG(notas.nota) as media_nota FROM alunos INNER join notas on alunos.id_aluno = notas.id_aluno_pk group by alunos.nome, alunos.curso order by media_nota DESC;
