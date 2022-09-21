class Home <SitePrism::Page
    set_url '/home'
    element :btn_open_search, '#root > div > div > div.col-12 > div > div:nth-child(3) > button'
    element :input_search, '#root > div > div > div.col-12 > div > div.col-8 > input'
    element :botao, '#root > div > div > div.col-12 > div > div:nth-child(3) > button'
  
    def search_for(product)
        btn_open_search.click 
        input_search.set product
        btn_open_search.click 
     end
     
    def logged_user
      message.text  
    end
end