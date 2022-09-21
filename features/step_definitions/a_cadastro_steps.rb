#cadastro de usuário valido

Dado('que acesso o cadastro de usuário') do
    @cadastro_page = CadastroPage.new
    @cadastro_page.load
  end
  
  Dado('preencho os campos do formulário com dados válidos {string}, {string2}, {string3}') do |nome, email, senha|
    @cadastro_page.preencher_form_com_dados
  end
  
  Quando('confirmo o cadastro') do
    @cadastro_page.clicar_finalizar
  end
  
  Então('o sistema deve exibir a mensagem de cadastro realizado com sucesso') do
    
    expect(@cadastro_page).to have_content 'Cadastro realizado com sucesso'
  end
 

####cadastro invalido

Dado('eu preencha os campos com {string}, {string}, {int}') do |nome, email, senha|
    @cadastro_page.preencher_form_com_dados_informados(nome, email, senha)
  end
  
  Então('o sistema deve exibir a mensagem de confirmação {string}') do |msg_sucesso|
    expect(@cadastro_page).to have_content msg_sucesso
  end
  Dado('preencha os campos com {string}, {string}, {float}') do |nome, email, senha|
    @cadastro_page.preencher_form_com_dados_informados(nome, email, senha)
  end

  Então('deve exibir no topo do formulário a mensagem de erro {string}') do |msg_falha|
    expect(@cadastro_page).to have_content msg_falha
  end

  Dado('preencho os campos do formulário com dados válidos {string}, {string}, {string}') do |nome, email, senha|
    @cadastro_page.preencher_form_com_dados_informados(nome, email, senha)
  
  end
  
  Dado("eu preencha os campos com {string}, {string}, {string}") do |nome, email, senha|
    @cadastro_page.preencher_form_com_dados_informados(nome, email, senha)
    
  end
  Então('permanecer na página de cadastro') do
    expect(@cadastro_page).to have_current_path '/cadastrarusuarios'
  end
 
