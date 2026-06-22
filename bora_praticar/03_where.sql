-- selecione todos os clientes com mais de 500 pontos;

SELECT *
FROM clientes
WHERE qtdePontos > 500;

SELECT IdCliente,
       QtdePontos
FROM clientes
WHERE qtdePontos >= 500;

