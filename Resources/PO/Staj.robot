*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DONEM_VERIFY_ELEMENT} =    xpath=//div[@id='seasons']
${TAKVIM_VERIFY_ELEMENT} =    xpath=//div[@id='calendar']
${SSS_VERIFY_ELEMENT} =    xpath=//div[@id='faqs']/div[@id='sss']

*** Keywords ***
Verify "Staj Dönemleri" in show
    Wait Until Element Is Visible    ${DONEM_VERIFY_ELEMENT}
    Page Should Contain Element    ${DONEM_VERIFY_ELEMENT}

Verify "Staj Takvimi" in show
    Wait Until Element Is Visible    ${TAKVIM_VERIFY_ELEMENT}
    Page Should Contain Element    ${TAKVIM_VERIFY_ELEMENT}

Verify "Staj SSS" in show
    Wait Until Element Is Visible    ${SSS_VERIFY_ELEMENT}
    Page Should Contain Element    ${SSS_VERIFY_ELEMENT}