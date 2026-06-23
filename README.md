# SQL_do_zero_ao_avancado
aprendendo na prática


Aula de hoje = Criar, renomear, algumas funções

DOCUMENTAÇÃO IMPORTANTE: (https://sqlite.org/docs.html)



/
--Novas colunas: devo ter cuidado na vígura e o FROM  deve vir na sequência;

ex:

SELECT IdCliente,
    QtdePontos,
    QtdePontos + 10 AS QtdePontosPlus10,
    QtdePontos * 2 AS QtdePontosDouble,   -- ← vírgula extra aqui
    DtCriacao,                            -- ← vírgula extra aqui também
FROM clientes
No SQL, a lista de colunas não pode terminar com vírgula. O FROM deve vir imediatamente após o último nome de coluna (sem vírgula).

--Converter tipo de dado texto para número, neste caso DATA/HORA

DtCriacao,
        substr(DtCriacao, 1, 10) AS DtCriacaoNova **contei quantos elementos tenho na string e renomeei a coluna.
/


/
SELECT IdCliente,
        --QtdePontos,
        --QtdePontos + 10 AS QtdePontosPlus10,
        --QtdePontos * 2 AS QtdePontosDouble,
        DtCriacao,
        substr(DtCriacao, 1, 19) AS DtCriacaoSubstr,
        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,
        strftime('%w', substr(DtCriacao, 1, 19)) AS DiaSemana
FROM clientes



Nesta consulta, deixamos de lado os cálculos com os pontos (QtdePontos) e focamos no tratamento da data de criação (DtCriacao). Utilizamos a cláusula AS para criar e renomear novas colunas durante a execução da consulta: primeiro, extraímos os 19 primeiros caracteres da data com substr para padronizar o formato ISO (YYYY-MM-DD HH:MM:SS) e nomeamos essa coluna como DtCriacaoSubstr; em seguida, aplicamos a função datetime para converter essa string em um valor de data/hora válido, gerando a coluna DtCriacaoNova; por fim, usamos strftime('%w') para criar a coluna DiaSemana, que retorna o número do dia da semana (onde 0 representa domingo). Os campos antigos foram mantidos comentados apenas para referência histórica no código.
/

