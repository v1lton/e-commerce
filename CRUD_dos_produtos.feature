Scenario: Usuário vendedor envia o anúncio normalmente
Given Eu estou na página "adicionar novo produto" 
When Eu preencho "Microondas" para "nome do produto"
And Eu preencho "ab12u" para "código do produto"
And Eu preencho "800" para "valor do produto"
And Eu insiro uma imagem de um "Micrrondas" para o produto
And Eu confirmo o cadastro do produto
Then Eu recebo uma mensagem de confirmação
And Eu consigo ver a página a do produto
And Eu consigo ver que o produto tem o nome "microondas"
And Eu consigo ver que o produto custa "R$800"

Scenario: Procurar por um produto já cadastrado
Given Existe um produto cadastrado com nome "Geladeira"
And Esse produto custa "R$2000"
And Eu estou na página "buscar produto"
When Eu procuro por um produto com nome "Geladeira"
Then Eu continuo na página "buscar produto"
And Eu consigo observar um produto com nome "Geladeira"
And Eu consigo observar que o produto custa "R$2000"
And Eu consigo observar a imagem de uma "Geladeira"

Scenario: Atualizar dados de um produto já cadastrado
Given Existe um produto cadastrado com nome "Fogão elétrico"
And Esse produto tem o código "2f4g"
And Esse produto custa "R$1800"
And Esse produto tem a imagem de um "Fogão elétrico" associado
And Eu estou na página "Editar produto"
When Eu mudo o valor de "Fogão elétrico" para "R$1600"
Then Eu recebo uma mensagem de confirmação
And Eu consigo ver a página do produto
And Eu consigo ver que o produto tem o nome "Fogão elétrico"
And eu consigo ver que o produto custa "R$1600"

Scenario: Excluir um produto já cadastrado
Given Existe um produto cadastrado com nome "Forno elétrico"
And Esse produto tem o código "a3b7"
And Esse produto custa "R$800"
And Esse produto tem a imagem de um "Forno elétrico" 
And Eu estou na página "Editar produto"
When Eu seleciono a opção para excluir o produto "Forno elétrico"
And Eu confirmo a exclusão do produto
Then Eu recebo uma mensagem de confirmação
And Eu retorno para a página "Início"