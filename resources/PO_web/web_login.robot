*** Settings ***
Library        SeleniumLibrary
Library        OperatingSystem

*** Keywords ***
Navigate to login page
    [Arguments]      ${url}
    Go To            ${url}

Verify Page Loaded
    [Arguments]       ${locator}
    SeleniumLibrary.Wait Until Page Contains     ${locator}  

Click login
    [Arguments]        ${locator}
    SeleniumLibrary.Click Element      ${locator}     

Enter credential
    [Arguments]        ${credential}     ${locator}
    SeleniumLibrary.Input Text         ${locator}        ${credential}