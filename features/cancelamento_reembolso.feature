# language: pt
Funcionalidade: HU02 - Cancelamento e Reembolso Parametrizado por Evento (Participante / Financeiro)
  Como participante inscrito em um evento
  Quero solicitar o cancelamento da minha inscrição
  Para obter o reembolso de acordo com as regras de antecedência configuradas pelo organizador

  @prioridade_alta @cancelamento @reembolso
  Cenário: Cancelamento dentro da janela permitida com reembolso parcial/integral
    Dado que a política do evento "Simpósio de IA" permite cancelamento com até 48h de antecedência e reembolso de 80%
    E o participante possui uma inscrição no estado "Confirmada"
    Quando o participante solicita o cancelamento 72h antes do início do evento
    Então a inscrição transita para o estado "Cancelada"
    E a equipe financeira é notificada para efetuar o reembolso de 80% do valor pago
    E a vaga é liberada imediatamente para a lista de espera

  @excecao @fora_do_prazo
  Cenário: Tentativa de cancelamento fora da janela permitida
    Dado que a política do evento proíbe cancelamentos com menos de 24h de antecedência
    Quando o participante solicita o cancelamento a 10h do início do evento
    Então o sistema nega a solicitação de cancelamento com reembolso
    E exibe a mensagem "Solicitação fora do prazo limite estabelecido na política do evento."
