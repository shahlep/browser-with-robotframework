*** Settings ***
Documentation    Suite description
Library          Browser

*** Test Cases ***
Open url and search keyword
    Open Browser for url
    Fill Search input box with open browser


*** Keywords ***
Open Browser for url
    new browser   chromium    headless=false
    new context    viewport={'width': 1024, 'height': 630}
    new page       https://marketsquare.github.io/robotframework-browser/Browser.html

Fill Search input box with open browser
    type text    css=.search-input      open browser
    click        css=ul#keyword-shortcuts-container .highlight
    ${get_url_text}     get url
    should contain    ${get_url_text}       Browser.html#Open%20Browser