Dado('que acesso o Contato do Fale Conosco') do
    @contato = ContatoPage.new
    @contato.load
end

Quando('cadastro as informações no formulário') do
    @contato.enviar_mensagem('nome teste', 'email@teste.com', 'assunto teste', 'mensagem teste')
end
    
Então('o sistema deve apresentar mensagem de envio de mensagem com sucesso') do
    @contato.wait_until_msg_sucesso_visible
    expect(@contato).to have_content 'Mensagem enviada com sucesso.'
end