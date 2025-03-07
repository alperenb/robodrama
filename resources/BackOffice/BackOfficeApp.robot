*** Settings ***
Resource  ./PO/BackOffice.Landing.robot
Resource  ./PO/LeftNav.robot
Resource  ./PO/BackOffice.Login.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    BackOffice.Landing.Navigate To
    #Landing.Verify Page Loaded

Go to Login Page
    Go to Landing Page
    LeftNav.Select "Login" Page

Open Login Page
    LeftNav.Select "Login" Page

Login with Different Users
    [Arguments]  ${LoginScenarios}
    FOR  ${LoginScenario}  IN  @{LoginScenarios}
       run keyword and continue on failure  Attempt Login  ${LoginScenario}
       run keyword and continue on failure  Open Login Page
    END