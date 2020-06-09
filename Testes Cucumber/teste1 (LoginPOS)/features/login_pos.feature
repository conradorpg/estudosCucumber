#language: pt
Funcionalidade: Fazer o login no POS
O ec recebe um acesso para o POS e deve conseguir fazer o login 
Cenário: EC faz login no POS
Dado um pos com o serial number ""
Quando O ID DO OPERADOR é "1"
E o estabelecimento é "pf"
E a senha é ""
E eu aciono o login
Então devo liberar o acesso do POS
