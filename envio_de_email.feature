Scenario: Envio de anúncios com sucesso
Given O sistema está configurado para gerar "3" promoções por dia
And Os emails estão programados para às "12hrs"
And Existem "10" clientes com "e-mail" cadastrados para recebimento de promoções
And Existem "5" produtos cadastrados no banco de dados
When Chega às "12hrs"
Then Os e-mails são enviados pelo sistema
And Os "10" clientes com "e-mail" cadastrado recebem o e-mail enviado
And Esses emails contém "3" promoções

Scenario: Envio de anúncio com poucos produtos cadastrados
Given O sistema está configurado para gerar "3" promoções por dia
And Os emails estão programados para às "12hrs"
And Existem "10" clientes com "e-mail" cadastrados para recebimento de promoções
And Existem "2" produtos cadastrados no banco de dados
When Chega às "12hrs"
Then Os e-mails são enviados pelo sistema
And Os "10" clientes com "e-mail" cadastrado recebem o e-mail enviado
And Esses emails contém "2" promoções

Scenario: Envio de anúncio sem clientes cadastrados no sistema
Given O sistema está configurado para gerar "3" promoções por dia
And Os emails estão programados para às "12hrs"
And Não existem clientes com "e-mail" cadastrados para recebimento de promoções
And Existem "5" produtos cadastrados no banco de dados
When Chega às "12hrs"
Then Os e-mails são enviados pelo sistema
And Ninguém recebe o email com as promoções

Cenário 4: Envio de anúncio sem produtos cadastrados no sistema e com clientes cadastrados
Given O sistema está configurado para gerar "3" promoções por dia
And Não existem produtos cadastrados no banco de dados
And Não existem promoções cadastradas no sistema
And Os emails estão programados para às "12hrs"
And Existem "10" clientes com "e-mail" cadastrados para recebimento de promoções
When Chega às "12hrs" do dia
Then Uma mensagem de erro é enviada para os vendedores
And Essa mensagem diz "É necessário cadastrar produtos para envio de mail de promoções"