 #language: pt
     @regressivo
     Funcionalidade: Cadastros 
     Como um usuário do site ServeRest
     Quero criar conta 
     Para receber noticias sobre os produtos

     @cadastro_valido
     Cenário: Cadastrar usuário pessoa física com dados válidos
     Dado que acesso o cadastro de usuário
     E preencho os campos do formulário com dados válidos 'eu', 'teste133@gmail.com', '12345'
     Quando confirmo o cadastro
     Então o sistema deve exibir a mensagem de cadastro realizado com sucesso
     
    