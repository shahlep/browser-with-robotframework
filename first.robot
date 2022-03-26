*** Settings ***
Documentation    Suite description
Library          Browser
Resource         resources.robot
Suite Setup      create browser session
Suite Teardown   close browser session


*** Variables ***
${error_message_text}   css=.error-message-container

*** Test Cases ***

Validate Unsuccessful login
    Fill login form
    Wait until it checks and display error message
    Verify error message is correct

*** Keywords ***

Fill login form
    fill text    css=input#user-name   standard_user
    fill text    css=input#password    secret
    click        css=input#login-button

Wait until it checks and display error message
    wait for elements state    css=.error-message-container  visible

Verify error message is correct
    ${error_text}=  get text      ${error_message_text}
    should be equal as strings    ${error_text}     Epic sadface: Username and password do not match any user in this service

Check page title
    get title    ==     Swag Labs




