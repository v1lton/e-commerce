Cadastro/login de cliente e vendedor

Scenario: Login feito com sucesso

    Given Eu estou na página de “login do usuário”
    And Os campos de ”login” e “senha” estão vazios 
    When Eu realizo login como usuário “matheus” e senha “1234”
    Then Eu sou redirecionado para a “página inicial” da aplicação
    And Eu consigo vê que estou logado como usuário “matheus”

Scenario : Login com erro de senha

    Given Eu estou na página de “login do usuário”
    And Os campos de “login” e “senha” estão vazios 
    When Eu tento realizar login como usuário “matheus” e senha “1243”
    Then Eu continuo na página de “login do usuário”
    And É mostrado na tela uma mensagem de erro de senha incorreta


Scenario : Cadastro usuário feito com sucesso

    Given Eu estou na página de “cadastro do usuário”
    And Os campos de “nome”, “CPF”, “email”, “data de nascimento”, “endereço” e “senha” estão vazios
    When Eu realizo cadastro com os campos  “matheus”, “123456789”, “matheus@gmail.com“, “27/06/2000”, “rua teste”  e “1234”
    Then É mostrado na tela uma mensagem de cadastro realizado com sucesso
    And Eu sou redirecionado para a tela de “login do usuário”

Scenario : Cadastro com email já cadastrado

    Given Eu estou na página de “cadastro do usuário”
    And Os campos de “nome”, “CPF”, “email”, “data de nascimento”, “endereço” e “senha” estão vazios
    When Eu tento realizar cadastro com os campos “matheus”, “123456789”, “matheus@gmail.com“, “27/06/2000”, “rua teste”  e “1234”
    Then Eu continuo na página de “cadastro do usuário”
    And É mostrado na tela uma mensagem de erro de email já cadastrado
