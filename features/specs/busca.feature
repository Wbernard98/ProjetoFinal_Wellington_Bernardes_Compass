#language: pt
@search
Funcionalidade: Busca
COMO um usuario do Ecommerce Serverest
QUERO poder buscar por diferentes produtos
PARA poder efetuar uma compra

    Contexto: Estar na home
    Dado que esteja na home
    E esteja logado

    @search_for_product
    Cenário: Buscar por um produto existente
     Quando realizar uma busca por um produto existente
     Então  deverão ser retornado resultados na busca

    