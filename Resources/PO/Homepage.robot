*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SLIDER_NEXT_BUTTON} =    xpath=//a[@data-slide='next']
${SLIDER_PREV_BUTTON} =    xpath=//a[@data-slide='prev']

${ACTIVE_SLIDER_ELEMENT} =    xpath=//div[@id='bootcarousel']//div[contains(@class, 'item active')]


*** Keywords ***
Verify Section is Visible
    [Arguments]    ${SECTION_ELEMENT}
    Wait Until Element Is Visible    ${SECTION_ELEMENT}
    Element Should Be Visible    ${SECTION_ELEMENT}

Navigate main slider in loop
    [Arguments]    ${SLIDER_RANGE}

    FOR    ${i}    IN RANGE     ${SLIDER_RANGE}

        Mouse Over    ${SLIDER_NEXT_BUTTON}
        Click Element    ${SLIDER_NEXT_BUTTON}
        Sleep    1s

    END

