*** Settings ***
Documentation                           For web POs
Resource                                PO_web/web_home.robot
Resource                                PO_web/web_login.robot

*** Keywords ***
I go to web login page
    [Arguments]                         ${url}    ${locator}
    web_login.Navigate to login page    ${url}
    web_login.Verify page loaded        ${locator}

I enter in web
    [Arguments]                         ${credentials}    ${locator}
    web_login.Enter credential          ${credentials}    ${locator}

I click in web
    [Arguments]                         ${locator}
    web_login.Click login               ${locator}

I should be redirected in web
    [Arguments]                         ${text}    ${locator}
    web_home.Verify header text         ${text}    ${locator}

Message should display in web
    [Arguments]                         ${text}
    web_login.Validate Error Message    ${text}