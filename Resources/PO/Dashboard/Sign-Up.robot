*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGN_UP_ELEMENT} =    xpath=//form[@id='signUpForm']//input[@name='password2']

*** Keywords ***
Verify Page Loaded
    Wait Until Element Is Visible    ${SIGN_UP_ELEMENT}
    Page Should Contain Element    ${SIGN_UP_ELEMENT}

