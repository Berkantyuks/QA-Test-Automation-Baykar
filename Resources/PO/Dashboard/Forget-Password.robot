*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FORGET_PASS_ELEMENT} =    xpath=//button[@id='kt_sign_in_submit']
${CREATE_ACC_LINK} =    xpath=//form[@id="loginForm"]//a[contains(@href, '/signup/')]

*** Keywords ***
Verify Page Loaded
    [Documentation]    Just check page, we can't reset password because there is reCAP robot protection :(
    Wait Until Element Is Visible    ${FORGET_PASS_ELEMENT}
    Page Should Contain Link    ${CREATE_ACC_LINK}

Click "Create Account" Link
    Click Element    ${CREATE_ACC_LINK}



