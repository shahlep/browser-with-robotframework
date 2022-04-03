*** Settings ***
Documentation    Suite description
Library          Browser
Library          Fun.py
Resource         resources.robot
Test Setup       create browser session
Test Teardown    close browser session
Test Template    Validate Unsuccessful login

*** Variables ***
${error_message_text}   css=.error-message-container

*** Test Cases ***                USERNAME         PASSWORD
Invalid User Name                 invalid          secret_sauce
Invalid Password                  standard_user    invalid
Invalid User Name and Password    invalid          invalid
Empty User Name                   ''               secret_sauce
Empty Password                    standard_user     ''
Empty User Name and Password      ''               ''


*** Keywords ***
Validate Unsuccessful login
    [Arguments]    ${username}      ${password}
    Fill login form     ${username}     ${password}
    Wait until it checks and display error message
#    Verify error message is correct
    Check page title
    Check user defined library and keyword works


Fill login form
    [Arguments]    ${username}      ${passowrd}
    fill text    css=input#user-name   ${username}
    fill text    css=input#password    ${passowrd}
    click        css=input#login-button

Wait until it checks and display error message
    wait for elements state    css=.error-message-container  visible


Verify error message is correct
    ${error_text}=  get text      ${error_message_text}
    should be equal as strings    ${error_text}     Epic sadface: Username and password do not match any user in this service

Check page title
    get title    ==     Swag Labs

Check user defined library and keyword works
    hi everyone




