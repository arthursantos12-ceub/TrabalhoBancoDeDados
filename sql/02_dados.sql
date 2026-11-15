-- Objetivo: popular o banco com dados fictícios.

SET search_path TO lab_inscricoes, public;


-- 2)
--a População da tabela ESTUDANTES 

INSERT INTO estudantes (id_estudante, nome)
VALUES
(1,  'Ana Silva'),
(2,  'Bruno Santos'),
(3,  'Carla Oliveira'),
(4,  'Daniel Souza'),
(5,  'Eduarda Lima'),
(6,  'Felipe Costa'),
(7,  'Gabriela Alves'),
(8,  'Henrique Martins'),
(9,  'Isabela Rocha'),
(10, 'Joao Pedro');


--b População da tabela ATIVIDADES

INSERT INTO atividades (id_atividade, nome, capacidade)
VALUES
(1, 'Oficina A - PostgreSQL', 1),
(2, 'Oficina B - Python', 5),
(3, 'Oficina C - Engenharia de Software', 10);

--c Algumas inscrições de exemplo

INSERT INTO inscricoes (id_estudante, id_atividade, situacao)
VALUES
(4, 2, 'ativa'),
(5, 2, 'ativa'),
(6, 3, 'ativa'),
(7, 3, 'ativa'),
(8, 3, 'cancelada');

-- Conferência (evidência A1): capacidade x inscrições ativas
SELECT a.id_atividade, a.nome, a.capacidade,
       COUNT(i.id_inscricao) FILTER (WHERE i.situacao = 'ativa') AS inscricoes_ativas
FROM lab_inscricoes.atividades a
LEFT JOIN lab_inscricoes.inscricoes i ON i.id_atividade = a.id_atividade
GROUP BY a.id_atividade, a.nome, a.capacidade
ORDER BY a.id_atividade;