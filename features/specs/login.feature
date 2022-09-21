#language: pt
Funcionalidade: Login
    
  Contexto:Na tela de login
   Dado que esteja na página de login
  

  @login_novo
  Esquema do Cenario: Falha no login
    Quando realizar o login com <email> e <senha>
    Então devo aparecer a mensagem de alerta <msg>

    Exemplos:
      | email                           | senha               | msg                                |
      | "emailparateste12@hotmail.com"  | "senha errada"      | "Email e/ou senha inválidos"       |
      | "usuário certo"                 | "1090807040"        | "Email deve ser um email válido"   |
      | ""                              | "4050607080"        | "Email Email é obrigatório"   |
      | "novidadeds@gmail.com"          | ""                  | "Password não pode ficar em branco"| 
