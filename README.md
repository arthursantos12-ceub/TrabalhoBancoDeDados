#Entrega parcial (T1 e T2)

## Integrantes
- Arthur Santos Lemos Reis - Matrícula
- Claudio Macedo Gama Filho - Matrícula
- Igor Gonçalves - Matrícula
- Thiago Ribeiro dos Santos Braziellas - Matrícula

## Ambiente
- PostgreSQL 18.7
- Cliente: pgAdmin 9
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
