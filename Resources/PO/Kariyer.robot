*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${YERLESKELER_VERIFY_ELEMENT} =    xpath=//ul[@class='nav nav-pills']//a[@href='#campus1']
${FAYDALAR_VERIFY_ELEMENT} =    xpath=//div[@id='benefits']
${ALANLAR_VERIFY_ELEMENT} =    xpath=//div[@id='life_in_baykar']
${ISTATISTIKLER_VERIFY_ELEMENT} =    xpath=//div[@id='personal_data']

*** Keywords ***

Verify "Yerleşkelerimiz" in show
    Wait Until Element Is Visible    ${YERLESKELER_VERIFY_ELEMENT}
    Page Should Contain Element    ${YERLESKELER_VERIFY_ELEMENT}

Verify "Sunduğumuz Faydalar" in show
    Wait Until Element Is Visible    ${FAYDALAR_VERIFY_ELEMENT}
    Page Should Contain Element    ${FAYDALAR_VERIFY_ELEMENT}

Verify "Sosyal Alanlar" in show
    Wait Until Element Is Visible    ${ALANLAR_VERIFY_ELEMENT}
    Page Should Contain Element    ${ALANLAR_VERIFY_ELEMENT}

Verify "İstatistik" in show
    Wait Until Element Is Visible    ${ISTATISTIKLER_VERIFY_ELEMENT}
    Page Should Contain Element    ${ISTATISTIKLER_VERIFY_ELEMENT}
