*** Settings ***
Library    SeleniumLibrary
Resource    ./GlobalVariables.robot

*** Variables ***
${PRE_LOADER} =  xpath=//div[@class='se-pre-con']

*** Keywords ***
Start Baykar Web Test
    [Arguments]    ${BROWSER}
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

Open Website
    [Arguments]    ${SITE_URL}
    Go To      ${SITE_URL}\/

Verify Page Loaded
    [Arguments]    ${LANG}
    [Documentation]    Verify all pages successfully loaded
    Wait Until Element Is Enabled    ${BAYKAR_LOGO_${LANG}}

    ${check_loader} =    Run Keyword And Return Status    Element Should Be Visible    ${PRE_LOADER}
    Run Keyword If  ${check_loader}   Wait Until Element Is Not Visible    ${PRE_LOADER}

End Baykar Web Test
    Close Browser