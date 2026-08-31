# 📚 Engenharia de Requisitos com IA Generativa

Este repositório contém a especificação completa de requisitos de software desenvolvida para a **Unidade 3** da disciplina (**ESPT1ESC10**), aplicando **Histórias de Usuário** e **Critérios de Aceitação em BDD** elaborados com o auxílio de inteligência artificial generativa e validação técnica humana.

---

## 📁 Estrutura do Repositório

```text
ESPT1ESC10/
│
├── README.md                          # Visão geral, metodologia e análise crítica
└── artefatos/
    └── historias_usuario.md           # Artefato principal de requisitos (HUs e BDD)
```

---

## 🎯 Artefatos Escolhidos

- **Histórias de Usuário (User Stories)**
- **Critérios de Aceitação (BDD / Gherkin)**

### 💡 Justificativa
A escolha desses artefatos baseia-se nos seguintes pilares:
1. **Foco no Valor do Usuário:** O formato *"Como... Quero... Para..."* mantém a equipe focada na real necessidade do cliente final antes da implementação técnica.
2. **Comunicação Eficiente:** Serve como ponte de linguagem clara entre stakeholders de negócio, desenvolvedores e profissionais de testes (QA).
3. **Testabilidade Rápida:** Os critérios de aceitação em formato Gherkin (*Dado, Quando, Então*) facilitam a automação de testes funcionais e a validação de aceite.
4. **Agilidade e Priorização:** Permitem dividir o sistema em pequenas entregas de valor priorizáveis em um backlog dinâmico.

---

## 🤖 Processo de Engenharia de Prompts e Uso de IA Generativa

A Inteligência Artificial Generativa foi utilizada durante todo o ciclo de concepção dos requisitos seguindo o fluxo de engenharia de prompts:

1. **Geração Inicial de Ideias (Elicitação):** Prompts solicitando mapeamento de fluxos principais de um sistema e-commerce de exemplo.
2. **Estruturação em BDD:** Prompts solicitando a transformação dos requisitos em cenários *Given-When-Then* (Dado-Quando-Então).
3. **Análise de Fronteiras e Casos de Exceção:** Consulta à IA sobre falhas comuns (e.g., comportamento em perda de conexão, senhas fracas, injeção de dados).

---

## 🔍 Análise Crítica e Curadoria Humana

A atuação humana foi fundamental para garantir a qualidade final da especificação:

* **✅ Sugestões Aproveitadas na Íntegra:** Estrutura base do formato `Dado / Quando / Então` para critérios funcionais padrão (ex: mensagem de confirmação de cadastro).
* **🔄 Sugestões Adaptadas:** 
  * A IA havia gerado critérios genéricos de validação de senha. Adaptamos para exigir regras específicas de segurança (mínimo de 8 caracteres, letras e números).
  * Inclusão explicita de mensagens de erro claras para evitar vazamento de informação de segurança na autenticação.
* **❌ Sugestões Descartadas:**
  * Sugestão da IA para inclusão imediata de autenticação social (OAuth 2.0 / Google / Apple) na HU de MVP, descartada para manter o escopo enxuto da entrega.

---

## 🔗 Acesso aos Artefatos

Acesse o documento completo de especificação em:
👉 [**Artefatos: Histórias de Usuário e Critérios de Aceitação**](file:///C:/Users/worlo/.gemini/antigravity/scratch/ESPT1ESC10/artefatos/historias_usuario.md)
