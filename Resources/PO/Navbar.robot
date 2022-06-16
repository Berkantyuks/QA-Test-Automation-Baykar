*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVBAR_SECTION} =    xpath=//*[@id="navbar-menu"]/ul/li
${FIRST_DROPDOWN_ELEMENT} =   /ul/li[1]/a

*** Keywords ***
Mouse Over "Kariyer" Section
    [Documentation]    [1] is a first section in navbar
    ${sec_num} =  Set Variable   1

    Mouse Over    ${NAVBAR_SECTION}\[${sec_num}\]
    Wait Until Element Is Visible    ${NAVBAR_SECTION}\[${sec_num}\]${FIRST_DROPDOWN_ELEMENT}

Mouse Over "Staj" Section
    [Documentation]    [3] is a third section in navbar
    ${sec_num} =  Set Variable   3

    Mouse Over    ${NAVBAR_SECTION}\[${sec_num}\]
    Wait Until Element Is Visible    ${NAVBAR_SECTION}\[${sec_num}\]${FIRST_DROPDOWN_ELEMENT}

Click "Açık Pozisyonlar" Section
    [Documentation]    [2] is a second section in navbar

    ${sec_num} =  Set Variable   2
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]/a

Click "Baykarda Yaşam" Section
    [Documentation]    [4] is a second section in navbar

    ${sec_num} =  Set Variable   4
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]/a

Click "S.S.S" Section
    [Documentation]    [5] is a second section in navbar

    ${sec_num} =  Set Variable   5
    Click Link    ${NAVBAR_SECTION}\[${sec_num}\]/a