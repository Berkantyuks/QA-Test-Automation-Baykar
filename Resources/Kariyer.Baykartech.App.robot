*** Settings ***
Library    SeleniumLibrary

Resource    ./Common.robot
Resource    ./PO/Navbar.robot
Resource    ./PO/Footer.robot
Resource    ./PO/Homepage.robot
Resource    ./PO/Kariyer.robot
Resource    ./PO/Staj.robot
Resource    ./PO/Dashboard/Sign-In.robot
Resource    ./PO/Dashboard/Sign-Up.robot
Resource    ./PO/Dashboard/Forget-Password.robot
Resource    ./End-to-End.robot

*** Variables ***
${OPEN_POZ_SECTION} =    css=div[id='services']
${BAYKAR_LIFE_SECTION} =    css=div[id='portfolio']
${SSS_SECTION} =    css=div[id='sss']

${MAIN_SLIDER_RANGE} =    22
${OPEN_POZ_SLIDER_RANGE} =    4
${LIFE_IN_BAYKAR_SLIDER_RANGE} =    7

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
    Run Keyword If    "${LANG}" == "tr"   Common.Verify Page Loaded    en    ELSE    Common.Verify Page Loaded    tr

    Navbar.Change Language
    Run Keyword If    "${LANG}" == "tr"   Common.Verify Page Loaded    tr    ELSE    Common.Verify Page Loaded    en


Click "Kariyer" Section Dropdowns and Check Page
    Navbar.Click "Yerleşkelerimiz" Dropdown
    Kariyer.Verify "Yerleşkelerimiz" in show

    Navbar.Click "Sunduğumuz Faydalar" Dropdown
    Kariyer.Verify "Sosyal Alanlar" in show

    Navbar.Click "Sosyal Alanlar" Dropdown
    Kariyer.Verify "Sosyal Alanlar" in show

    Navbar.Click "İstatistik" Dropdown
    Kariyer.Verify "İstatistik" in show

Click "Staj" Section Dropdowns and Check Page
    Navbar.Click "Staj Dönemleri" Dropdown
    Navbar.Click "Staj Takvimi" Dropdown
    Navbar.Click "Staj SSS" Dropdown



Click "Login" button as not signed user
    [Arguments]    ${LANG}
    Navbar.Click "Dashboard/Login" button    ${LANG}
    Sign-In.Verify Page Loaded

Click "Forget Password" link as not signed user
    Sign-In.Click "Forget Password" link
    Forget-Password.Verify Page Loaded

Click "Create Account" link as not signed user
    Forget-Password.Click "Create Account" Link
    Sign-Up.Verify Page Loaded

Navigate "Main" Slider
    Homepage.Navigate main slider in loop    ${MAIN_SLIDER_RANGE}

Navigate "Open Positions" Slider
    Homepage.Navigate open poz slider in loop    ${OPEN_POZ_SLIDER_RANGE}    BACKWARD
    Homepage.Navigate open poz slider in loop    ${OPEN_POZ_SLIDER_RANGE}    FORWARD

Navigate "Life in Baykar" Slider
    Homepage.Navigate life in baykar slider in loop    ${LIFE_IN_BAYKAR_SLIDER_RANGE}    BACKWARD
    Homepage.Navigate life in baykar slider in loop    ${LIFE_IN_BAYKAR_SLIDER_RANGE}    FORWARD

Navigate "Footer" Elements
    [Arguments]    ${LANG}
    Footer.Scroll to end of the page
    Footer.Navigate footer elements in loop    ${LANG}





