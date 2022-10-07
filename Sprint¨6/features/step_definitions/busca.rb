Dado('que esteja na home') do
    @home_page = Home.new
    @home_page.load
    
  end
  Dado('esteja logado') do
    @home_page.login("caique@hotmail.com", "100000")
  end

  Quando('realizar uma busca por um produto existente') do
    product_for_search = Factory::Static.static_data('valid_product')
    @home_page.search_for(product_for_search)
    @home_results_page = Pages::HomeResults.new
    
  end
  Quando('deverão ser retornado resultados na busca') do
    expect(@home_results_page).to have_products('Logitech MX Vertical')
  end
  Então('adicionar o produto na lista de compras') do
    expect(@home_page).to have_current_path("https://front.serverest.dev/minhaListaDeProdutos")
  end

 
  