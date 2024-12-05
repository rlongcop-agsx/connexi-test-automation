*** Settings ***
Resource               ../resources/kadenaMobileApp.robot
Resource               ../resources/common.robot
Resource               ../variables/mobileLocators.robot
Resource               ../variables/publicCredentials.robot
Test Setup             common.Main Mobile Setup
Test Teardown          common.Main Mobile Teardown

*** Test Cases ***
Test Case 3: Login with invalid email on the mobile custom app
    [Documentation]                          Login with invalid email
    [Tags]                                   M0MAIN-SIT-001
    ...                                      MOBILE
    GIVEN I navigate to mobile login page    ${MOBILE_LOGIN_BTN}
    WHEN I enter in mobile                   invalid@email.com          ${MOBILE_EMAIL}
    AND I enter in mobile                    ${VALID_PASSWORD}          ${MOBILE_PASSWORD}   
    WHEN I click in mobile                   ${MOBILE_INNER_LOGIN_BTN}
    THEN Message should display in mobile    Invalid username or password.
