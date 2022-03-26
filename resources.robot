*** Settings ***
Documentation    Common stuffs
Library          Browser


*** Keywords ***
Create browser session
    new browser   chromium    headless=false
    new context    viewport={'width': 1024, 'height': 630}
    new page       https://www.saucedemo.com/
    get title       ==    Swag Labs
Close browser session
    close page
    close context
    close browser


