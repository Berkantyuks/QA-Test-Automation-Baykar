*** Settings ***
Library    SeleniumLibrary
Resource    ../GlobalVariables.robot

*** Variables ***
${NAVBAR_SECTION} =    xpath=//*[@id="navbar-menu"]/ul/li
${DROPDOWN_ELEMENT} =   /ul/li

${KARIYER_SECTION_NUMBER} =    1
${OPENPOZ_SECTION_NUMBER} =    2
${STAJ_SECTION_NUMBER} =    3
${SSS_SECTION_NUMBER} =    4
${BAYKAR_SECTION_NUMBER} =    5

${NAVBAR_LANG_BUTTON} =    xpath=//li[@class='baykarLi']//a

*** Keywords ***
Mouse Over "Kariyer" Section
    [Documentation]    first section in navbar
    ${sec_num} =  Set Variable   ${KARIYER_SECTION_NUMBER}

    Mouse Over    ${NAVBAR_SECTION}\[${sec_num}\]
    Wait Until Element Is Visible    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[1]/a

Click "Yerleşkelerimiz" Dropdown
    [Documentation]    Clicks Yerleşkelerimiz dropdown in Kariyer section
    ${sec_num} =  Set Variable   ${KARIYER_SECTION_NUMBER}

    Run Keyword    Mouse Over "Kariyer" Section
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[1]/a

Click "Sunduğumuz Faydalar" Dropdown
    [Documentation]    Clicks Sunduğumuz Faydalar dropdown in Kariyer section
    ${sec_num} =  Set Variable   ${KARIYER_SECTION_NUMBER}

    Run Keyword    Mouse Over "Kariyer" Section
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[2]/a

Click "Sosyal Alanlar" Dropdown
    [Documentation]    Clicks Sosyal Alanlar dropdown in Kariyer section
    ${sec_num} =  Set Variable   ${KARIYER_SECTION_NUMBER}

    Run Keyword    Mouse Over "Kariyer" Section
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[3]/a

Click "İstatistik" Dropdown
    [Documentation]    Clicks İstatistik dropdown in Kariyer section
    ${sec_num} =  Set Variable   ${KARIYER_SECTION_NUMBER}

    Run Keyword    Mouse Over "Kariyer" Section
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[4]/a

Mouse Over "Staj" Section
    ${sec_num} =  Set Variable   ${STAJ_SECTION_NUMBER}

    Mouse Over    ${NAVBAR_SECTION}\[${sec_num}\]
    Wait Until Element Is Visible    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[1]/a

Click "Staj Dönemleri" Dropdown
    [Documentation]    Clicks Staj Dönemleri dropdown in Staj section
    ${sec_num} =  Set Variable   ${STAJ_SECTION_NUMBER}

    Run Keyword    Mouse Over "Staj" Section
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[1]/a

Click "Staj Takvimi" Dropdown
    [Documentation]    Clicks Staj Takvimi dropdown in Staj section
    ${sec_num} =  Set Variable   ${STAJ_SECTION_NUMBER}

    Run Keyword    Mouse Over "Staj" Section
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[2]/a

Click "Staj SSS" Dropdown
    [Documentation]    Clicks Staj SSS dropdown in Staj section
    ${sec_num} =  Set Variable   ${STAJ_SECTION_NUMBER}

    Run Keyword    Mouse Over "Staj" Section
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]${DROPDOWN_ELEMENT}\[3]/a

Click "Açık Pozisyonlar" Section

    ${sec_num} =  Set Variable   ${OPENPOZ_SECTION_NUMBER}
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]/a

Click "S.S.S" Section

    ${sec_num} =  Set Variable   ${SSS_SECTION_NUMBER}
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]/a

Click "BAYKAR" Section

    ${sec_num} =  Set Variable   ${BAYKAR_SECTION_NUMBER}
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]/a
    ${handle} =    Get Window Handles
    Switch Window    ${handle}[1]

Change Language
    [Documentation]    Changes current language
    Click Link    ${NAVBAR_LANG_BUTTON}

Click "Dashboard/Login" button
    [Arguments]    ${LANG}
    [Documentation]    Clicks dashboard button by lang, in navbar located right
    ${NAVBAR_DASHBOARD_BUTTON} =  Set Variable   xpath=//nav//a[contains(@href, '/${LANG}/dashboard')]
    Click Element    ${NAVBAR_DASHBOARD_BUTTON}