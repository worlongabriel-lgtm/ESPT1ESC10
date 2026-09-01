# language: pt
Funcionalidade: HU03 - Gestão da Fila e Lista de Espera Automática (Participante)
  Como participante interessado em um evento com lotação máxima atingida
  Quero entrar na lista de espera
  Para ser notificado prioritariamente quando houver desistência ou cancelamento

  @prioridade_media @lista_espera
  Cenário: Inclusão do participante na lista de espera por ordem de chegada
    Dado que o workshop "DevOps Avançado" está com 100% das vagas preenchidas
    Quando o participante solicita entrada na fila de espera
    Então o sistema registra a solicitação atribuindo a posição sequencial na fila
    E envia a confirmação "Você é o nº 3 da lista de espera"

  @convite @expiracao
  Cenário: Convocação automática por e-mail com janela de aceite
    Dado que uma vaga é liberada no workshop
    Quando o sistema convoca o 1º colocado da lista de espera enviando um link de inscrição exclusivo
    Então o participante tem o prazo de 24 horas para efetuar a compra da vaga
    E se o pagamento não for realizado em 24h, o convite é invalidado e repassado ao 2º colocado
