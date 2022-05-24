
Given('Eu estou logado como usuario de email {string}') do |email|
  expect(page).to have_content(email)
end

Given('A turma {string} de ano letivo {string} existe') do |nome, ano_letivo|
  visit '/turmas/new'
  fill_in 'turma[nome]', :with => nome
  fill_in 'turma[ano_letivo]', :with => ano_letivo
  click_button 'Create Turma'
end

Given('Eu estou na pagina de cadastro de disciplina') do
  visit 'disciplinas/new'
end

When('Eu preencho nome da disciplina como {string}, ano letivo com {string} e seleciono a turma {string}') do |nome, ano_letivo, turma|
  fill_in 'disciplina[nome]', :with => nome
  fill_in 'disciplina[ano_letivo]', :with => ano_letivo
  select turma, :from => 'Turma'
end

When('Eu clico em cadastrar disciplina') do
  click_button 'Create Disciplina'
end

Then('Eu vejo que a disciplina foi criada') do
  expect(page).to have_content("Disciplina was successfully created")
end

Given('A disciplina de nome {string}, ano letivo {string} e turma {string} existe') do |nome, ano_letivo, turma|
  visit 'disciplinas/new'
  fill_in 'disciplina[nome]', :with => nome
  fill_in 'disciplina[ano_letivo]', :with => ano_letivo
  select(turma, from: 'disciplina[turma_id]')

  click_button 'Create Disciplina'
end


Given('Eu estou na pagina da disciplina criada') do
  visit '/disciplinas/' +  Disciplina.last.id.to_s

end

When('Eu clico em editar a disciplina') do
  click_link 'Edit this disciplina'

end

When('Eu clico em atualizar disciplina') do
  click_button 'Update Disciplina'
end

Then('Eu vejo que a disciplina de nome {string} e ano letivo {string} foi editada') do |nome, ano_letivo|
  expect(page).to have_content(nome)
  expect(page).to have_content(ano_letivo)
end

Then('Eu vejo que mensagem de erro {string} e exibida') do |string|
  expect(page).to have_content(string)
end