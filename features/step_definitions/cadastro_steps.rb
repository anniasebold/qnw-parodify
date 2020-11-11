Dado('que acesso a página de cadastro') do
    visit "http://parodify.qaninja.com.br/"
    click_on "EXPERIMENTE AGORA"
end
  
Quando('submeto o meu cadastro com:') do |table|
    user = table.rows_hash
    find("input[name*=email]").set user[:email]
    find("input[placeholder='Sua senha secreta']").set user[:senha]
    find("input[placeholder='Confirme sua senha']").set user[:senha_confirma]

    sleep 5 #temporário
end
  
Então('devo ser redirecionado para a área logada') do
    
end