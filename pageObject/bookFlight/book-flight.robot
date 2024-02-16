*** Settings ***
Resource     ../homePage/home-Page.robot
Resource     ../base.robot
Variables    book-flight-locator.yaml

*** Keywords ***

Click SignIn Button
    Click Element    ${btnLogin}

Verify Login Page Appears
    Wait Until Element Is Visible        ${username_login}
    Wait Until Element Is Visible        ${password_login}

Input Username 
    Input Text                           ${username_login}    support@ngendigital.com

Input Password
    Input Text                           ${password_login}    abc123
    
Click Login Button
    Click Element                        ${loginButton}

Verify Homepage Login Appears
    Wait Until Page Contains             Sign Out

Click Book Button
    Click Element                        ${bookButton}

Verify Search Page Appears
    Wait Until Element Is Visible        ${onewayWidget}

Verify Text From City Appears
    Wait Until Element Is Visible        ${fromCity}

Select fromCity
    Wait Until Page Contains            New York
    Click Element                       ${fromCitySpinner}
    Wait Until Page Contains            Toronto
    Click Element                       ${Toronto}

Select toCity
    Click Element                       ${toCitySpinner}
    Wait Until Page Contains            Paris
    Click Element                       ${Paris}

Select class
    Click Element                       ${classSpinner}
    Wait Until Page Contains            Business
    Click Element                       ${businessClass}

Select Start Date
    Click Element                       ${startDatePicker}
    Wait Until Element Is Visible       ${CalenderView}
    Click Element                       ${startDate}
    Click Element                       ${okButton}

Select End Date
    Click Element                       ${endDatePicker}
    Wait Until Element Is Visible       ${CalenderView}
    Click Element                       ${endDate}
    Click Element                       ${okButton}

Click Radio Button Flight
    Click Element                       ${radioButtonFlight}

Click Book Flight Button
    Click Element                       ${bookFlightButton}

Verify Confirmpage Appears
    Wait Until Element Is Visible       ${priceConfirmPage}

Select Price Booking 
    Click Element                       ${price7Select}

Click Confirm Button 
    Click Element                       ${confirmButton}

Verify Successfully Booked
    Wait Until Element Is Visible       ${yourFLightisBooked}



