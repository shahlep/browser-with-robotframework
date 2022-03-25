*** Settings ***
Documentation    Common stuffs
Library          Browser



*** Keywords ***
Create browser session
    new browser   chromium    headless=false
Close browser session
    close browser
Create context for page
    new context    viewport={'width': 1024, 'height': 630}
Close context for page
    close context