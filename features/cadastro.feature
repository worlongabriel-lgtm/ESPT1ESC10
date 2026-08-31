# language: pt
Funcionalidade: HU01 - Cadastro de Novo Usuário
  Como um visitante da loja online
  Quero criar uma conta com e-mail e senha
  Para acessar funcionalidades exclusivas e realizar compras

  @prioridade_alta @seguranca
  Cenário: Cadastro realizado com sucesso
    Dado que o visitante está na página de cadastro
    Quando preenche o campo e-mail com "cliente.novo@email.com"
    E preenche o campo senha com "SenhaSegura123!"
    E clica no botão "Cadastrar"
    Então o sistema cria a nova conta
    E exibe a mensagem "Cadastro realizado com sucesso!"
    E envia um e-mail de confirmação de conta

  @excecao @seguranca
  Cenário: Tentativa de cadastro com e-mail duplicado
    Dado que o e-mail "cliente.existente@email.com" já possui cadastro no sistema
    Quando o visitante tenta cadastrar uma nova conta com o e-mail "cliente.existente@email.com"
    E preenche a senha com "SenhaSegura123!"
    Então o sistema bloqueia o registro
    E exibe a mensagem de erro "Este e-mail já está cadastrado."

  @validacao
  Cenário: Tentativa de cadastro com senha fraca
    Dado que o visitante está na página de cadastro
    Quando preenche a senha com "12345"
    Então o botão de submissão permanece desabilitado
    E o sistema exibe o alerta "A senha deve conter no mínimo 8 caracteres."
