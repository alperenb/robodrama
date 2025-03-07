*** Settings ***
Library  Browser

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=mainNav

*** Keywords ***
Navigate To
    New Page  ${FRONT_OFFICE_URL}

Verify Page Loaded
    Wait For Elements State  ${LANDING_NAVIGATION_ELEMENT}