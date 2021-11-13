Scenario: Excluir todos os produtos inseridos no carrinho
Given Eu estou na página "meu carrinho"
And Eu estou logado como usuário "Wilton"
And Eu tenho no carrinho o produto "Geladeira"
And Eu tenho no carrinho o produto "Máquina de lavar"
And Eu tenho no carrinho o produto "Macbook Pro 16"
When Eu tento excluir todos os produtos inseridos no carrinho
And Eu confirmo a decisão de remover todos os itens do carrinho
Then Eu vejo o carrinho vazio

Scenario: Confirmar a compra dos produtos no carrinho
Given Eu estou na página “meu carrinho”
And Eu estou logado como  usuário “wilton”
And Eu tenho no carrinho o produto "Máquina de lavar"
When Eu escolho finalizar a compra no carrinho
And Eu confirmo a finalização da compra
Then É mostrado na tela uma mensagem de compra confirmada
And Eu consigo ver o código da compra

Scenario: Usuário colocar 0 para a quantidade de um item inserido no carrinho
Given Eu estou na página "meu carrinho"
And Eu estou logado como usuário "Matheus"
And Eu tenho no carrinho o produto "Geladeira"
And Eu tenho no carrinho o produto "iPhone 13 Pro Max"
And O produto "Geladeira" tem "1"  de quantidade em itens
And O produto "iPhone 13 Pro Max" tem "1" de quantidade em itens
When Eu coloco para "0" a quantidade de itens do produto "Geladeira"
Then Eu vejo o produto "Geladeira" ser removido do carrinho
And Eu vejo o produto "iPhone 13 Pro Max" com "1" de quantidade em itens no carrinho

Scenario: Usuário não logado tenta realizar compra do carrinho
Given Eu estou na página “meu carrinho”
And Eu tenho no carrinho o produto "Geladeira"
And Não há nenhum usuário logado
When Eu tento finalizar a compra do produto
Then É mostrado na tela uma mensagem de que  não há nenhum usuário logado
