*** Settings ***
Library  Browser

*** Variables ***
${LANDING_NAVIGATION_ELEMENT}  id=mainNav
${LEFT_NAV_FORM}         a[href="forms.html"]
${LEFT_NAV_TABLE}        a[href="tables.html"]
${LEFT_NAV_DASHBOARD}    a[href="index.html"]
${LEFT_NAV_SAMPLE}       //a[contains(., 'Sample Pages')]
${LEFT_NAV_INNER_LOGIN}  //a[contains(., 'Login Page')]
${LEFT_NAV_INNER_BLANK}  //a[contains(., 'Blank Page')]


*** Keywords ***
Verify Page Loaded
    Wait For Elements State  ${LANDING_NAVIGATION_ELEMENT}  visible

Click Left Navigation Link
    [Arguments]    ${selector}
    Wait For Elements State    ${selector}    visible
    Click    ${selector}

Select "Form" Page
    Click Left Navigation Link    ${LEFT_NAV_FORM}

Select "Table" Page
    Click Left Navigation Link    ${LEFT_NAV_TABLE}

Select "Index" Page
    Click Left Navigation Link    ${LEFT_NAV_DASHBOARD}

Select "Login" Page
    Click Left Navigation Link    ${LEFT_NAV_SAMPLE}
    Click Left Navigation Link    ${LEFT_NAV_INNER_LOGIN}

Select "Blank" Page
    Click Left Navigation Link    ${LEFT_NAV_SAMPLE}
    Click Left Navigation Link    ${LEFT_NAV_INNER_BLANK}


Verify Login Successful
    Wait For Elements State    ${LANDING_NAVIGATION_ELEMENT}    visible