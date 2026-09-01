# language: pt
Funcionalidade: HU05 - Autenticação por Perfil de Usuário (LGPD)
  Como usuário do sistema (Participante, Organizador, Financeiro, Palestrante)
  Quero autenticar no sistema com minhas credenciais
  Para acessar as funcionalidades e dados restritos ao meu papel

  @autenticacao @lgpd
  Cenário: Login de palestrante com acesso restrito a dados dos inscritos
    Dado que o palestrante está autenticado na plataforma
    Quando acessa a área da sua palestra
    Então o sistema exibe apenas dados estatísticos e nomes dos participantes que autorizaram o compartilhamento (LGPD)
    E oculta e-mails e documentos pessoais dos inscritos
