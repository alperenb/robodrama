*** Settings ***
Library    Browser

*** Test Cases ***
Open Alperenbekci Website
    New Browser    browser=chromium    headless=True
    New Page    https://alperenbekci.me
    Get Title    ==    Alperen Bekçi
    Close Browser