*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGN_IN_ELEMENT} =    xpath=//button[@id='kt_sign_in_submit']
${FORGET_PASS_LINK} =   xpath=//*[@id="loginForm"]//a[contains(@href, '/password/reset/')]

*** Keywords ***
Verify Page Loaded
    [Documentation]    Just check page, we can't login because there is reCAP robot protection :(
    Wait Until Element Is Visible    ${SIGN_IN_ELEMENT}
    Page Should Contain Link    ${FORGET_PASS_LINK}

Click "Forget Password" link
    Click Link    ${FORGET_PASS_LINK}