*** Settings ***
Resource        ../pageObject/base.robot
Resource        ../pageObject/signIn/sign-in.robot
Resource        ../pageObject/bookFlight/book-flight.robot


** Test Cases **

Verify Login Successfully
    Open Flight Application
    home-page.Verify Homepage Appears
    book-flight.Click SignIn Button
    book-flight.Verify Login Page Appears
    book-flight.Input Username
    book-flight.Input Password
    book-flight.Click Login Button

Verify Book Flight Successfully
    book-flight.Verify Homepage Login Appears
    book-flight.Click Book Button
    book-flight.Select fromCity
    book-flight.Select toCity
    book-flight.Select class
    book-flight.Select Start Date
    book-flight.Select End Date
    book-flight.Click Radio Button Flight
    book-flight.Click Book Flight Button
    book-flight.Verify Confirmpage Appears
    book-flight.Select Price Booking
    book-flight.Click Confirm Button









