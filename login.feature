#language: pt

Funcionalidade: Fazer Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Cenario: Login Valido
Dado que eu esteja na pagina de Login
Quando eu inserir o usuario "silva@silva.com.br" e a senha "1234"
E clicar no botao "Entrar"
Entao eu devo ser direcionado para a tela de meus pedidos

Cenario: Login invalido
Dado que eu esteja na pagina de Login
Quando eu inserir o usuario "silca@silva.com.br" e a senha "1234"
E clicar no botao "Entrar"
Entao o sistema deve exibir a mensagem "Usuario ou senha invalidos"

Esquema do Cenario: Login valido
Quando eu digitar o <usuario>
E a <senha>
Entao deve ser direcionado para a tela de meus pedidos


Exemplos:
    | usuario| senha | 
    | silva@silva.com.br | 1234  | 