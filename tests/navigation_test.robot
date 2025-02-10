*** Settings ***
Library    Browser
Library    ../lib/playwright_helper.py
Library    ../lib/navigation_helper.py

*** Test Cases ***
Navigate to Contact Page
    Open Alperenbekci Page
    #Navigate to Contact Page
    #Check Element Visibility    h1:has-text("Contact Us")
    Close Browser