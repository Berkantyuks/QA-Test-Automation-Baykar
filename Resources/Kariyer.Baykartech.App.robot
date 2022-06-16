*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Kariyer.Baykartech.App.robot

Test Setup    Start Baykar Web Test    ${BROWSER}
Test Teardown    End Baykar Web Test

*** Variables ***
${SITE_URL_TR} =    https://kariyer.baykartech.com/tr/
${SITE_URL_EN} =    https://kariyer.baykartech.com/en/
${BROWSER} =    chrome


*** Keywords ***
