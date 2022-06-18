*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${APPLICATION_VERIFY_ELEMENT} =    xpath=//input[@onkeyup='searchProgram()']


*** Keywords ***
Verify Page Loaded
    Wait Until Element Is Visible    ${APPLICATION_VERIFY_ELEMENT}
    Page Should Contain Element    ${APPLICATION_VERIFY_ELEMENT}
