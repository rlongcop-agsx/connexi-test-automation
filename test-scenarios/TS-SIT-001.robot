*** Settings ***
Documentation          Login with invalid and valid credentials
Resource               ../resources/kadenaApp.robot
Resource               ../variables/mobileLocators.robot
Resource               ../variables/webLocators.robot
Resource               ../variables/publicCredentials.robot
Test Setup             kadenaApp.Main Web Setup    ${BROWSER}
Test Teardown          kadenaApp.Main Web Teardown

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
Sample test
    [Documentation]    Sample test case
    [Tags]             Sample
    GIVEN I go to web login page    ${BASE_URL}                ${LOGIN_HEADER}
    WHEN I enter                    ${ORDERING_EMAIL}          ${EMAIL}
    AND I enter                     ${VALID_PASSWORD}          ${PASSWORD}   
    WHEN I click                    ${LOGIN_BUTTON}
    THEN I should be redirected     Ordering                   ${MODULES_HEADER_BANNER}
    
