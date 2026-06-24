# SQL do Zero ao Avançado

Repositório de estudos práticos em SQL com SQLite, documentando conceitos fundamentais e consultas progressivamente mais complexas.

> A prática é o foco principal. A IA foi utilizada apenas como apoio na documentação.

---

## Tecnologias

- **SQLite** – banco de dados relacional leve
- **SQL** – linguagem de consulta estruturada
- **Git/GitHub** – versionamento e hospedagem

---

## Como Executar

```bash
git clone https://github.com/gilucida/SQL_do_zero_ao_avancado.git
cd SQL_do_zero_ao_avancado
```

Abra os scripts em qualquer ambiente compatível: SQLite CLI, DB Browser for SQLite ou similar.

---

## Conteúdo

| Aula | Tema | Conceitos |
|------|------|-----------|
| 01 | Filtros com `WHERE` | `IN`, `LIKE`, operadores de comparação |
| 02 | Colunas e Datas | `AS`, `substr()`, `datetime()`, `strftime()` |

---

## Aula 01 — Filtros com `WHERE`

Exploração da cláusula `WHERE` para filtrar registros com diferentes tipos de condições.

**Boas práticas:**
- Prefira `IN` a múltiplos `OR` — mais legível e eficiente
- Use `LIKE` com moderação em tabelas grandes (maior custo de processamento)
- Números não levam aspas; textos e datas, sim

```sql
-- Recomendado: filtro com IN
SELECT *
FROM produtos
WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp');

-- Busca parcial com LIKE
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE '%Churn%';
```

---

## Aula 02 — Criação de Colunas e Manipulação de Datas

Criação de colunas derivadas com `AS` e tratamento de campos de data/hora em SQLite.

**Funções utilizadas:**

| Função | Descrição |
|--------|-----------|
| `substr(col, inicio, tamanho)` | Extrai parte de uma string |
| `datetime(str)` | Converte para formato ISO `AAAA-MM-DD HH:MM:SS` |
| `strftime('%w', data)` | Retorna o dia da semana (0 = domingo) |

```sql
SELECT
    IdCliente,
    DtCriacao,
    substr(DtCriacao, 1, 19)                    AS DtCriacaoSubstr,
    datetime(substr(DtCriacao, 1, 19))           AS DtCriacaoNova,
    strftime('%w', substr(DtCriacao, 1, 19))     AS DiaSemana
FROM clientes;
```

> **Erro comum:** não termine a lista de colunas com vírgula antes do `FROM`.

---

## Referências

- [Documentação SQLite](https://www.sqlite.org/docs.html)
- [Funções de Data e Hora — SQLite](https://www.sqlite.org/lang_datefunc.html)