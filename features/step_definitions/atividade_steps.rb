Given('Eu estou na pagina de cadastro de atividade') do
  visit '/atividades/new'
end

When('Eu preencho titulo com {string}, descricao {string}, bimestre {string}, data {string} da disciplina de nome {string}') do |string, string2, string3, string4, string5|
  fill_in 'atividade[titulo]', :with => string
  fill_in 'atividade[descricao]', :with => string2
  fill_in 'atividade[bimestre]', :with => string3
  fill_in 'atividade[data]', :with => string4
  select(string5, from: 'atividade[disciplina_id]')
end

When('Eu clico em cadastrar a atividade') do
  click_button 'Create Atividade'
end

Then('Eu vejo que a atividade foi criada com sucesso') do
  expect(page).to have_content("Atividade was successfully created")
end

Then('Eu vejo a mensagem que informa que o titlo e invalido') do
  expect(page).to have_content("tamanho minimo 5 caracteres")
end

Then('Eu vejo a mensagem que informa que a descricao e invalido') do
  expect(page).to have_content("Descricao can't be blank")
end