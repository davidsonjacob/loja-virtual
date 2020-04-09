*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PO/criar_usuario.robot
Resource            ../resources/PO/pesquisa.robot
Resource            ../resources/PO/realizar_login.robot
Resource            ../resources/PO/realizar_compra.robot
Test Setup          Nova sessão
Test Teardown       Encerra sessão


*** Test Case ***
Caso de Teste 01
    criar_usuario.Cadastrar novo usuário
    pesquisa.Pesquisar produto
    pesquisa.Pesquisar produto inexitente
    realizar_login.Realizar Login
    realizar_compra.Adiciona produto no carrinho
    realizar_compra.Remover produto do carrinho
    realizar_compra.Confirmar Pagamento

