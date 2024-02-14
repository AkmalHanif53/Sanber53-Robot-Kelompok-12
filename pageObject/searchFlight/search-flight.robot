*** Settings ***
Resource     ../homePage/home-Page.robot
Resource     ../base.robot
Variables    search-flight-locator.yaml

*** Keywords ***

Click SignIn
    Click Element    ${btnLogin}

Verify Loginpage Appears
    Wait Until Element Is Visible            ${username_login}
    Wait Until Element Is Visible            ${password_login}

Input Username
    Input Text       ${username_login}    support@ngendigital.com

Input Password
    Input Text       ${password_login}    abc123
    
Click Login
    Click Element    ${loginButton}

Click Button Search
    Click Element    ${searchButton}

Verify Search Page Appears
    Wait Until Element Is Visible    ${searchLayout}

Input Flight Number
    Input Text       ${searchbox}    DA935
    Click Element    ${searchFlight}

Verify Search Result Appears
    Wait Until Element Is Visible            ${terminal}
    Wait Until Element Is Visible            ${schedule}
    Wait Until Element Is Visible            ${departed}

Input Wrong Flight Number
    Input Text       ${searchbox}    ZZ999
    Click Element    ${searchFlight}

Back To Search Menu
    Go Back

Clear text Search Box
    Clear Text        ${searchbox}

Verify Wrong Input Appears
    Wait Until Page Contains        Please enter valid Flight Number