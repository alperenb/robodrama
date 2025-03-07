*** Settings ***
Library  Browser  # Playwright equivalent

*** Variables ***
${HEADLESS}    True
${BROWSER}     chromium

*** Keywords ***
Open Custom Browser
    New Browser  ${BROWSER}  headless=${HEADLESS}
    Set Browser Timeout  20000


Begin Web Test
    Open Custom Browser

End Web Test
    Close Browser
