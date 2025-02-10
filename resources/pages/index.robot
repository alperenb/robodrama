*** Variables ***
${URL}    https://alperenbekci.me
${HEADER}    h1  # Playwright locator

*** Keywords ***
Open Alperenbekci Page
    New Browser    browser=chromium    headless=True
    New Page    ${URL}

Verify Page Title
    [Arguments]    ${expected_title}
    ${title}    Get Title
    Should Be Equal    ${title}    ${expected_title}

Verify Page Locator
    [Arguments]    ${locator}
    ${element}    Get Element    ${locator}
    Should Not Be Empty    ${element}