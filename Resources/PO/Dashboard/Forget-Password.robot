*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FORGET_PASS_ELEMENT} =    xpath=//button[@id='kt_sign_in_submit']

*** Keywords ***
Verify Page Loaded
    [Documentation]    Just check page, we can't reset password because there is reCAP robot protection :(
    Wait Until Element Is Visible    ${FORGET_PASS_ELEMENT}
    Page Should Contain Button    ${FORGET_PASS_ELEMENT}



