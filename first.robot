*** Settings ***
Documentation    Suite description
Library          Browser
Suite Setup      new browser   chromium    headless=false
Suite Teardown   close browser
Test Setup       new context    viewport={'width': 1024, 'height': 630}
Test Teardown    close context

*** Test Cases ***
Starting a browser with a page
    Open a page with given url
    Fill login form
    Check page title

*** Keywords ***
Open a page with given url
    new page       https://www.saucedemo.com/
    get title       ==    Swag Labs

Fill login form
    fill text    id=user-name   standard_user
    fill text    id=password    secret_sauce
    click        id=login-button

Check page title
    get title    ==     Swag Labs



