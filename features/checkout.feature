# language: pt
Funcionalidade: HU05 - Finalização da Compra e Pagamento (Checkout)
  Como um usuário autenticado
  Quero finalizar o pagamento dos itens do meu carrinho
  Para concluir meu pedido e receber os produtos no meu endereço

  @prioridade_alta @pagamento @pix
  Cenário: Processamento de checkout com sucesso via PIX
    Dado que o usuário tem itens válidos no carrinho de compras
    E está autenticado no sistema
    Quando seleciona a forma de pagamento "PIX"
    E confirma o endereço de entrega "Rua Exemplo, 123 - São Paulo/SP"
    E clica em "Finalizar Pedido"
    Então o sistema gera o QrCode PIX com validade de 30 minutos
    E altera o status do pedido para "Aguardando Pagamento"
    E exibe a tela de confirmação com o Número do Pedido "#10928"

  @pagamento @cartao
  Cenário: Processamento de checkout via Cartão de Crédito
    Dado que o usuário está no passo de pagamento
    Quando seleciona "Cartão de Crédito" e preenche os dados do cartão válidos
    E clica em "Confirmar Pagamento"
    Então a transação é aprovada pela operadora financeira
    E o carrinho é esvaziado
    E o sistema envia o comprovante de compra por e-mail
