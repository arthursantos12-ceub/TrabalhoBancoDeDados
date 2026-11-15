-- Objetivo: criar o esquema, as tabelas e as restrições do sistema de
--           inscrições da Semana de Tecnologia.

CREATE SCHEMA lab_inscricoes;
SET search_path TO lab_inscricoes, public;
-- 1)
--a Tabela ATIVIDADES

CREATE TABLE atividades (
  id_atividade INTEGER PRIMARY KEY,
  nome         TEXT    NOT NULL,
  capacidade   INTEGER NOT NULL CHECK (capacidade > 0)
);


--b Tabela ESTUDANTES

CREATE TABLE estudantes (
  id_estudante INTEGER PRIMARY KEY,
  nome         TEXT NOT NULL
);
--c Tabela INSCRICOES 

CREATE TABLE inscricoes (
  id_inscricao INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  id_estudante INTEGER NOT NULL REFERENCES estudantes(id_estudante),
  id_atividade INTEGER NOT NULL REFERENCES atividades(id_atividade),
  situacao     TEXT    NOT NULL CHECK (situacao IN ('ativa','cancelada'))
);
-- 2) Impedir que um aluno tenha duas inscrições ativas ao mesmo tempo
--  fazendo uma criação de índice único.
-- Aplica-se à tabela inscricoes 
-- Assim, o estudante 1 não pode ter duas inscrições ativas na mesma oficina, 
--mas pode ter inscrições antigas canceladas.

CREATE UNIQUE INDEX uq_inscricao_ativa
ON lab_inscricoes.inscricoes (id_estudante, id_atividade)
WHERE situacao = 'ativa';