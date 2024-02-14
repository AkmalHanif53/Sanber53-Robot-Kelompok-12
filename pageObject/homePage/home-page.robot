*** Settings ***
Resource                    ../base.robot
Variables                    home-page-locator.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible           ${appLogo}
    Wait Until Element Is Visible           ${btnLogin}
    Wait Until Element Is Visible           ${btnSearch}
    Wait Until Element Is Visible           ${btnCheckIn}

Verify Home Login Appears
    Wait Until Element Is Visible           ${appLogo}
    Wait Until Element Is Visible           ${btnLogin}
    Wait Until Element Is Visible           ${homeLogin}
    Wait Until Element Is Visible           ${loginSearch}