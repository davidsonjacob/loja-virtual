*** Settings ***
Resource        basic.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão



*** Test Cases ***
Realizar Compra
    #Realiza o Login na loja
    Go To                               ${url}
    Capture Page Screenshot
    Click Element                       class:login
    sleep   2
    Capture Page Screenshot
    Page Should Contain                 Already registered?
    Input Text                          email           rotot.test@teste.com
    Input Text                          passwd          123456
    Capture Page Screenshot
    Click Button                       id:SubmitLogin
    sleep   2
    Page Should Contain                 My account

    #Adiciona produto no carrinho
    Click Element                       css=a[title="Women"]
    Page Should Contain                 Women 
    sleep   2
    Click Element                       css=a[data-id-product="1"]
    Capture Page Screenshot
    sleep   3
    Page Should Contain                 Product successfully added to your shopping cart				
    Click Element                       css=span[title="Continue shopping"]
    Capture Page Screenshot
    sleep   5
    Click Element                       css=#block_top_menu > ul > li:nth-child(3) > a
    Capture Page Screenshot
    sleep   3
    Click Element                       css=a[style="background:#5D9CEC;"]
    Capture Page Screenshot
    sleep   3
    Page Should Contain                 Faded Short Sleeve T-shirts
    Click Element                       class:product_quantity_up
    Capture Page Screenshot
    Click Button                        name:Submit 
    Capture Page Screenshot  
    sleep   3
    Click Element                       css=a[title="Proceed to checkout"]
    Capture Page Screenshot
    Open Context Menu                   css=#block_top_menu > ul > li:nth-child(2) > a     
    Capture Page Screenshot 
    Click Element                       css=#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(2) > a
    Capture Page Screenshot
    sleep   3
    Click Element                       css=a[data-id-product="4"]   
    Capture Page Screenshot 
    sleep   3
    Click Element                       css=a[title="Proceed to checkout"]  
    Capture Page Screenshot
    sleep   3

    # Remover produto do carrinho
    Click Element                       id:1_1_0_295884
    Capture Page Screenshot

    Click Element                       css=#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium
    Capture Page Screenshot
    Click Button                        name:processAddress
    Capture Page Screenshot
    Select Checkbox                    css:input[value='1']    
    Capture Page Screenshot
    Click Element                       css=#form > p > button  
    Capture Page Screenshot
    #Confirmar Pagamento
    Click Element                       css=a[title="Pay by bank wire"]
    Page Should Contain                 Bank-wire payment.
    Capture Page Screenshot
    Click Element                       css=#cart_navigation > button
    Page Should Contain                 Order confirmation
    Capture Page Screenshot










