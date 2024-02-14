*** Settings ***
Resource        ../pageObject/base.robot
Resource        ../pageObject/signIn/sign-in.robot

** Test Cases **
Verify SignIn Successfully
    Open Flight Application
    home-page.Verify Homepage Appears
    sign-in.Click SignIn
    sign-in.Verify Loginpage Appears
    sign-in.Input Username
    sign-in.Input Password
    sign-in.Click Login
    Verify Homepage Login Appears
    Close Flight Application

SignIn Failed Without Input Username and Password
    Open Flight Application
    sign-in.Click SignIn
    sign-in.Verify Loginpage Appears
    sign-in.Click Login
    sign-in.Login Failed

SignIn Failed Without Input Username
    Open Flight Application
    sign-in.Click SignIn
    sign-in.Verify Loginpage Appears
    sign-in.Input Username
    sign-in.Click Login
    sign-in.Login Failed

SignIn Failed Without Input Password
    Open Flight Application
    sign-in.Click SignIn
    sign-in.Verify Loginpage Appears
    sign-in.Input Password
    sign-in.Click Login
    sign-in.Login Failed

