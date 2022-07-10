#language: pt

@regressivo
Funcionalidade: Validar dados de Contato
Como um usuário visitante
Quero preencher dados
Para enviar mensagem no Fale Conosco

@enviar_mensagem_contato
Cenario: Enviar Mensagem Fale Conosco
Dado que acesso o Contato do Fale Conosco
Quando cadastro as informações no formulário
Então o sistema deve apresentar mensagem de envio de mensagem com sucesso

