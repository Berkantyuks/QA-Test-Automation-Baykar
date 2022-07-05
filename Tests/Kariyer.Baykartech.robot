*** Settings ***
Documentation    This test file includes all tests for *kariyer.baykartech.com*,
...    if you wanna change Browser or Runtime Language go to *Variables* section in this file.

Resource    ../Resources/Common.robot
Resource    ../Resources/Kariyer.Baykartech.App.robot

Test Setup    Start Baykar Web Test    ${BROWSER}
Test Teardown    End Baykar Web Test

*** Variables ***
${SITE_URL} =    https://kariyer.baykartech.com/    # [!] DO NOT CHANGE SITE URL [!]
${BROWSER} =    edge    # add browser driver in env. path before first run
${RUN_LANG} =    tr       # "tr" or "en" [!] lowercase [!]

*** Test Cases ***
Visitor should be able enter site
    [Documentation]    All visitors should be able enter site
    [Tags]    Smoke    Common
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}

Visitor should be able navigate navbar
    [Documentation]    All visitors should be able navigate navbar
    [Tags]    Smoke    Navbar Common
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Navbar Mouse Over Tests
    Kariyer.Baykartech.App.Click non dropdown sections    ${RUN_LANG}

Visitor should be able click and see all "Kariyer" section pages
    [Documentation]    All visitors should be able click and see kariyer pages
    [Tags]    Smoke    Navbar Career
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Kariyer" Section Dropdowns and Check Page
    Kariyer.Baykartech.App.Navigate "Benefits" Panels    ${RUN_LANG}

Visitor should be able click and see all "Staj" section pages
    [Documentation]    All visitors should be able click and see Staj pages
    [Tags]    Smoke    Navbar Intern
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Staj" Section Dropdowns and Check Page
    Kariyer.Baykartech.App.Check and click "Staj Dönemleri" section    ${RUN_LANG}

Visitor should be able navigate all sliders and panels
    [Documentation]    All visitors should be able navigate all sliders
    [Tags]    Smoke    Main Slider    Open Pos Slider    Life in Baykar Slider    SSS Panels
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Navigate "Main" Slider
    Kariyer.Baykartech.App.Navigate "Open Positions" Slider
    Kariyer.Baykartech.App.Navigate SSS Panel Lists

Visitor should be see "Login", "Forget Password", "Create Account" pages
    [Documentation]    All visitors should be see dashboard input pages as not signed user
    [Tags]    Smoke    Login    Sign Up    Forget Password
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Login" button as not signed user    ${RUN_LANG}
    Kariyer.Baykartech.App.Click "Forget Password" link as not signed user
    Kariyer.Baykartech.App.Click "Create Account" link as not signed user

Visitor should be able click and see all "Footer" elements
    [Documentation]    All visitors should be able navigate footer links
    [Tags]    Smoke    Footer
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Navigate "Footer" Elements    ${RUN_LANG}

Check System Page integration is Stable
    [Documentation]    All pages in website should be integrated with others
    [Tags]    Integration    I-01
    Open Website    ${SITE_URL}${RUN_LANG}
    Common.Verify Page Loaded    ${RUN_LANG}
    Kariyer.Baykartech.App.Navigate "Career" page to "Open Positions" Section
    Kariyer.Baykartech.App.Navigate "Intern" page to "Open Positions" Section