*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HR_HOME_ELEMENT} =    xpath=//button[@class='fix-btn']
${HR_HOME_TEXT} =    AÇIK POZİSYONLAR

*** Keywords ***
Start Baykar Web Test
    [Arguments]    ${BROWSER}
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

Open Website
    [Arguments]    ${SITE_URL}
    Go To      ${SITE_URL}

End Baykar Web Test
    Close Browser