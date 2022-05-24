Feature: disciplina

  As a usuario do sistema sistema-avaliacao
  I want to cadastrar, editar, apagar e visualizar disciplinas
  so that eu possa ter controle das disciplinas nas turmas que leciono

  Scenario: cadastrar disciplina
    Given O usuario de login "rodrigo@gmail.com" e senha "123456" existe
    And Eu estou logado como usuario de email "rodrigo@gmail.com"
    And A turma "8A" de ano letivo "2022" existe
    And Eu estou na pagina de cadastro de disciplina
    When Eu preencho nome da disciplina como "Matematica", ano letivo com "2022" e seleciono a turma "8A"
    And Eu clico em cadastrar disciplina
    Then Eu vejo que a disciplina foi criada

  Scenario: editar disciplina
    Given O usuario de login "rodrigo2@gmail.com" e senha "123456" existe
    And Eu estou logado como usuario de email "rodrigo2@gmail.com"
    And A turma "8B" de ano letivo "2022" existe
    And A disciplina de nome "Fisica", ano letivo "2020" e turma '8B' existe
    And Eu estou na pagina da disciplina criada
    When Eu clico em editar a disciplina
    And Eu preencho nome da disciplina como "Historia", ano letivo com "2022" e seleciono a turma "8B"
    And Eu clico em atualizar disciplina
    Then Eu vejo que a disciplina de nome "Historia" e ano letivo "2022" foi editada

  Scenario: cadastrar disciplina com ano letivo menor que o permitido
    Given O usuario de login "rodrigo3@gmail.com" e senha "123456" existe
    And Eu estou logado como usuario de email "rodrigo3@gmail.com"
    And A turma "5A" de ano letivo "2022" existe
    And Eu estou na pagina de cadastro de disciplina
    When Eu preencho nome da disciplina como "Biologia", ano letivo com "2018" e seleciono a turma "5A"
    And Eu clico em cadastrar disciplina
    Then Eu vejo que mensagem de erro "Ano letivo must be greater than or equal to 2020" e exibida