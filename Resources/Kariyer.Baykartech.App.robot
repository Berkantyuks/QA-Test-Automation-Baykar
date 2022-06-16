*** Settings ***
Library    SeleniumLibrary

Resource    ./PO/Navbar.robot
Resource    ./PO/Footer.robot
Resource    ./PO/Homepage.robot
Resource    ./PO/Kariyer.robot
Resource    ./PO/Staj.robot
Resource    ./End-to-End.robot

*** Variables ***
${OPEN_POZ_SECTION} =    xpath=//h4[.="Baykar'da Açık Pozisyonlar"]
${BAYKAR_LIFE_SECTION} =    xpath=//h4[.='Baykar İnsan Kaynakları']
${SSS_SECTION} =    xpath=//h2[.='Sıkça Sorulan Sorular']



*** Keywords ***
Navbar Mouse Over Tests
    Navbar.Mouse Over "Kariyer" Section
    Navbar.Mouse Over "Staj" Section

Click non dropdown sections
    Navbar.Click "Açık Pozisyonlar" Section
    Homepage.Verify Section is Visible    ${OPEN_POZ_SECTION}

    Navbar.Click "Baykarda Yaşam" Section
    Homepage.Verify Section is Visible    ${BAYKAR_LIFE_SECTION}

    Navbar.Click "S.S.S" Section
    Homepage.Verify Section is Visible    ${SSS_SECTION}

    Navbar.Click "BAYKAR" Section
    End-to-End.Verify "baykartech.com" opens



