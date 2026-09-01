# language: pt
Funcionalidade: HU05 - Visualização de Dados por Papel e Conformidade LGPD (Palestrante / TI)
  Como palestrante de uma sessão ou palestra
  Quero visualizar a lista e o perfil dos participantes inscritos no meu workshop
  Para adaptar a didática sem violar a Lei Geral de Proteção de Dados (LGPD)

  @seguranca @lgpd @palestrante
  Cenário: Visualização anonimizada e estatística dos participantes
    Dado que o palestrante está autenticado e acessa o painel da sua palestra
    Quando consulta a lista de inscritos
    Então o sistema exibe apenas o nome público, cargo, empresa e estatísticas consolidadas
    E oculta e-mails pessoais, CPF e telefones dos participantes que não deram consentimento explícito
