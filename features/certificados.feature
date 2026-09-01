# language: pt
Funcionalidade: HU04 - Emissão de Certificados Vinculada ao Check-in (Participante / Organizador)
  Como participante presencial ou online
  Quero emitir meu certificado digital após o término do evento
  Para comprovar minha participação e carga horária cumprida

  @prioridade_alta @certificado @checkin
  Cenário: Emissão bem-sucedida de certificado mediante registro de presença
    Dado que o evento "Semana de Engenharia de Software" foi encerrado
    E o participante teve seu check-in registrado (frequência >= 75%)
    Quando o participante solicita o download do certificado em PDF
    Então o sistema gera o documento com código de verificação autêntico e QR Code
    E disponibiliza o arquivo para download no painel do participante

  @excecao @sem_presenca
  Cenário: Bloqueio de certificado para participante ausente
    Dado que o participante se inscreveu mas não registrou presença/check-in no evento
    Quando o participante tenta emitir o certificado
    Então o sistema impede a geração do PDF
    E exibe a mensagem "Certificado indisponível por falta de registro de presença no evento."
