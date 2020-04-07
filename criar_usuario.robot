*** Settings ***
Resource        basic.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão



*** Test Cases ***
Cadastrar novo usuário
    Go To                               ${url}
    Click Element                       class:login
    Page Should Contain                 Create an account

    ${email} =          FakerLibrary.email
    ${first_name} =     FakerLibrary.first_name
    ${last_name} =      FakerLibrary.last_name
    ${phone_number} =   FakerLibrary.Numerify  +%%-%%%%-%%%%
    ${address} =        FakerLibrary.Street Address
    ${city} =           FakerLibrary.city
    ${zipcode} =        FakerLibrary.zipcode

    Input Text                          email_create        ${email}
    #Input Text                          email_create        rotot.test@teste.com

    Capture Page Screenshot

    Click Element                       id:SubmitCreate
    sleep   3

    Capture Page Screenshot

    Select Radio Button                 id_gender       id_gender1
   
  

    Input Text                          customer_firstname      ${first_name}
    Input Text                          customer_lastname       ${last_name} 

    Input Text                          passwd                  123456
    
    Capture Page Screenshot


    Input Text                          address1                ${address}

    Capture Page Screenshot

    Input Text                          city                    ${city}
    

    Select from List by Label           id_state                Indiana

    Capture Page Screenshot

    Input Text                          postcode                ${zipcode}    

    Select from List by Value           id_country              21

    Capture Page Screenshot

    Input Text                          phone_mobile            ${phone_number}

    Capture Page Screenshot

    Click Element                       id:submitAccount

    Capture Page Screenshot

    Click Element                       class:logout

    Capture Page Screenshot