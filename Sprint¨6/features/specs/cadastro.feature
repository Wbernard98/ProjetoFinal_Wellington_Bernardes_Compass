# language: pt

@regression
@cadastro
Funcionalidade: Cadastro
COMO novo usuário do Serverest 
QUERO me cadastrar 
PARA realizar compras

Contexto: Acessar pagina de cadastro
  Dado que esteja na pagina de cadastro

@adicionar_usuario
Cenário: Cadastro de usuário pf
  Quando informar os campos "<nome>","<email>","<senha>"
  E exibir a mensagem "<msg>"
  Então cadastro deverá ser concluido

  Exemplos:
  |nome   |email                |senha |msg                           |
  |caique |caique@hotmail.com   |100000|Cadastro realizado com sucesso|
  
@adicionar_usuario_administrador
Cenário: Cadastro de usuário adm
  Quando informar os campos "<nome>","<email>","<senha>"
  Então cadastro deverá ser concluido

  Exemplos:
  |nome   |email            |senha |
  |debora |deb@gmail.com    |505505|