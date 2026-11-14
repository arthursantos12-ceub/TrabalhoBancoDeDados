# Inscrições na Semana de Tecnologia: Entrega parcial (T1 e T2)

## Integrantes
- Nome Completo 1 - Matrícula
- Nome Completo 2 - Matrícula

## Ambiente
- PostgreSQL 16.x (resultado de SELECT version())
- Cliente: pgAdmin 4 (duas janelas de Query Tool)
- Banco: lab_projeto | Esquema: lab_inscricoes

## Como executar
1. Criar o banco: CREATE DATABASE lab_projeto;
2. Conectar em lab_projeto e rodar, nesta ordem:
   - sql/01_estrutura.sql
   - sql/02_dados.sql
   - sql/04_transacoes.sql (T1)
   - sql/05_concorrencia.sql (T2, seguir a ordem A/B indicada no arquivo)

## Resumo dos resultados
- T1: ROLLBACK desfez a alteração; COMMIT tornou permanente.
- T2: duas inscrições ativas para capacidade 1.

## Diagnóstico inicial
(texto explicando a condição de corrida)

## Dúvidas e erros observados
- (lista)
