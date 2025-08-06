*** Settings ***
Library    SeleniumLibrary
Documentation    This test suite verifies login functionality for RobotSpareBinIndustries app.

*** Variables ***
${BROWSER}    chrome
${URL}    https://robotsparebinindustries.com/
${USERNAME_FIELD}    xpath=//input[@id='username']
${USERNAME_INPUT}    maria
${PASSWORD_FIELD}    xpath=//input[@id='password']
${PASSWORD_INPUT}    thoushallnotpass
${LOGIN_BUTTON}    xpath=//button[@class='btn btn-primary']
${DASHBOARD_ELEMENT}    xpath=//span[@class="username"]
${LOGOUT_BUTTON}    xpath=//button[@id="logout"]

*** Keywords ***
Launch Browser
    [Documentation]    Launches the RobotSpareBinIndustries app in Chrome Browser and Maximize the window
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Navigate to Application
    [Documentation]    This waits until the page is loaded and the element is visible
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Capture Page Screenshot    screenshots/app.png

Input Credentials
    [Documentation]    This Enters the Valid Username and Password into the appropriate field
    Input Text    ${USERNAME_FIELD}    ${USERNAME_INPUT}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD_INPUT}
    Capture Page Screenshot    screenshots/login.png

Click Login
    [Documentation]    This clicks on Login button and wait for the Dashboard to load
    Click Button    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${DASHBOARD_ELEMENT}

Verify Successful Login
    [Documentation]    This assert the Login is successful by validating the element present in the Dashboard and printing it on the report
    Element Should Be Visible    ${DASHBOARD_ELEMENT}
    ${dashboard_text}=    Get Text    ${DASHBOARD_ELEMENT}
    Log    Welcome ${dashboard_text}
    Capture Page Screenshot    screenshots/dashboard.png

Logout of Applicaion
    [Documentation]    To click on the logout button and wait for the Login Page to load
    Click Element    ${LOGOUT_BUTTON}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Capture Page Screenshot    screenshots/logged_out.png

Close The Browser
    [Documentation]    To close the Browser after the test is end
    Close Browser