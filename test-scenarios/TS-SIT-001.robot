*** Settings ***
Documentation          Login with invalid and valid credentials
Resource               ../resources/kadenaMobileApp.robot
Resource               ../resources/kadenaWebApp.robot
Resource               ../resources/common.robot
Resource               ../variables/mobileLocators.robot
Resource               ../variables/webLocators.robot
Resource               ../variables/publicCredentials.robot
# Test Setup             kadenaApp.Main Web Setup    ${BROWSER}
Test Setup             common.Main Mobile Setup
Test Teardown          common.Main Mobile Teardown

# Terminal default command: 
# robot -d reports test-scenarios/[put specific scenario file]
# Example: robot -d reports test-scenarios/TS-SIT-001.robot

# To change browser add the following to the terminal command:
# -v BROWSER:[chosen browser]
# Available: Chrome, Edge, Safari, Firefox

# To run a specific tag:
# -i [tag name]
# Example: -i Sample

*** Test Cases ***
Test Case 1: Login with invalid email on the web custom app
    [Documentation]                          Login with invalid email
    [Tags]                                   M0MAIN-SIT-001
    ...                                      WEB
    GIVEN I go to web login page             ${BASE_URL}                ${LOGIN_HEADER}
    WHEN I enter in web                      invalid@email.com          ${EMAIL}
    AND I enter in web                       ${VALID_PASSWORD}          ${PASSWORD}   
    WHEN I click in web                      ${LOGIN_BUTTON}
    THEN Message should display in web       Invalid username or password.

Test Case 2: Login with invalid password on the web custom app
    [Documentation]                          Login with invalid password
    [Tags]                                   M0MAIN-SIT-001    
    ...                                      WEB
    GIVEN I go to web login page             ${BASE_URL}                ${LOGIN_HEADER}
    WHEN I enter in web                      ${ORDERING_EMAIL}          ${EMAIL}
    AND I enter in web                       invalid_password           ${PASSWORD}   
    WHEN I click in web                      ${LOGIN_BUTTON}
    THEN Message should display in web       Invalid username or password.

Test Case 3: Login with invalid email on the mobile custom app
    [Documentation]                          Login with invalid email
    [Tags]                                   M0MAIN-SIT-001
    ...                                      MOBILE
    [Setup]                                  common.Main Mobile Setup
    GIVEN I navigate to mobile login page    ${MOBILE_LOGIN_BTN}
    WHEN I enter in mobile                   invalid@email.com          ${EMAIL}
    AND I enter in mobile                    ${VALID_PASSWORD}          ${PASSWORD}   
    WHEN I click in mobile                   ${LOGIN_BUTTON}
    THEN Message should display in mobile    Invalid username or password.
    [Teardown]                               common.Main Mobile Teardown

Test Case 4: Login with invalid password on the mobile custom app
    [Documentation]                 Login with invalid password 
    [Tags]                          M0MAIN-SIT-001    
    ...                             MOBILE
    [Setup]                         common.Main Mobile Setup
    GIVEN I navigate to mobile login page    ${MOBILE_LOGIN_BTN}
    WHEN I enter in mobile                   ${ORDERING_EMAIL}          ${EMAIL}
    AND I enter in mobile                    invalid_password           ${PASSWORD}   
    WHEN I click in mobile                   ${LOGIN_BUTTON}
    THEN Message should display in mobile    Invalid username or password.
    [Teardown]                      common.Main Mobile Teardown
    
