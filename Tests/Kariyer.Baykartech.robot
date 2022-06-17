*** Settings ***
Documentation    This test file includes all tests for kariyer.baykartech.com, if you wanna change Browser or Runtime Language go to *Variables* section in this file.

Resource    ../Resources/Common.robot
Resource    ../Resources/Kariyer.Baykartech.App.robot

Test Setup    Start Baykar Web Test    ${BROWSER}
Test Teardown    End Baykar Web Test

*** Variables ***
${SITE_URL} =    https://kariyer.baykartech.com/
${BROWSER} =    chrome    # add browser driver in env. path before first run
${RUN_LANG} =    en       # "tr" or "en" [!] lowercase [!]

*** Test Cases ***
Visitor should be able enter site
    [Documentation]    All visitors should be able enter site
    [Tags]    Smoke    Common
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}

Visitor should be able navigate navbar
    [Documentation]    All visitors should be able navigate navbar
    [Tags]    Smoke    Navbar
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Navbar Mouse Over Tests
    Kariyer.Baykartech.App.Click non dropdown sections    ${RUN_LANG}

Visitor should be able navigate all sliders
    [Documentation]    All visitors should be able navigate all sliders
    [Tags]    Smoke    Main Slider    Open Poz Slider
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Navigate "Main" Slider
    Kariyer.Baykartech.App.Navigate "Open Positions" Slider

Visitor should be see "Login", "Forget Password", "Create Account" pages
    [Documentation]    All visitors should be see dashboard input pages as not signed user
    [Tags]    Smoke    Login    Sign Up    Forget Password
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Login" button as not signed user    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Forget Password" link as not signed user
    Kariyer.Baykartech.App.Click "Create Account" link as not signed user