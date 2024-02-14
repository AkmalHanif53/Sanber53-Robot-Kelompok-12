*** Settings ***
Resource     ../homePage/home-Page.robot
Resource     ../base.robot
Variables    sign-in-locator.yaml

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

Verify Homepage Login Appears
    Wait Until Page Contains        Sign Out

Login Failed
    Wait Until Page Contains        Invalid username/password