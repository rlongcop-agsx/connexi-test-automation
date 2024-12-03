*** Settings ***
Library                                          AppiumLibrary
Library                                          OperatingSystem

*** Keywords ***
Verify page loaded
    [Arguments]                                  ${locator}
    AppiumLibrary.Wait Until Element Is Visible  ${locator}    

Click login
    [Arguments]                                  ${locator}
    AppiumLibrary.Click Element                  ${locator}     

Enter credential
    [Arguments]                                  ${credential}     ${locator}
    AppiumLibrary.Input Text                     ${locator}        ${credential}
    
Validate Error Message
    [Arguments]                                  ${text}
    AppiumLibrary.Page Should Contain Text       ${text}