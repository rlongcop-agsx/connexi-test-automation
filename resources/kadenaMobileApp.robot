*** Settings ***
Documentation           All PO should be redirected here 
Resource                common.robot
Resource                PO_mobile/mobile_home.robot
Resource                PO_mobile/mobile_login.robot

*** Keywords ***
I navigate to mobile login page
    [Arguments]                         ${locator}    
    mobile_login.Verify page loaded     ${locator}
    mobile_login.Click login             ${locator}

I enter in mobile
    [Arguments]                         ${credentials}    ${locator}
    mobile_login.Enter credential       ${credentials}    ${locator}

I click in mobile
    [Arguments]                         ${locator}
    mobile_login.Click login            ${locator}

Message should display in mobile
    [Arguments]                             ${text}
    mobile_login.Validate Error Message     ${text}
    



