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
    [Tags]    Smoke    Kariyer
    Open Website    ${SITE_URL_TR}
