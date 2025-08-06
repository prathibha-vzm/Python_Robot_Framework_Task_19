*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_reusable_keyword.robot
Suite Setup    Launch Browser
Suite Teardown    Close The Browser
Documentation    This test suite verifies login functionality for RobotSpareBinIndustries app.



*** Test Cases ***
Test Valid Login
    [Documentation]    This Test verifies the valid user can Login the application and Logout Successfully
    Navigate to Application
    Input Credentials
    Click Login
    Capture Page Screenshot
    Verify Successful Login
    Logout of Applicaion

