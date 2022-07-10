class ContatoPage < SitePrism::Page
    set_url '/contato'
    element :campo_nome, '#Nome-2'
    element :campo_email, '#Email-6'
    element :campo_assunto, '#Assunto-2'
    element :campo_mensagem, '#Mensagem-2'
    element :botao_enviar, 'input[value="Enviar mensagem"]'
    element :msg_sucesso, '.form_alert_wrap'

    def enviar_mensagem(nome, email, assunto, mensagem)
        campo_nome.set nome
        campo_email.set email
        campo_assunto.set assunto
        campo_mensagem.set mensagem
        botao_enviar.click 
    end
end