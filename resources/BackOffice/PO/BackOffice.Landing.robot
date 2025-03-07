*** Settings ***
Library  Browser
Resource    ../../../Data/InputData.robot
*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=mainNav


*** Keywords ***
Navigate To
    New Page  ${BACK_OFFICE_URL}

Verify Page Loaded
    Wait For Elements State  ${LANDING_NAVIGATION_ELEMENT}
