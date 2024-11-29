*** Settings ***
Library        AppiumLibrary
Library        OperatingSystem

*** Keywords ***
Verify page loaded
    [Arguments]        ${locator}
    Wait Until Element Is Visible        ${locator}    

Click login
    [Arguments]        ${locator}
    AppiumLibrary.Click Element      ${locator}     

Enter credential
    [Arguments]        ${credential}     ${locator}
    Input Text         ${locator}        ${credential}