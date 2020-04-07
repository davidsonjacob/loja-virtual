*** Settings ***
Resource        basic.robot
Resource        basic.robot


Test Setup          Nova sessão
Test Teardown       Encerra sessão



*** Test Cases ***
Realizar Login
    Go To                               ${url}
    Capture Page Screenshot
    Click Element                       class:login
    sleep   2
    Capture Page Screenshot
    Page Should Contain                 Already registered?
    Input Text                          email           rotot.test@teste.com
    Input Text                          passwd          123456
    Capture Page Screenshot
    Click Element                       id:SubmitLogin
    sleep   3
    Page Should Contain                 My account
