Feature: Atividade

  As a usuario do sistema sistema-avaliacao
  I want to cadastrar novas atividades das disciplinas
  so that eu possa ter controle de atividades dentro da disciplina

  Scenario: criar atividade de uma disciplina
    Given O usuario de login "isaac@gmail.com" e senha "123456" existe
    And Eu estou logado como usuario de email "isaac@gmail.com"
    And A turma "5C" de ano letivo "2022" existe
    And A disciplina de nome "Portugues", ano letivo "2022" e turma "5C" existe
    And Eu estou na pagina de cadastro de atividade
    When Eu preencho titulo com "Poesia", descricao "Faça uma poesia de tema livre", bimestre "1", data "2022-05-30" da disciplina de nome "Portugues"
    And Eu clico em cadastrar a atividade
    Then Eu vejo que a atividade foi criada com sucesso

  Scenario: criar atividade com titulo menor que 5
    Given O usuario de login "isaac2@gmail.com" e senha "123456" existe
    And Eu estou logado como usuario de email "isaac2@gmail.com"
    And A turma "6A" de ano letivo "2022" existe
    And A disciplina de nome "Ingles", ano letivo "2022" e turma "6A" existe
    And Eu estou na pagina de cadastro de atividade
    When Eu preencho titulo com "P", descricao "Faça uma poesia de tema livre", bimestre "1", data "2022-05-30" da disciplina de nome "Ingles"
    And Eu clico em cadastrar a atividade
    Then Eu vejo a mensagem que informa que o titlo e invalido


  Scenario: criar atividade com descricao vazia
    Given O usuario de login "isaac3@gmail.com" e senha "123456" existe
    And Eu estou logado como usuario de email "isaac3@gmail.com"
    And A turma "6B" de ano letivo "2022" existe
    And A disciplina de nome "Geografia", ano letivo "2022" e turma "6B" existe
    And Eu estou na pagina de cadastro de atividade
    When Eu preencho titulo com "Mapas Mundi", descricao "", bimestre "1", data "2022-05-30" da disciplina de nome "Geografia"
    And Eu clico em cadastrar a atividade
    Then Eu vejo a mensagem que informa que a descricao e invalido
