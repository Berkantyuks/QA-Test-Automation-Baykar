*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DONEM_VERIFY_ELEMENT} =    xpath=//div[@id='seasons']
${TAKVIM_VERIFY_ELEMENT} =    xpath=//div[@id='calendar']
${SSS_VERIFY_ELEMENT} =    xpath=//div[@id='faqs']/div[@id='sss']

${AUTUMN_TERM} =    xpath=//div[@class='owl-item active'][1]//div[@class='item']/a[contains(@href, '/application/open-positions-filter/')][1]
${SPRING_TERM} =    xpath=//div[@class='owl-item active'][2]//div[@class='item']/a[contains(@href, '/application/open-positions-filter/')][1]
${SUMMER_TERM} =    xpath=//div[@class='owl-item active'][3]//div[@class='item']/a[contains(@href, '/application/open-positions-filter/')][1]

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

Check "Staj Dönemleri" Displays Correct Text by Language
    [Arguments]    ${LANG}
    Run Keyword If  "${LANG}" == "tr"  Element Text Should Be    ${AUTUMN_TERM}    GÜZ DÖNEMİ    ELSE IF   "${LANG}" == "en"    Element Text Should Be    ${AUTUMN_TERM}    AUTUMN PERIOD
    Run Keyword If  "${LANG}" == "tr"  Element Text Should Be    ${SPRING_TERM}    BAHAR DÖNEMİ    ELSE IF   "${LANG}" == "en"    Element Text Should Be    ${SPRING_TERM}    SPRING PERIOD
    Run Keyword If  "${LANG}" == "tr"  Element Text Should Be    ${SUMMER_TERM}    YAZ DÖNEMİ    ELSE IF   "${LANG}" == "en"    Element Text Should Be    ${SUMMER_TERM}    SUMMER PERIOD

Click "Güz Dönemi" Link
    Click Link    ${AUTUMN_TERM}

Click "Bahar Dönemi" Link
    Click Link    ${SPRING_TERM}

Click "Yaz Dönemi" Link
    Click Link    ${SPRING_TERM}