*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../../Data/InputData.robot
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/FrontOffice/Front_Office.robot

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  Check if the Team page is reachable
    [Tags]  Smoke
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  Check if
    [Tags]  test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page