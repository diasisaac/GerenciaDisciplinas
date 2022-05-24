Feature: Avaliacao

  As a usuario do sistema sistema-avaliacao
  I want to cadastrar novas avaliacoes das atividades para os alunos
  so that eu possa ter controle de atividades avaliativas e pontuacoes dos alunos

  Scenario: criar avaliacao de uma atividade para um aluno
    Given O usuario de login "isaac8@gmail.com" e senha "123456" existe
    And Eu estou logado como usuario de email "isaac8@gmail.com"
    And A turma "2C" de ano letivo "2022" existe
    And A disciplina de nome "Programacao", ano letivo "2022" e turma "2C" existe
    And A atividade de titulo "Modos Verbais", descricao "Faça uma poesia de tema livre", bimestre "1", data "2022-05-30" da disciplina de nome "Programacao"
    And O aluno de nome "Pedro" da turma "2C" existe
    And Eu estou na pagina de criar uma avaliacao
    When Eu preencho pontos com "3", observacoes com "Errou muito", seleciono aluno de nome "Pedro" e seleciono atividade de titulo "Modos Verbais"
    And Eu clico em criar avaliacao
    Then Eu vejo que a avaliacao foi criada com sucesso
