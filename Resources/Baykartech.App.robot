*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/BaykarMain/About.robot
Resource    ./PO/BaykarMain/Management.robot
Resource    ./PO/BaykarMain/History.robot


*** Variables ***
${ABOUT_US_TEXTS_TR} =   Hakkımızda
${ABOUT_US_TEXTS_EN} =   About Us

${MANAGEMENT_TEXTS_TR} =   Yönetim
${MANAGEMENT_TEXTS_EN} =   Management

${HISTORY_TEXTS_TR} =   Tarihçe
${HISTORY_TEXTS_EN} =   History


*** Keywords ***
Check Baykar's Main Site By Argument
    [Arguments]    ${PAGE}    ${LANG}
    ${ABOUT_CON}=  Evaluate   "${ABOUT_US_TEXTS_${LANG}}" in """${PAGE}"""
    ${MANAG_CON}=  Evaluate   "${MANAGEMENT_TEXTS_${LANG}}" in """${PAGE}"""
    ${HISTO_CON}=  Evaluate   "${HISTORY_TEXTS_${LANG}}" in """${PAGE}"""

    Run Keyword If  ${ABOUT_CON}  About.Verify Page Loaded
    ...    ELSE IF    ${MANAG_CON}    Management.Verify Page Loaded
    ...    ELSE IF    ${HISTO_CON}    History.Verify Page Loaded

    [Return]    True