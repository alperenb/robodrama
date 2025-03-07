*** Settings ***
Library  Browser

*** Variables ***
${SIGN_IN_EMAIL}           input[type="email"]
${SIGN_IN_PASSWORD}        input[type="password"]
${LOGIN_SUBMIT_BUTTON}     a[href="index.html"]

*** Keywords ***
# Uncomment and update the following if you need to navigate to the login page
# Navigate To
#     ${SignInUrl}=    Catenate    SEPARATOR=/    ${BASE_URL.${ENVIRONMENT}}    ${LOGIN_URL}
#     Go To    ${SignInUrl}

Enter Credentials
    [Arguments]    ${Credentials}
    Run Keyword If    '${Credentials[0]}' != '#BLANK'    Fill Text    ${SIGN_IN_EMAIL}    ${Credentials[0]}
    Run Keyword If    '${Credentials[1]}' != '#BLANK'    Fill Text    ${SIGN_IN_PASSWORD}    ${Credentials[1]}

Click Submit
    Wait For Elements State    ${LOGIN_SUBMIT_BUTTON}    visible    timeout=10s
    Click    ${LOGIN_SUBMIT_BUTTON}

Attempt Login
    [Arguments]    ${Credentials}
    Enter Credentials    ${Credentials}
    Click Submit

Verify Error Message
    [Arguments]    ${ExpectedErrorMessage}
    Page Should Contain    ${ExpectedErrorMessage[2]}

Clear Input Fields
    Clear Element Text    ${SIGN_IN_EMAIL}
    Clear Element Text    ${SIGN_IN_PASSWORD}