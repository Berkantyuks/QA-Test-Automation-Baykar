*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Kariyer.Baykartech.App.robot

Test Setup    Start Baykar Web Test    ${BROWSER}
Test Teardown    End Baykar Web Test

*** Variables ***
${SITE_URL} =    https://kariyer.baykartech.com/
${BROWSER} =    chrome
${RUN_LANG} =    tr

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

Visitor should be see "Login", "Forget Password", "Create Account" pages
    [Documentation]    All visitors should be see login page as not signed user
    [Tags]    Smoke    Login
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Login" button as not signed user    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Forget Password" link as not signed user
    Kariyer.Baykartech.App.Click "Create Account" link as not signed user