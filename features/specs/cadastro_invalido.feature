#language: pt
     @regressivo
     Funcionalidade: Cadastro Invalidos
     Como um usuário do site ServeRest
     Quero criar conta 
     Para receber noticias sobre os produtos


     @cadastro_invalido
     Esquema do Cenário: Não permitir cadastrar usuário com dados inválidos
     Dado que acesso o cadastro de usuário
     E eu preencha os campos com <nome>, <email>, <senha>
     Quando confirmo o cadastro
     Então deve exibir no topo do formulário a mensagem de erro <msg_falha>
     E permanecer na página de cadastro
    Exemplos:
     | nome     | email                  |senha | msg_falha                           |
     | ""       | "aloha@teste.com.br"   |123456| "Nome é Obrigatório "               |
     | "Flavio" | ""                     |123456|"Email não pode ficar em branco"     |
     | "Felipe" | "zacarias@teste.com.br"|  ""  | "Password não pode ficar em branco" |
   