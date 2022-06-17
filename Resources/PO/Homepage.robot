*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MAIN_SLIDER_NEXT_BUTTON} =    xpath=//a[@data-slide='next']
${MAIN_SLIDER_PREV_BUTTON} =    xpath=//a[@data-slide='prev']

${OPEN_POZ_SLIDER_NEXT_BUTTON} =     xpath=//div[@class='services-carousel-4-col owl-carousel owl-theme owl-loaded owl-drag']//i[@class='fa fa-angle-right']
${OPEN_POZ_SLIDER_PREV_BUTTON} =     xpath=//div[@class='services-carousel-4-col owl-carousel owl-theme owl-loaded owl-drag']//i[@class='fa fa-angle-left']

${MAIN_ACTIVE_SLIDER_ELEMENT} =    xpath=//div[@id='bootcarousel']//div[contains(@class, 'item active')]


*** Keywords ***
Verify Section is Visible
    [Arguments]    ${SECTION_ELEMENT}
    Wait Until Element Is Visible    ${SECTION_ELEMENT}
    Element Should Be Visible    ${SECTION_ELEMENT}

Navigate main slider in loop
    [Arguments]    ${SLIDER_RANGE}

    FOR    ${i}    IN RANGE     ${SLIDER_RANGE}

        Mouse Over    ${MAIN_SLIDER_NEXT_BUTTON}
        Click Element    ${MAIN_SLIDER_NEXT_BUTTON}
        Sleep    1s

    END

Navigate sub slider in loop
    [Arguments]    ${SLIDER_RANGE}

    Scroll Element Into View    ${OPEN_POZ_SLIDER_NEXT_BUTTON}
    FOR    ${i}    IN RANGE     ${SLIDER_RANGE}

        Click Element    ${OPEN_POZ_SLIDER_NEXT_BUTTON}
        Sleep    1s

    END

