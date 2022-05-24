Feature: User

  As a usuario do sistema Sistema-Avaliacao
  I want to me cadastrar, logar e editar meu cadastro
  so that eu nao tenha que fazer isso manualmente

  Scenario: cadastro no sistema
    Given Eu estou na pagina de cadastro
    And Eu preencho login com o email "evandro@gmail.com", a senha com "123456" e confirmacao de senha com "123456"
    When Eu clico em cadastrar
    Then Eu vejo que o cadastro do usuario de email "evandro@gmail.com" foi registrado

  Scenario: logar no sistema
    Given O usuario de login "dimas@gmail.com" e senha "123456" existe
    Given Eu estou na pagina de login
    And Eu preencho o campo de login com o email "dimas@gmail.com" e o campo senha com "123456"
    When Eu clico em logar
    Then Eu vejo que o login do usuario de email "dimas@gmail.com" foi efetuado