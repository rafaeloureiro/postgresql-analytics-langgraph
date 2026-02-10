# PostgreSQL Analytics Pipeline with LangGraph

## 📌 Overview

Este projeto implementa um **pipeline de dados no estilo ETL/ELT** utilizando **PostgreSQL na nuvem** como fonte principal, com extração via **SQL**, transformações analíticas em **Pandas**, visualização interativa em **Streamlit** e uma camada avançada de **interpretação automática de resultados com LLMs usando LangGraph**.

O objetivo é demonstrar, de ponta a ponta, como construir um pipeline moderno de analytics orientado a negócio, indo além de dashboards tradicionais ao gerar **insights e recomendações automatizadas** a partir dos dados.

---

## 🏗️ Arquitetura do Projeto

```
PostgreSQL (Cloud)
        ↓  SQL (Extract)
Pandas (Transform)
        ↓
Visualização (Streamlit)
        ↓
LangGraph (Insights com LLM)
```

---

## 🗄️ Fonte de Dados

* **Banco:** PostgreSQL (Supabase – Cloud)
* **Domínio:** E-commerce / Sales Analytics
* **Modelo relacional:**

  * customers
  * orders
  * order_items
  * products

Os dados são extraídos diretamente do banco via queries SQL versionadas neste repositório.

---

## 🔄 Pipeline de Dados

### 1. Extract (SQL)

* Queries analíticas em SQL para:

  * Receita mensal
  * Receita por categoria
  * Número de clientes ativos
  * Ticket médio

### 2. Transform (Python / Pandas)

* Enriquecimento analítico:

  * Crescimento mês a mês (MoM)
  * Ranking de categorias
  * Análise de concentração (Pareto / ABC)
  * Métricas de performance de vendas

### 3. Load / Serve

* Dados transformados são utilizados para:

  * Visualização interativa
  * Análise automatizada via LLM

---

## 📊 Visualização

* Construída com **Streamlit**
* Gráficos de séries temporais e comparativos
* Foco em clareza e leitura analítica

---

## 🤖 Análise Automatizada com LangGraph

O projeto utiliza **LangGraph** para criar um fluxo estruturado de análise, com múltiplos estágios:

1. Sumário estatístico dos dados
2. Identificação de tendências e padrões
3. Detecção de riscos e anomalias
4. Geração de insights estratégicos
5. Recomendações de negócio

Esse fluxo permite que os resultados analíticos sejam interpretados automaticamente de forma consistente e reprodutível.

---

## 🛠️ Stack Tecnológica

* **Banco de Dados:** PostgreSQL (Supabase)
* **Linguagem:** Python 3.11+
* **SQL Analytics:** PostgreSQL
* **Data Processing:** Pandas
* **Visualização:** Streamlit / Plotly
* **LLM Orchestration:** LangGraph
* **Deploy:** Streamlit Cloud

---

## 📁 Estrutura do Repositório

```
postgresql-analytics-langgraph/
│
├── app.py
├── requirements.txt
├── README.md
│
├── sql/
│   └── revenue_analysis.sql
│
├── src/
│   ├── db.py
│   ├── queries.py
│   ├── metrics.py
│   ├── visualization.py
│   └── langgraph_flow.py
│
└── .gitignore
```

---

## 🚀 Como Executar Localmente

1. Clone o repositório
2. Crie um ambiente virtual
3. Instale as dependências:

```bash
pip install -r requirements.txt
```

4. Configure as variáveis de ambiente ou `secrets.toml` com as credenciais do PostgreSQL
5. Execute o app:

```bash
streamlit run app.py
```

---

## ☁️ Deploy

O projeto está preparado para deploy no **Streamlit Cloud**, utilizando integração direta com GitHub e gerenciamento seguro de credenciais via `st.secrets`.

---

## 🎯 Objetivo do Projeto

Este projeto foi desenvolvido para fins de **portfólio técnico**, demonstrando:

* Domínio de SQL e modelagem relacional
* Construção de pipelines ETL/ELT modernos
* Análise de dados orientada a negócio
* Uso de LLMs de forma estruturada e não trivial

---

## 📌 Próximos Passos

* Persistência de dados transformados
* Agendamento do pipeline (Airflow / Prefect)
* Expansão para múltiplas fontes de dados
