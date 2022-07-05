*** Settings ***
Library    SeleniumLibrary
Resource    ../Common.robot
Resource    ../Baykartech.App.robot

*** Variables ***
# IMPORTANT, THIS LIST DEFINES FOOTER LINK PAGE IS INNER PAGE OR OUTER PAGE
# 0 IS OUT, 1 IN according to the following lists.
@{INNER_OR_OUTER_PAGE} =    0    0    0    1    1    1    1

@{FOOTER_LINKS_TR} =    xpath=//footer//a[.="Hakkımızda"]    xpath=//footer//a[.="Yönetim"]
...    xpath=//footer//a[.="Tarihçe"]    xpath=//footer//a[.="Açık Pozisyonlar"]
...    xpath=//footer//a[.="Staj"]
...    xpath=//footer//a[.="İletişim"]    xpath=//footer//a[.="KVKK"]

@{FOOTER_LINKS_EN} =    xpath=//footer//a[.="About Us"]    xpath=//footer//a[.="Management"]
...    xpath=//footer//a[.="History"]    xpath=//footer//a[.="Open Positions"]
...    xpath=//footer//a[.="İntern"]
...    xpath=//footer//a[.="Communication"]    xpath=//footer//a[.="KVKK"]


${PAGE_END} =    xpath=//p[contains(., '© 2015-2022 BAYKAR TECH')]
*** Keywords ***
Scroll to end of the page
    Run Keyword And Ignore Error    Scroll Element Into View    ${PAGE_END}

Navigate footer elements in loop
    [Documentation]    Clicks all footer links by created list
    [Arguments]    ${LANG}
    FOR   ${LINK_TR}  ${LINK_EN}   ${IN_OUT}  IN ZIP   ${FOOTER_LINKS_TR}    ${FOOTER_LINKS_EN}    ${INNER_OR_OUTER_PAGE}

        Run Keyword If   "${LANG}" == "tr"   Click Link    ${LINK_TR}
        ...    ELSE IF    "${LANG}" == "en"    Click Link    ${LINK_EN}

        Run Keyword If   "${IN_OUT}" == "0"    Baykartech.App.Check Baykar's Main Site By Argument    ${LINK_${LANG}}    ${LANG}
        Go Back

        Common.Verify Page Loaded    ${LANG}
        Wait Until Element Is Visible    ${PAGE_END}
        Run Keyword    Scroll to end of the page
    END