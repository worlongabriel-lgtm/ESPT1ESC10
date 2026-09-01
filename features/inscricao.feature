# language: pt
Funcionalidade: HU01 - Inscrição em Evento com Trava Temporária de Vaga (Participante)
  Como participante do evento
  Quero selecionar um evento e reservar temporariamente minha vaga
  Para realizar o pagamento sem risco de perder o lugar durante a transação

  @prioridade_alta @inscricao @concorrencia
  Cenário: Inscrição com reserva de vaga por 15 minutos e confirmação de pagamento
    Dado que o participante está na página do "Congresso de Tecnologia Eventus 2026"
    E o evento possui 5 vagas restantes
    Quando o participante seleciona a inscrição e clica em "Garantir Vaga"
    Então o sistema bloqueia temporariamente 1 vaga pelo prazo de 15 minutos
    E altera o status da inscrição para "Reservada - Aguardando Pagamento"
    E quando o participante confirma o pagamento via PIX dentro dos 15 minutos
    Então a inscrição transita para o estado "Confirmada"
    E o comprovante de inscrição definitivo é enviado por e-mail

  @excecao @expiracao
  Cenário: Expiração automática da reserva por falta de pagamento dentro do prazo
    Dado que o participante reservou uma vaga temporária pelo prazo de 15 minutos
    Quando o tempo de 15 minutos se esgota sem a confirmação do pagamento
    Então o sistema cancela automaticamente a reserva
    E transita o estado da inscrição para "Expirada"
    E devolve a vaga para o estoque disponível ou para o próximo da lista de espera
