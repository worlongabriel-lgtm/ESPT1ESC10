# 📚 Engenharia de Requisitos com IA Generativa (ESPT1ESC10)

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Requisitos](https://img.shields.io/badge/Especifica%C3%A7%C3%A3o-Unidade%203-green.svg)](artefatos/especificacao.md)

Este repositório contém o documento de especificação completa de requisitos de software para o sistema **Loja Online Exemplo**, desenvolvido no âmbito da **Unidade 3** da disciplina (**ESPT1ESC10**). O trabalho demonstra a aplicação prática de **Histórias de Usuário** e **Critérios de Aceitação em BDD** gerados com o suporte de IA Generativa e validados por curadoria técnica humana.

---

## 📂 Estrutura do Repositório

```text
ESPT1ESC10/
│
├── README.md                          # Visão geral, metodologia e análise crítica
└── artefatos/
    └── especificacao.md               # Documento completo de especificação de requisitos
```

---

## 🎯 Artefatos Escolhidos e Justificativa

- **Histórias de Usuário (User Stories)**
- **Critérios de Aceitação (BDD / Gherkin)**
- **Matriz de Rastreabilidade e Glossário**

### 💡 Por que esses artefatos?
1. **Foco no Valor de Negócio:** O formato *"Como... Quero... Para..."* alinha o desenvolvimento técnico às reais necessidades do usuário final.
2. **Linguagem Ubíqua (BDD):** O padrão *Dado / Quando / Então* elimina ambiguidades entre stakeholders, desenvolvedores e equipe de testes (QA).
3. **Priorização e Agilidade:** Permite a estimativa em Story Points e o fatiamento fino do backlog para sprints de desenvolvimento.
4. **Rastreabilidade:** A matriz de rastreabilidade garante que cada requisito não-funcional (segurança, performance) esteja associado à sua respectiva história.

---

## 🤖 Metodologia e Prompts de IA Generativa

A Inteligência Artificial foi utilizada como assistente de elicitação e refinamento ao longo de 4 etapas:

1. **Elicitação Inicial:** *Prompt:* "Atue como Engenheiro de Requisitos e liste as principais Histórias de Usuário para um e-commerce..."
2. **Modelagem em BDD:** *Prompt:* "Escreva cenários de aceitação em formato Gherkin (Dado/Quando/Então) para cada história..."
3. **Análise de Fronteira e Segurança:** *Prompt:* "Identifique casos de erro, falhas de segurança e limites de validação para a HU de cadastro e login..."
4. **Matriz e Glossário:** *Prompt:* "Gere um glossário de termos do domínio e uma matriz de rastreabilidade mapeando HUs aos RNFs..."

---

## 🔍 Análise Crítica e Curadoria Humana

A intervenção humana garantiu o rigor técnico e o alinhamento ao escopo:

* **✅ Aproveitado Integralmente:** Estrutura dos fluxos felizes em Gherkin e terminologia padrão de e-commerce.
* **🔄 Adaptado:** 
  * Inclusão de regras de segurança rígidas no cadastro e login (mensagens genéricas de erro para prevenir enumeração de contas).
  * Adição de calculadoras automáticas de frete e atualização dinâmica no carrinho de compras (HU04).
  * Adição de estimativas em Story Points e níveis de prioridade (Alta / Média).
* **❌ Descartado:** 
  * Integração inicial com redes sociais (OAuth 2.0) e recomendação por IA no carrinho, visando manter o escopo enxuto do MVP.

---

## 📄 Especificação Completa

Consulte o documento técnico detalhado com todas as 5 Histórias de Usuário, Critérios BDD, RNFs, Glossário e Matriz de Rastreabilidade:
👉 [**Ir para especificacao.md**](file:///C:/Users/worlo/.gemini/antigravity/scratch/ESPT1ESC10/artefatos/especificacao.md)
