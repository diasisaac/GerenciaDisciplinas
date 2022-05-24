
Given('A atividade de titulo {string}, descricao {string}, bimestre {string}, data {string} da disciplina de nome {string}') do |string, string2, string3, string4, string5|
  visit '/atividades/new'
  fill_in 'atividade[titulo]', :with => string
  fill_in 'atividade[descricao]', :with => string3
  fill_in 'atividade[bimestre]', :with => string2
  fill_in 'atividade[data]', :with => string4
  select(string5, :from => 'atividade[disciplina_id]')
  click_button 'Create Atividade'
end

Given('O aluno de nome {string} da turma {string} existe') do |string, string2|
  visit '/alunos/new'
  fill_in'aluno[nome]', :with =>string
  select string2, :from => 'Turma'
  click_button 'Create Aluno'
end

Given('Eu estou na pagina de criar uma avaliacao') do
  visit '/avaliacaos/new'
  expect(page).to have_current_path('/avaliacaos/new')
end

When('Eu preencho pontos com {string}, observacoes com {string}, seleciono aluno de nome {string} e seleciono atividade de titulo {string}') do |string, string2, string3, string4|
  fill_in 'avaliacao[pontos]', :with => string
  fill_in 'avaliacao[observacoes]', :with => string2
  select string3, :from => 'Aluno'
  select string4, :from => 'Atividade'
end

When('Eu clico em criar avaliacao') do
  click_button 'Create Avaliacao'
end

Then('Eu vejo que a avaliacao foi criada com sucesso') do
  expect(page).to have_content('Avaliacao was successfully created')
end


Then('Eu vejo a mensagem de observacao invalida') do
  expect(page).to have_content("Observacoes can't be blank")
end

Then('Eu vejo a mensagem de erro de pontuação invalida') do
  expect(page).to have_content('Pontos must be in 0..10')
end

