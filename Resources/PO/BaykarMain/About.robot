*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BAYKAR_MAIN_ABOUT_VERIFY_ELEMENT} =    xpath=//div[@class='aboutText']

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element    ${BAYKAR_MAIN_ABOUT_VERIFY_ELEMENT}
    Scroll Element Into View    ${BAYKAR_MAIN_ABOUT_VERIFY_ELEMENT}
    Wait Until Element Is Visible    ${BAYKAR_MAIN_ABOUT_VERIFY_ELEMENT}