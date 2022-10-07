Dado('que esteja na pagina de cadastro') do
  @home_page = Cadastro.new
  @home_page.load
end

#Cadastro usuário comum massa de dados dinamica
 Quando('informar os campos {string},{string},{string}') do |nome_faker, email_faker, senha_faker|
   #@home_page.cadastro_user(nome,email,senha)
  novo = Factory::Dynamic.register_new_user
  @home_page.cadastro_user(novo)
end
# cadastro comum chumbado
#Quando('informar os campos {string},{string},{string}') do |nome, email, senha|
##@home_page.cadastro_user(nome,email,senha)
#end
Quando('exibir a mensagem {string}') do |msg|
  expect(@home_page).to have_content(msg)
end

Então('cadastro deverá ser concluido') do
  expect(@home_page).to have_current_path("https://front.serverest.dev/home")
end

