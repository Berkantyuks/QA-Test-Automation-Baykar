*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{FOOTER_LINKS_TR} =    xpath=//footer//a[.="Hakkımızda"]    xpath=//footer//a[.="Yönetim"]    xpath=//footer//a[.="Tarihçe"]    xpath=//footer//a[.="Açık Pozisyonlar"]    xpath=//footer//a[.="İş"]    xpath=//footer//a[.="Staj"]
@{FOOTER_LINKS_EN} =    xpath=//footer//a[.="About Us"]    xpath=//footer//a[.="Management"]    xpath=//footer//a[.="History"]    xpath=//footer//a[.="Open Positions"]    xpath=//footer//a[.="Jobs"]    xpath=//footer//a[.="İntern"]

${PAGE_END} =    xpath=//p[contains(., '© 2015-2022 BAYKAR TECH')]
*** Keywords ***
Scroll to end of the page
    Scroll Element Into View    ${PAGE_END}

Navigate footer elements in loop
    [Arguments]    ${ITEM_RANGE}
    FOR   ${LINK}  IN ZIP   @{FOOTER_LINKS_TR}    @{FOOTER_LINKS_EN}

    END