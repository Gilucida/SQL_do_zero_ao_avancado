SELECT IdCliente,
        --QtdePontos,
        --QtdePontos + 10 AS QtdePontosPlus10,
        --QtdePontos * 2 AS QtdePontosDouble,
        DtCriacao,
        substr(DtCriacao, 1, 19) AS DtCriacaoSubstr,
        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,
        strftime('%w', substr(DtCriacao, 1, 19)) AS DiaSemana
FROM clientes

