
class Home < SitePrism::Page        
    set_url '/login'                           
    element :btn_open_search, '#root > div > div > div.col-12 > div > div:nth-child(3) > button'
    element :input_search, '#root > div > div > div.col-12 > div > div.col-8 > input'
    element :botao,  "button[data-testid='botaoPesquisar']"
    ##Login##
  element :camp_email, '[data-testid="email"]'
  element :camp_senha, '[data-testid="senha"]'
  element :btn_entrar, '[data-testid="entrar"]'

  ###Adicionar Produto a lista de Compras###
  element :btn_add_list, "button[data-testid='adicionarNaLista']"

    ###Logar###
    def login(email,senha) 
     camp_email.set email
     camp_senha.set senha
     btn_entrar.click
    end
    
    def search_for(product)
      btn_open_search.click 
      input_search.set product
      btn_open_search.click 
   end
   ###Adicionar a lista de compras###
   def add_pdt_list(produto)
    btn_add_list.click
 end
end
 

