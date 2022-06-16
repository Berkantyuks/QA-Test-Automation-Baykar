*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BAYKAR_MAIN_LOGO} =    xpath=//img[@alt='https://cdn.baykartech.com/media/images/contents/logo.png']

*** Keywords ***
Verify "baykartech.com" opens
    Wait Until Element Is Visible    ${BAYKAR_MAIN_LOGO}
    Element Should Be Visible    ${BAYKAR_MAIN_LOGO}
    Close Window