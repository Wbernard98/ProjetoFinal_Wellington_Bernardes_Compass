require 'capybara/dsl'
class CadastroPage < SitePrism::Page
    set_url '/cadastrarusuarios'

    element :cmp_nome, '#nome'
    element :cmp_email, '#email'
    element :cmp_senha, '#password'
    element :cmp_cadastrar, '#root > div > div > form > div:nth-child(7) > button'
    element :alert, '#root > div > div > form > div:nth-child(3)'#nome obrigatorio
    element :alert, '#root > div > div > form > div:nth-child(4)'#email obrigatorio
    element :alert, '#root > div > div > form > div:nth-child(5)'#password nao pode ficar em branco

    
    def preencher_form_com_dados 
      cmp_nome.set 'wellingtonnn'
      cmp_email.set 'ad0aaaa@gmail.com'
      cmp_senha.set '12345'

    end
    
    def preencher_form_com_dados_informados(nome,email,senha)
      cmp_nome.set nome
      cmp_email.set email
      cmp_senha.set senha
    end

    def clicar_finalizar
      cmp_cadastrar.click
    end
end