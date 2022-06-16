*** Settings ***
Library    SeleniumLibrary
Resource    ./GlobalVariables.robot

*** Variables ***

*** Keywords ***
Start Baykar Web Test
    [Arguments]    ${BROWSER}
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

Open Website
    [Arguments]    ${SITE_URL}
    Go To      ${SITE_URL}

Verify Page Loaded
    [Arguments]    ${LANG}
    [Documentation]    Verify all pages successfully loaded
    Wait Until Element Is Visible    ${BAYKAR_LOGO_${LANG}}

End Baykar Web Test
    Close Browser