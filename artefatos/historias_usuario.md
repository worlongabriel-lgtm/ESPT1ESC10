# 📄 Artefato de Requisitos: Histórias de Usuário

Este documento apresenta as **Histórias de Usuário (HUs)** e os **Critérios de Aceitação em BDD (Behavior Driven Development)** desenvolvidos para o sistema de E-commerce Exemplo.

---

## 📌 Convenções e Padronização

- **História de Usuário:** `Como [papel], Quero [funcionalidade], Para [benefício]`
- **Formatos dos Critérios de Aceitação:** Gherkin (`Dado que...`, `Quando...`, `Então...`)
- **Prioridade:** Alta | Média | Baixa
- **Estimativa:** Story Points (Fibonacci: 1, 2, 3, 5, 8)

---

## 🚀 Histórias de Usuário

### HU01 - Cadastro de Novo Usuário
- **Prioridade:** Alta  
- **Estimativa:** 5 Story Points  
- **Descrição:**  
  **Como** visitante da plataforma  
  **Quero** criar uma conta utilizando meu e-mail e uma senha segura  
  **Para** ter acesso a compras e funcionalidades exclusivas do sistema.

#### 📋 Critérios de Aceitação (BDD)

**Cenário 1: Cadastro realizado com sucesso**
- **Dado que** o visitante está na página de cadastro
- **Quando** ele preenche um e-mail válido no formato `usuario@dominio.com` e uma senha forte (mínimo 8 caracteres)
- **E** clica no botão "Cadastrar"
- **Então** a conta deve ser criada com sucesso
- **E** o sistema deve exibir a mensagem: *"Cadastro realizado com sucesso! Verifique seu e-mail."*
- **E** um e-mail de confirmação deve ser enviado.

**Cenário 2: Tentativa de cadastro com e-mail já existente**
- **Dado que** o e-mail `cliente@email.com` já está cadastrado no sistema
- **Quando** outro usuário tenta cadastrar uma nova conta utilizando o e-mail `cliente@email.com`
- **Então** o sistema não deve permitir o cadastro
- **E** deve exibir a mensagem de erro: *"Este e-mail já está em uso."*

**Cenário 3: Validação de formato de senha fraca**
- **Dado que** o visitante preenche uma senha com menos de 8 caracteres
- **Quando** ele submete o formulário de cadastro
- **Então** o botão de envio deve ser bloqueado ou um alerta deve ser exibido: *"A senha deve ter no mínimo 8 caracteres."*

---

### HU02 - Autenticação e Login
- **Prioridade:** Alta  
- **Estimativa:** 3 Story Points  
- **Descrição:**  
  **Como** usuário cadastrado  
  **Quero** realizar login informando minhas credenciais de acesso  
  **Para** acessar minha área restrita e visualizar meus pedidos.

#### 📋 Critérios de Aceitação (BDD)

**Cenário 1: Login efetuado com sucesso**
- **Dado que** o usuário possui conta ativa e está na página de login
- **Quando** informa seu e-mail e senha corretos e clica em "Entrar"
- **Então** a autenticação é realizada com sucesso
- **E** o usuário é redirecionado para a página inicial com seu nome exibido no cabeçalho.

**Cenário 2: Falha na autenticação (Credenciais inválidas)**
- **Dado que** o usuário está na página de login
- **Quando** informa um e-mail ou senha incorretos
- **Então** o sistema recusa a autenticação
- **E** exibe a mensagem de erro genérica: *"E-mail ou senha incorretos."* (evitando expor qual campo falhou por motivos de segurança).

**Cenário 3: Solicitação de recuperação de senha**
- **Dado que** o usuário esqueceu sua senha
- **Quando** clica no link "Esqueci minha senha" e informa seu e-mail cadastrado
- **Então** o sistema gera um token temporário e envia as instruções de redefinição por e-mail.

---

### HU03 - Catálogo e Busca de Produtos
- **Prioridade:** Alta  
- **Estimativa:** 5 Story Points  
- **Descrição:**  
  **Como** usuário da plataforma (autenticado ou visitante)  
  **Quero** visualizar a lista de produtos, pesquisar por termos e aplicar filtros  
  **Para** encontrar rapidamente o item que desejo comprar.

#### 📋 Critérios de Aceitação (BDD)

**Cenário 1: Visualização padrão da lista de produtos**
- **Dado que** o usuário acessa a página do catálogo
- **Então** o sistema deve exibir os produtos disponíveis com foto, nome, preço e status de estoque.

**Cenário 2: Busca por palavra-chave**
- **Dado que** o usuário digita *"Camiseta"* no campo de busca
- **Quando** clica em buscar ou pressiona `Enter`
- **Então** a lista de produtos deve ser atualizada para mostrar apenas itens cujo título ou descrição contenham o termo *"Camiseta"*.

**Cenário 3: Filtragem por categoria e preço**
- **Dado que** o usuário seleciona a categoria *"Eletrônicos"* e define a faixa de preço até R$ 500,00
- **Quando** aplica os filtros
- **Então** a listagem deve exibir somente produtos pertencentes à categoria *"Eletrônicos"* com preço igual ou inferior a R$ 500,00.

**Cenário 4: Busca sem resultados**
- **Dado que** o usuário pesquisa por um termo inexistente no catálogo (ex: *"Xyz123"*)
- **Então** o sistema deve exibir uma mensagem amigável: *"Nenhum produto encontrado para 'Xyz123'. Tente outros termos."*

---

## 🔒 Requisitos Não-Funcionais Relacionados

1. **Performance (RNF01):** O tempo de resposta da busca e filtragem de produtos não deve exceder **2 segundos** sob carga normal.
2. **Segurança (RNF02):** As senhas dos usuários devem ser criptografadas utilizando hash seguro (`bcrypt` ou `Argon2`) antes de serem armazenadas no banco de dados.
3. **Usabilidade (RNF03):** A interface de busca e login deve ser 100% responsiva (compatível com dispositivos móveis e desktops).
