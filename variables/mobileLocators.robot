*** Settings ***
Documentation                   Common variables for mobile elements

*** Variables ***
${APPIUM_URL}                   http://localhost:4723
${DEVICE_NAME}                  emulator-5554
${PLATFORM_NAME}                Android
${PLATFORM_VERSION}             15
${APP}                          /Users/redenlongcop/Documents/CONNEXI_AUTOMATION/app/TEST-ef1d159d-63bf-4e8a-93ce-d5d75b4d6ace.apk
${AUTOMATION_NAME}              UiAutomator2
${UIAUTOMATOR_TIMEOUT}          60000

${MOBILE_EMAIL}=                xpath=//*[@text="Enter email"]
${MOBILE_PASSWORD}=             xpath=//*[@text="Enter password"]
${MOBILE_LOGIN_BTN}=            accessibility_id=Log in
${MOBILE_INNER_LOGIN_BTN}=      xpath=//*[@content-desc="Log In"]
${MOBILE_LOGIN_ERROR_MSG}=      xpath=(//android.widget.TextView[@text="Please enter email and password"])[1]