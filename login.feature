Feature: Fazer Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Scenario: Login Valido
Given que eu esteja na pagina de Login
When eu inserir o usuario "silva@silva.com.br" e a senha "1234"
And clicar no botao "Entrar"
Then eu devo ser direcionado para a tela de meus pedidos

Scenario: Login invalido
Given que eu esteja na pagina de Login
When eu inserir o usuario "silca@silva.com.br" e a senha "1234"
And clicar no botao "Entrar"
Then o sistema deve exibir a mensagem "Usuario ou senha invalidos"

Scenario Outline: Login valido
When eu digitar o <usuario>
And a <senha>
Then deve ser direcionado para a tela de meus pedidos


Examples:
    | usuario| senha | 
    | silva@silva.com.br | 1234  | 