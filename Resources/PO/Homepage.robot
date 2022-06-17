*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MAIN_SLIDER_NEXT_BUTTON} =    xpath=//a[@data-slide='next']
${MAIN_SLIDER_PREV_BUTTON} =    xpath=//a[@data-slide='prev']
${MAIN_ACTIVE_SLIDER_ELEMENT} =    xpath=//div[@id='bootcarousel']//div[contains(@class, 'item active')]

${OPEN_POZ_SLIDER_NEXT_BUTTON} =     xpath=//div[@class='services-carousel-4-col owl-carousel owl-theme owl-loaded owl-drag']//i[@class='fa fa-angle-right']
${OPEN_POZ_SLIDER_PREV_BUTTON} =     xpath=//div[@class='services-carousel-4-col owl-carousel owl-theme owl-loaded owl-drag']//i[@class='fa fa-angle-left']

${LIFE_IN_BAYKAR_SLIDER_NEXT_BUTTON} =    xpath=//div[@id='portfolio']//i[@class='fa fa-angle-right']
${LIFE_IN_BAYKAR_SLIDER_PREV_BUTTON} =    xpath=//div[@id='portfolio']//i[@class='fa fa-angle-left']

${SSS_PANEL_DEFAULT} =    xpath=//div[@id='accordion']//div[@class='panel panel-default']
${SSS_PANEL_HEADING} =    /div[@class='panel-heading']

${SSS_CONTACT_SECTION} =    xpath=//div[@id='contact']





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

Navigate open poz slider in loop
    [Arguments]    ${SLIDER_RANGE}    ${GEAR}

    Scroll Element Into View    ${OPEN_POZ_SLIDER_NEXT_BUTTON}
    FOR    ${i}    IN RANGE     ${SLIDER_RANGE}

        Run Keyword If  "${GEAR}" == "FORWARD"    Click Element    ${OPEN_POZ_SLIDER_NEXT_BUTTON}    ELSE    Click Element    ${OPEN_POZ_SLIDER_PREV_BUTTON}
        Sleep    0.5s

    END

Navigate life in baykar slider in loop
    [Arguments]    ${SLIDER_RANGE}    ${GEAR}

    Scroll Element Into View    ${LIFE_IN_BAYKAR_SLIDER_NEXT_BUTTON}
    FOR    ${i}    IN RANGE     ${SLIDER_RANGE}

        Run Keyword If  "${GEAR}" == "FORWARD"    Click Element    ${LIFE_IN_BAYKAR_SLIDER_NEXT_BUTTON}    ELSE    Click Element    ${LIFE_IN_BAYKAR_SLIDER_PREV_BUTTON}
        Sleep    0.2s

    END

Click all sss panels in loop
    [Arguments]    ${PANEL_RANGE}

    Scroll Element Into View   ${SSS_CONTACT_SECTION}
    FOR    ${i}    IN RANGE    1    ${PANEL_RANGE}
        Click Element    ${SSS_PANEL_DEFAULT}\[${i}\]
        Sleep  0.5s
    END

