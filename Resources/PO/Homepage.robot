*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***
Verify Section is Visible
    [Arguments]    ${SECTION_TEXT_ELEMENT}
    Wait Until Element Is Visible    ${SECTION_TEXT_ELEMENT}
    Element Should Be Visible    ${SECTION_TEXT_ELEMENT}
