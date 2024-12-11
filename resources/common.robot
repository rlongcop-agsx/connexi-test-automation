*** Settings ***
Resource       ../variables/mobileLocators.robot
Library        AppiumLibrary
Library        SeleniumLibrary
Library        OperatingSystem
Library        Screenshot

*** Variables ***
           

*** Keywords ***
Custom Capture Page Screenshot
    [Arguments]    @{tags}
    ${tags_string}=    Evaluate    " ".join(${tags})
    Run Keyword If    "WEB" in ${tags_string}    SeleniumLibrary.Capture Page Screenshot
    Run Keyword If    "MOBILE" in ${tags_string}    AppiumLibrary.Capture Page Screenshot

Main Mobile Setup
    [Documentation]                        This is the main setup for the kadena mobile app
    Empty Directory                        reports/screenshots
    Screenshot.Set Screenshot Directory    reports/screenshots

    Open Application    ${APPIUM_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    automationName=${AUTOMATION_NAME}
    ...    app=${APP}
    ...    uiautomator2ServerInstallTimeout=${UIAUTOMATOR_TIMEOUT}
    ...    enableAutoDownload = true

Main Mobile Teardown
    [Documentation]        This is the main teardown for the mobile app
    Run Keyword If Test Failed    Custom Capture Page Screenshot    @{TEST TAGS}
    AppiumLibrary.Close All Applications

Main Web Setup
    [Documentation]        This is the main setup for the connexi
    [Arguments]            ${BROWSER}
    Empty Directory                 reports/screenshots
    Screenshot.Set Screenshot Directory        reports/screenshots
    Open Browser           about:blank    ${BROWSER}
    Maximize Browser Window

Main Web Teardown
    [Documentation]        This is the main teardown for the web app
    Run Keyword If Test Failed    Custom Capture Page Screenshot    @{TEST TAGS}
    Close All Browsers