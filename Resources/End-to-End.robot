*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BAYKAR_MAIN_LOGO} =    xpath=//img[@alt='https://cdn.baykartech.com/media/images/contents/logo.png']

*** Keywords ***
Verify "baykartech.com" opens
    ${handle} =    Get Window Handles

    Wait Until Element Is Visible    ${BAYKAR_MAIN_LOGO}
    Element Should Be Visible    ${BAYKAR_MAIN_LOGO}
    Switch Window    ${handle}[0]