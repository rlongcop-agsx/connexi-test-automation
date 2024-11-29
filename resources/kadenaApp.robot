*** Settings ***
Documentation           All PO should be redirected here 
Resource                common.robot
Resource                PO_mobile/mobile_login.robot
Resource                PO_web/web_login.robot
Resource                PO_web/web_home.robot

*** Keywords ***
Main Web Setup
    [Arguments]    ${browser}
    common.Main Web Setup              ${browser}

Main Web Teardown
    common.Main Web Teardown

Main Mobile Setup
    common.Main Mobile Setup

Main Mobile Teardown
    common.Main Mobile Teardown

I go to web login page
    [Arguments]                         ${url}    ${locator}
    web_login.Navigate to login page    ${url}
    web_login.Verify page loaded        ${locator}

I enter
    [Arguments]                         ${credentials}    ${locator}
    web_login.Enter credential          ${credentials}    ${locator}

I click
    [Arguments]                         ${locator}
    web_login.Click login               ${locator}

I should be redirected
    [Arguments]                         ${text}    ${locator}
    web_home.Verify header text         ${text}    ${locator}

    



