*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../../Data/InputData.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Resource  ../../Resources/DataManager.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/BackOffice/Back_Office.robot
*** Variables ***
${Current_URL} =  "N/A"
    
*** Test Cases ***
Should be able to access "Login" page
    [Documentation]  Login Page should be reachable
    [Tags]  Smoke
    BackOfficeApp.Go to Login Page
    ${Current_URL} =  Get Url
    Should Be Equal    ${Current_URL}  https://automationplayground.com/back-office/pages/login.html

Should be able to Login with Different type of users
    [Documentation]  Logging in should be possible
    [Tags]  Smoke
    BackOfficeApp.Go to Login Page
    ${Current_URL} =  Get Url
    Should Be Equal    ${Current_URL}  https://automationplayground.com/back-office/pages/login.html
    ${LoginScenarios} =  DataManager.Get CSV Data  ${CREDENTIALS_PATH_CSV}
    BackOfficeApp.Login with Different Users  ${LoginScenarios}
