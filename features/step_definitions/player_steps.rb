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
  @parody = table.rows_hash
  find('a', text: @parody[:banda]).click

  song = find('.song-item', text: @parody[:parodia])
  song.find('.fa-play-circle').click
  sleep 10
end

Então('essa paródia deve ficar em modo de reprodução') do
  song_play = find('.playing')
  expect(song_play).to have_text @parody[:parodia]
end
