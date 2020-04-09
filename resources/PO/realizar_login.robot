*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Realizar Login
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
