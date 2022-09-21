Dado('que esteja na home') do
    @home_page = Home.new
    @home_page.load
    
  end
  Dado('esteja logado') do
    @app.login.login("ad0aaaa@gmail.com", "12345")
  end

  Quando('realizar uma busca por um produto existente') do
    @home_page.search_for('Carmen Bayer')
    @home_results_page = Pages::HomeResults.new
    
  end
  
  Então('deverão ser retornado resultados na busca') do
    expect(@home_results_page).to have_products('Carmen Bayer')
  end
