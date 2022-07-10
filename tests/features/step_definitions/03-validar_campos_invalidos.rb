Quando('eu informo os campos {string},{string},{string},{string} conforme arquivo') do |nome, email, assunto, mensagem|
        @contato.enviar_mensagem(
            UserData.get(nome),
            UserData.get(email),
            UserData.get(assunto),
            UserData.get(mensagem)
        )
  end

Então('deve exibir no campo a mensagem de erro {string}') do |msg_falha_campo|
    expect(@contato).to have_content msg_falha_campo
  end
  

