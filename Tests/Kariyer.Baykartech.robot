*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Kariyer.Baykartech.App.robot

Test Setup    Start Baykar Web Test    ${BROWSER}
Test Teardown    End Baykar Web Test

*** Variables ***
${SITE_URL_TR} =    https://kariyer.baykartech.com/tr/
${SITE_URL_EN} =    https://kariyer.baykartech.com/en/
${BROWSER} =    chrome

*** Test Cases ***
Visitor should be able enter site
    [Documentation]    All visitors should be able enter site
    [Tags]    Smoke    Common
    Open Website    ${SITE_URL_TR}

Visitor should be able navigate navbar
    [Documentation]    All visitors should be able navigate navbar
    [Tags]    Smoke    Navbar
    Open Website    ${SITE_URL_TR}
    Kariyer.Baykartech.App.Navbar Mouse Over Tests
    Kariyer.Baykartech.App.Click non dropdown sections
    Sleep    2s