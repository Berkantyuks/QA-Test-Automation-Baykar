*** Settings ***
Library    SeleniumLibrary
Resource    ../Common.robot
Resource    ../Baykartech.App.robot

*** Variables ***
@{FOOTER_LINKS_TR} =    xpath=//footer//a[.="Hakkımızda"]    xpath=//footer//a[.="Yönetim"]    xpath=//footer//a[.="Tarihçe"]    xpath=//footer//a[.="Açık Pozisyonlar"]    xpath=//footer//a[.="İş"]    xpath=//footer//a[.="Staj"]    xpath=//footer//a[.="İletişim"]    xpath=//footer//a[.="KVKK"]
@{FOOTER_LINKS_EN} =    xpath=//footer//a[.="About Us"]    xpath=//footer//a[.="Management"]    xpath=//footer//a[.="History"]    xpath=//footer//a[.="Open Positions"]    xpath=//footer//a[.="Jobs"]    xpath=//footer//a[.="İntern"]    xpath=//footer//a[.="Communication"]    xpath=//footer//a[.="KVKK"]

${PAGE_END} =    xpath=//p[contains(., '© 2015-2022 BAYKAR TECH')]
*** Keywords ***
Scroll to end of the page
    Run Keyword And Ignore Error    Scroll Element Into View    ${PAGE_END}

Navigate footer elements in loop
    [Documentation]    Clicks all footer links by created list
    [Arguments]    ${LANG}
    FOR   ${LINK_TR}  ${LINK_EN}  IN ZIP   ${FOOTER_LINKS_TR}    ${FOOTER_LINKS_EN}

        Run Keyword If   "${LANG}" == "tr"   Click Link    ${LINK_TR}    ELSE IF    "${LANG}" == "en"    Click Link    ${LINK_EN}
        ${con} =    Baykartech.App.Check Baykar's Main Site By Argument    ${LINK_EN}    ${LANG}
        Run Keyword If     ${con}    Go Back

        Common.Verify Page Loaded    ${LANG}
        Wait Until Element Is Visible    ${PAGE_END}
        Run Keyword    Scroll to end of the page
    END