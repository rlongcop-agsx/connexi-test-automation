*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
sample loop
    ${elements}=    SeleniumLibrary.Get WebElements    table > tbody
    Log    ${elements}