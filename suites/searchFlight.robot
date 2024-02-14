*** Settings ***
Resource        ../pageObject/searchFlight/search-flight.robot
Resource        ../pageObject/base.robot

** Test Cases **
Verify Login Successfully
    Open Flight Application
    home-page.Verify Homepage Appears
    search-flight.Click SignIn
    search-flight.Verify Loginpage Appears
    search-flight.Input Username
    search-flight.Input Password
    search-flight.Click Login

Verify Search Flight Successfully
    search-flight.Click Button Search 
    search-flight.Verify Search Page Appears
    search-flight.Input Flight Number
    search-flight.Verify Search Result Appears

Verify Wrong Input Search Flight
    search-flight.Back To Search Menu
    search-flight.Clear text Search Box
    search-flight.Input Wrong Flight Number
    search-flight.Verify Wrong Input Appears