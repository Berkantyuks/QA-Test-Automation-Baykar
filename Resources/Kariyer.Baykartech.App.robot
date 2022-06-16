*** Settings ***
Library    SeleniumLibrary

Resource    ./PO/Navbar.robot
Resource    ./PO/Footer.robot
Resource    ./PO/Homepage.robot
Resource    ./PO/Kariyer.robot
Resource    ./PO/Staj.robot

*** Variables ***



*** Keywords ***
Navbar Mouse Over Tests
    Navbar.Mouse Over "Kariyer" Section
    Navbar.Mouse Over "Staj" Section

Click non dropdown sections
    Navbar.Click "Açık Pozisyonlar" Section
    Navbar.Click "Baykarda Yaşam" Section

