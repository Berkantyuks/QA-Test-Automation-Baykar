*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVBAR_SECTION} =    xpath=//*[@id="navbar-menu"]/ul/li

*** Keywords ***
Mouse Over "Kariyer" Section
    [Documentation]    [1] is a first section in navbar
    ${sec_num} =  Set Variable   1

    Mouse Over    ${NAVBAR_SECTION}\[${sec_num}\]
    Wait Until Element Is Visible    ${NAVBAR_SECTION}\[${sec_num}\]/ul/li[1]/a

Mouse Over "Staj" Section
    [Documentation]    [3] is a third section in navbar
    ${sec_num} =  Set Variable   3

    Mouse Over    ${NAVBAR_SECTION}\[${sec_num}\]
    Wait Until Element Is Visible    ${NAVBAR_SECTION}\[${sec_num}\]/ul/li[1]/a