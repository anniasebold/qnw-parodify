  Dado('que acesso a página de login') do
    goto_login
  end

  Quando('submeto minhas credenciais com: {string} e {string}') do |email, password|
    login_with(email, password)
  end

  Então('devo ver a mensagem de erro: {string}') do |expect_message|
    expect(login_alert.text).to eql expect_message
  end
