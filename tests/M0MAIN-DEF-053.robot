*** Settings ***
Resource               ../resources/common.robot
Resource               ../variables/publicCredentials.robot
Resource               ../variables/webLocators.robot
Resource               ../resources/kadenaWebApp.robot
Documentation          For bug fix verification, will run 100 iterations to test logout 
Test Setup             common.Main Web Setup    ${BROWSER}
Test Teardown          common.Main Web Teardown

*** Test Cases ***
Test Case: "Sign in Tableau Cloud" displays when navigating to Forecasting/Supply Planning
    [Documentation]                                "Sign in Tableau Cloud" displays when 
    ...                                            navigating to Forecasting/Supply Planning
    [Tags]                                         M0MAIN-DEF-053
    Repeat Keyword    100    Run M0MAIN-DEF-053    Forecasting
    Repeat Keyword    100    Run M0MAIN-DEF-053    Supply Planning

*** Keywords ***
Run M0MAIN-DEF-053
    [Arguments]        ${TABLEAU-PAGE}
    GIVEN I go to web login page           ${BASE_URL}    ${LOGIN_HEADER}
    AND I enter in web                     ${${TABLEAU-PAGE}_EMAIL}    ${EMAIL}
    AND I enter in web                     ${VALID_PASSWORD}    ${PASSWORD}
    WHEN I click in web                    ${LOGIN_BUTTON}
    AND Message should display in web      Welcome
    WHEN I click the link                  css=img[alt="${TABLEAU-PAGE}"]
    THEN I should be redirected in web     ${TABLEAU-PAGE}    ${MODULES_HEADER_BANNER}
    Sleep    5s
    [Teardown]    Logout

Logout
    SeleniumLibrary.Capture Page Screenshot
    Click Link    log out
    SeleniumLibrary.Element Should Be Visible    css=div.inner-container