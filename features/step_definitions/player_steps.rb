Dado('Login com {string} e senha {string}') do |email, password|
  visit 'http://parodify.qaninja.com.br/'
  click_on 'Login'
  find('#user_email').set email
  find('#user_password').set password
  click_on 'Log in'
end

Dado('que eu gosto muito de {string}') do |categoria|
  find('a[href="/search/new"]').click
  find('a[href="/categories/1"]').click

end

Quando('toco a seguinte canção:') do |table|
  parodi = table.rows_hash
end

Então('essa paródia deve ficar em modo de reprodução') do

end
