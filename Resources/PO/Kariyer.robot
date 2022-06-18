*** Settings ***
Library    SeleniumLibrary
Library    ../../Libraries/CreateList.py

*** Variables ***
${YERLESKELER_VERIFY_ELEMENT} =    xpath=//ul[@class='nav nav-pills']//a[@href='#campus1']
${FAYDALAR_VERIFY_ELEMENT} =    xpath=//div[@id='benefits']
${ALANLAR_VERIFY_ELEMENT} =    xpath=//div[@id='life_in_baykar']
${ISTATISTIKLER_VERIFY_ELEMENT} =    xpath=//div[@id='personal_data']


${BENEFITS_LIST_XPATH} =    xpath=//div[@id='benefits']//ul[@class='nav nav-pills w-100 d-flex justify-content-center']
${BENEFITS_DEFAULT} =    xpath=//div[@id='benefits']//div[@class='item']//
@{BENEFITS_LIST_TR} =    h4[.='EĞİTİM']    h4[.='SERVİS HİZMETİ']    h4[.='SOSYAL YAŞAM']    h4[.='SAĞLIK']    h4[.='KREŞ']
@{BENEFITS_LIST_EN} =    h4[.='EDUCATION']    h4[.='SHUTTLE SERVICE']    h4[.='SOCIAL LIFE']    h4[.='HEALTH']    h4[.='NURSERY']

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

Click and Check "Benefits" panel in loop
    [Arguments]    ${LANG}

    IF    "${LANG}" == "tr"
        ${list_len} =    Get Length    ${BENEFITS_LIST_TR}
    ELSE IF    "${LANG}" == "en"
        ${list_len} =    Get Length    ${BENEFITS_LIST_EN}
    END

    ${listed_len} =    create a list by number  ${list_len}

    Scroll Element Into View    ${BENEFITS_LIST_XPATH}
    Sleep    2s
    FOR    ${BENEFIT_TR}    ${BENEFIT_EN}    ${i}    IN ZIP    ${BENEFITS_LIST_TR}    ${BENEFITS_LIST_EN}    ${listed_len}
        Click Element    ${BENEFITS_LIST_XPATH}\//li[${i}\]
        Sleep    0.5s
    END
