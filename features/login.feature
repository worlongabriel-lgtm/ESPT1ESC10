# language: pt
Funcionalidade: HU02 - Autenticação e Login
  Como um usuário cadastrado
  Quero realizar login com minhas credenciais de acesso
  Para acessar minha área restrita e histórico de pedidos

  @prioridade_alta @autenticacao
  Cenário: Login efetuado com sucesso
    Dado que o usuário tem uma conta ativa com e-mail "cliente@email.com" e senha "SenhaSegura123!"
    Quando ele digita as credenciais corretas na página de login
    E clica em "Entrar"
    Então a sessão do usuário é iniciada
    E o usuário é redirecionado para a página inicial com seu nome no cabeçalho

  @seguranca @excecao
  Cenário: Falha de login por credenciais incorretas
    Dado que o usuário está na página de login
    Quando digita o e-mail "cliente@email.com" e uma senha incorreta "SenhaErrada!"
    E clica em "Entrar"
    Então o sistema recusa a autenticação
    E exibe a mensagem de erro genérica "E-mail ou senha incorretos."

  @recuperacao
  Cenário: Solicitação de redefinição de senha
    Dado que o usuário esqueceu sua senha
    Quando clica em "Esqueci minha senha" e informa o e-mail "cliente@email.com"
    Então o sistema gera um token temporário com validade de 1 hora
    E envia as instruções de redefinição por e-mail
