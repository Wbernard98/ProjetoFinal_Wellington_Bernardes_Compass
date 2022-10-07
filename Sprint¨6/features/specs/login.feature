# language : pt

@regression
@login
Funcionalidade: Login
COMO usuário do Serverest
QUERO realizar a autenticação
PARA acessar a home da pagina

Contexto: Acessar página de Login
  Dado que a página de login esteja aberta

@login_valido
Cenário: login valido
  Quando realizar login informando "<email>","<senha>" ja cadastrados
  Então login deverá ser concluido com sucesso

  Exemplos:
  |email                        |senha |
  |caique@hotmail.com           |100000|
 

@invalido
Cenário: login invalido
    Quando realizar login informando "<email>","<senha>" não cadastrados
    Então deverá exibir a mensagem "<msg>"

    Exemplos:
  |email                |senha|msg                               |
  |cristina@gmail.com   |12345|Email e/ou senha inválidos        |
  |eduardo@hotmail.com  |     |Password não pode ficar em branco |
  |                     |44444|Email é obrigatório               |