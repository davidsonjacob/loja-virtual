*** Settings ***
Resource        basic.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Pesquisar produto
    Go To                   ${url}
    Input Text              id:search_query_top     blouse
    Click Element           class:button-search
    Page Should Contain     Blouse
    sleep       3

Pesquisar produto inexitente
    [tags]      produto_nao_cadastrado
    Go To                   ${url}
    Input Text              id:search_query_top     blousi     
    Click Element           class:button-search

    ${message}=             Get WebElement                 class:alert-warning
    Should Contain          ${message.text}                No results were found for your search "blousi"
    sleep       3
