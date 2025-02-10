*** Keywords ***
Open Alperenbekci Page
    Open Browser    https://alperenbekci.me    browser=chromium
    Wait Until Element Is Visible    h1

Navigate to Contact Page
    Click Element    a[href="/contact"]
    Wait Until Element Is Visible    h1:has-text("Contact Us")