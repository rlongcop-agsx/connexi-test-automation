*** Settings ***
Documentation          Login with invalid and valid credentials Prerequisites: N/A
Resource               ../resources/kadenaApp.robot
Resource               ../variables/mobileVariables.robot
Resource               ../variables/webVariables.robot
Resource               ../variables/kadenaCredentials.robot
Test Setup             kadenaApp.Main Web Setup    ${BROWSER}

# Terminal default command: 
# robot -d reports test-scenarios/[put specific scenario file]
# Example: robot -d reports test-scenarios/TS-SIT-001.robot

*** Variables ***
${BROWSER}=        Edge
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
    GIVEN I go to web login page    ${LOGINPAGE_URL}           ${LOGIN_HEADER}
    WHEN I enter                    ${VALID_ORDERING_EMAIL}    ${EMAIL}
    AND I enter                     ${VALID_PASSWORD}          ${PASSWORD}   
    THEN I should be redirected     Ordering                   ${MODULES_HEADER_BANNER} 
    
