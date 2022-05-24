
Given('Eu estou na pagina de cadastro') do
  visit '/users/sign_up'
  expect(page).to have_current_path('/users/sign_up')
end

Given('Eu preencho login com o email {string}, a senha com {string} e confirmacao de senha com {string}') do |email, senha, conf_senha|
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
  fill_in 'user[password_confirmation]', :with => conf_senha
end

When('Eu clico em cadastrar') do
  click_button 'Sign up'
end

Then('Eu vejo que o cadastro do usuario de email {string} foi registrado') do |email|
  expect(page).to have_content(email)
end



Given('O usuario de login {string} e senha {string} existe') do |email, senha|
  visit '/users/sign_up'
  expect(page).to have_current_path('/users/sign_up')
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
  fill_in 'user[password_confirmation]', :with => senha
  click_button 'Sign up'
end

Given('Eu estou na pagina de login') do
  click_button 'Sign out'
  visit '/users/sign_in'
  expect(page).to have_current_path('/users/sign_in')
end

Given('Eu preencho o campo de login com o email {string} e o campo senha com {string}') do |email, senha|
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
end

When('Eu clico em logar') do
  click_button "Log in"
end

Then('Eu vejo que o login do usuario de email {string} foi efetuado') do |email|
  expect(page).to have_content(email)
end

Then('Eu vejo a mensagem de erro {string}') do |email_erro|
  expect(page).to have_content(email_erro)
end
