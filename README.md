# 📚 Engenharia de Requisitos com IA Generativa (ESPT1ESC10)

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Requisitos](https://img.shields.io/badge/Especifica%C3%A7%C3%A3o-Unidade%203-green.svg)](artefatos/especificacao.md)
[![BDD Tests](https://img.shields.io/badge/Testes%20BDD-Gherkin-orange.svg)](features/)

Este repositório contém a especificação completa de requisitos de software para o sistema **Loja Online Exemplo**, desenvolvido no âmbito da **Unidade 3** da disciplina (**ESPT1ESC10**). O trabalho demonstra a aplicação prática de **Histórias de Usuário**, **Diagramas de Fluxo e Sequência (Mermaid)** e **Critérios de Aceitação em BDD** gerados com o suporte de IA Generativa e validados por curadoria técnica humana.

---

## 📂 Estrutura do Repositório

```text
ESPT1ESC10/
│
├── README.md                          # Visão geral, metodologia e análise crítica
├── LICENSE                            # Licença MIT do projeto
├── .gitignore                         # Arquivo de exclusão do Git
├── artefatos/
│   └── especificacao.md               # Especificação técnica com HUs, Mermaid, RNFs e Matriz
└── features/                          # Arquivos Gherkin (.feature) para testes BDD executáveis
    ├── cadastro.feature
    ├── login.feature
    └── checkout.feature
```

---

## 🎯 Artefatos Escolhidos e Justificativa

- **Histórias de Usuário (User Stories)**
- **Diagramas de Arquitetura e Sequência (Mermaid)**
- **Critérios de Aceitação em BDD (Gherkin)**
- **Matriz de Rastreabilidade e Glossário**

### 💡 Por que esses artefatos?
1. **Foco no Valor de Negócio:** O formato *"Como... Quero... Para..."* alinha o desenvolvimento técnico às reais necessidades do usuário final.
2. **Linguagem Ubíqua e Modelagem Visual (BDD + Mermaid):** O padrão *Dado / Quando / Então* combinado a fluxogramas Mermaid elimina ambiguidades entre stakeholders, desenvolvedores e equipe de testes (QA).
3. **Testabilidade Executável:** A inclusão dos arquivos `.feature` na pasta `features/` permite a automação imediata de testes com frameworks como *Behave* ou *Cucumber*.
4. **Rastreabilidade:** A matriz de rastreabilidade garante que cada requisito não-funcional (segurança, performance) esteja associado à sua respectiva história.

---

## 🤖 Metodologia e Prompts de IA Generativa

A Inteligência Artificial foi utilizada como assistente de elicitação e refinamento ao longo de 4 etapas:

1. **Elicitação Inicial:** *Prompt:* "Atue como Engenheiro de Requisitos e liste as principais Histórias de Usuário para um e-commerce..."
2. **Modelagem em BDD:** *Prompt:* "Escreva cenários de aceitação em formato Gherkin (Dado/Quando/Então) para cada história..."
3. **Diagramação Visual:** *Prompt:* "Gere um diagrama de sequência Mermaid para o fluxo de checkout e um fluxograma da jornada do usuário..."
4. **Matriz e Glossário:** *Prompt:* "Gere um glossário de termos do domínio e uma matriz de rastreabilidade mapeando HUs aos RNFs..."

---

## 🔍 Análise Crítica e Curadoria Humana

A intervenção humana garantiu o rigor técnico e o alinhamento ao escopo:

* **✅ Aproveitado Integralmente:** Estrutura dos fluxos felizes em Gherkin, sintaxe Mermaid e terminologia padrão de e-commerce.
* **🔄 Adaptado:** 
  * Inclusão de regras de segurança rígidas no cadastro e login (mensagens genéricas de erro para prevenir enumeração de contas).
  * Adição de calculadoras automáticas de frete e atualização dinâmica no carrinho de compras (HU04).
  * Adição de estimativas em Story Points e níveis de prioridade (Alta / Média).
* **❌ Descartado:** 
  * Integração inicial com redes sociais (OAuth 2.0) e recomendação por IA no carrinho, visando manter o escopo enxuto do MVP.

---

## 📄 Acesso aos Documentos do Repositório

- 📑 [**Documento Técnico de Especificação (especificacao.md)**](file:///C:/Users/worlo/.gemini/antigravity/scratch/ESPT1ESC10/artefatos/especificacao.md)
- 🧪 [**Arquivos Executáveis de Testes BDD (.feature)**](file:///C:/Users/worlo/.gemini/antigravity/scratch/ESPT1ESC10/features)
