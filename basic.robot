*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary

*** Variables ***
${url}          http://automationpractice.com


*** Keywords ***
Nova sessão
    Open Browser                    ${url}              chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser