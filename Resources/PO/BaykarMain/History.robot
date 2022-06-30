*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BAYKAR_MAIN_HISTORY_VERIFY_ELEMENT} =    xpath=//div[@class='aboutTimeLineLR']/div[@class='tlCard'][1]

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element    ${BAYKAR_MAIN_HISTORY_VERIFY_ELEMENT}
    Scroll Element Into View    ${BAYKAR_MAIN_HISTORY_VERIFY_ELEMENT}
    Wait Until Element Is Visible    ${BAYKAR_MAIN_HISTORY_VERIFY_ELEMENT}