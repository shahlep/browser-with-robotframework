*** Settings ***
Documentation    Suite description
Library          Browser
Resource         resources.robot
Suite Setup      create browser session
Suite Teardown   close browser session
Test Setup       create context for page
Test Teardown    close context for page

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



