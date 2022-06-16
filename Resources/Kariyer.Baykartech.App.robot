*** Settings ***
Library    SeleniumLibrary

Resource    ./Common.robot
Resource    ./PO/Navbar.robot
Resource    ./PO/Footer.robot
Resource    ./PO/Homepage.robot
Resource    ./PO/Kariyer.robot
Resource    ./PO/Staj.robot
Resource    ./End-to-End.robot


*** Variables ***
${OPEN_POZ_SECTION} =    css=div[id='services']
${BAYKAR_LIFE_SECTION} =    css=div[id='portfolio']
${SSS_SECTION} =    css=div[id='sss']



*** Keywords ***
Navbar Mouse Over Tests
    Navbar.Mouse Over "Kariyer" Section
    Navbar.Mouse Over "Staj" Section

Click non dropdown sections
    [Arguments]    ${LANG}
    Navbar.Click "Açık Pozisyonlar" Section
    Homepage.Verify Section is Visible    ${OPEN_POZ_SECTION}

    Navbar.Click "Baykarda Yaşam" Section
    Homepage.Verify Section is Visible    ${BAYKAR_LIFE_SECTION}

    Navbar.Click "S.S.S" Section
    Homepage.Verify Section is Visible    ${SSS_SECTION}

    Navbar.Click "BAYKAR" Section
    End-to-End.Verify "baykartech.com" opens

    Navbar.Change Language
    Common.Verify Page Loaded    en

    Navbar.Change Language
    Common.Verify Page Loaded    tr

    Navbar.Click "Dashboard" button    ${LANG}
    sleep  3s




