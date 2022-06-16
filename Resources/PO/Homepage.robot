*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***
Verify Section is Visible
    [Arguments]    ${SECTION_ELEMENT}
    Wait Until Element Is Visible    ${SECTION_ELEMENT}
    Element Should Be Visible    ${SECTION_ELEMENT}
