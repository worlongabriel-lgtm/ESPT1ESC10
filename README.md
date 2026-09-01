# 📚 Sistema de Gestão de Eventos (Eventus / SGE)

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Requisitos](https://img.shields.io/badge/Especifica%C3%A7%C3%A3o-Unidade%203-green.svg)](artefatos/especificacao.md)
[![BDD Tests](https://img.shields.io/badge/Testes%20BDD-Gherkin-orange.svg)](features/)
[![Diagramas Mermaid](https://img.shields.io/badge/Modelagem-Mermaid-blueviolet.svg)](artefatos/especificacao.md#2-modelagem-e-arquitetura-visual-mermaid)

Este repositório contém a especificação formal de requisitos de software para o **Sistema de Gestão de Eventos (Eventus / SGE)**, desenvolvida no âmbito da **Unidade 3** da disciplina **Engenharia de Requisitos com Inteligência Artificial Generativa (ESPT1ESC10)**.

O projeto aplica uma abordagem ágil e testável baseada em **Histórias de Usuário agrupadas por Ator/Stakeholder**, **Critérios de Aceitação em BDD (Gherkin)**, **Diagramas Dinâmicos (Mermaid)**, **Tratamento das Lacunas da Elicitação (OB1-OB9)** e **Matriz de Rastreabilidade**.

---

## 📂 Estrutura do Repositório

```text
ESPT1ESC10/
├── README.md                          # Visão geral, metodologia e análise crítica
├── LICENSE                            # Licença MIT do projeto
├── .gitignore                         # Arquivo de exclusão do Git
├── artefatos/
│   └── especificacao.md               # Especificação completa: HUs por ator, Mermaid, RNFs, Lacunas e Matriz
└── features/                          # Cenários BDD executáveis em sintaxe Gherkin (.feature)
    ├── inscricao.feature              # HU01 - Inscrição e Trava Temporária de Vaga (15 min)
    ├── cancelamento_reembolso.feature # HU02 - Cancelamento e Reembolso Parametrizado
    ├── lista_espera.feature           # HU03 - Fila e Lista de Espera Automática
    ├── certificados.feature           # HU04 - Emissão de Certificados vinculada ao Check-in
    └── palestrante_lgpd.feature       # HU05 - Visualização de Dados por Papel e LGPD
```

---

## 🎯 Artefatos Escolhidos e Justificativa

### 1. Histórias de Usuário Agrupadas por Ator / Stakeholder (Artefato Principal)
As Histórias de Usuário foram organizadas em 4 categorias de atores identificados no documento de elicitação:
- 👤 **Participante:** Foco em inscrições rápidas, garantia temporária de vagas, cancelamentos e certificados.
- 👨‍💼 **Organizador:** Definição do Perfil de Política do Evento (prazos, reembolsos, limites).
- 💰 **Equipe Financeira:** Acompanhamento de pagamentos assíncronos e liberação de reembolsos.
- 🎙️ **Palestrante:** Acesso a dados estatísticos dos participantes em conformidade com a LGPD.

### 2. Critérios de Aceitação em BDD (Gherkin) & Arquivos Executáveis (`features/`)
Para garantir testabilidade e evitar ambiguidades de interpretação, cada História de Usuário é acompanhada por cenários `Dado que... Quando... Então...`. Os cenários estão salvos na pasta [`features/`](file:///C:/Users/worlo/.gemini/antigravity/scratch/ESPT1ESC10/features) para execução automatizada.

### 3. Diagramas de Arquitetura em Mermaid
- **Máquina de Estados da Inscrição:** Mapeia os estados *Pendente -> Reservada -> Confirmada -> Cancelada / Expirada*.
- **Diagrama de Sequência de Checkout/Hold:** Ilustra o bloqueio temporário de vaga (15 minutos) e o webhook do gateway.

### 4. Tratamento Sistemático das 9 Lacunas (OB1 a OB9)
Em vez de assumir regras inventadas pela IA Generativa (como prazos arbitrários de cancelamento), estruturamos o **Perfil de Política Configurável por Evento**, permitindo que cada organizador defina suas regras antes de abrir as inscrições.

---

## 🤖 Metodologia e Curadoria Humana de IA Generativa

A IA Generativa serviu como assistente em 4 fases:
1. **Elicitação & Separação:** Leitura crítica das entrevistas e extração dos requisitos e lacunas (OB1-OB9).
2. **Redação de HUs & BDD:** Formatação nos padrões `Como/Quero/Para` e `Given/When/Then`.
3. **Modelagem Visual:** Geração dos códigos Mermaid para os diagramas de estado e sequência.
4. **Análise Crítica:**
   - **✅ Aproveitado:** Agrupamento de HUs por ator e criação da Máquina de Estados da Inscrição.
   - **🔄 Modificado:** Rejeição de prazos fixos sugeridos pela IA. As lacunas (OB1-OB9) foram transformadas em parâmetros de configuração.
   - **❌ Descartado:** Protótipos de alta fidelidade e integrações com gatilhos de redes sociais fora do escopo.

---

## 📄 Acesso aos Documentos

- 📑 [**Documento Completo de Especificação de Requisitos (especificacao.md)**](file:///C:/Users/worlo/.gemini/antigravity/scratch/ESPT1ESC10/artefatos/especificacao.md)
- 🧪 [**Testes BDD Executáveis (.feature)**](file:///C:/Users/worlo/.gemini/antigravity/scratch/ESPT1ESC10/features)
