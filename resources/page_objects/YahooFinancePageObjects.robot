*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${URL}    https://finance.yahoo.com/
${Sign In Link}    xpath://span[normalize-space()='Sign in']
${Create Account}   xpath://a[@id='createacc']
${First Name Field}    xpath://input[@id='usernamereg-firstName']
${Last Name Field}    xpath://input[@id='usernamereg-lastName']
${Email Field}    xpath://input[@id='usernamereg-userId']
${Password Field}    xpath://input[@id='usernamereg-password']
${DOBMonth}     xpath://select[@id='usernamereg-month']
${DOBDay}       xpath://input[@id='usernamereg-day']
${DOBYear}      xpath://input[@id='usernamereg-year']
${Continue Button}    xpath://button[@id='reg-submit-button']
${Recovery Mobile}    xpath://input[@id='usernamereg-phone']
${Send Code}        Xpath://button[@id='reg-submit-button']

*** Keywords ***
Open Yahoo Finance
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Selenium Speed    1 seconds

Click Sign In
    Click Element    ${Sign In Link}
    Click Element    ${Create Account}

Fill Registration Form
    [Arguments]    ${first_name}    ${last_name}    ${email}    ${password}     ${Month}    ${Day}      ${Year}
    Input Text    ${First Name Field}    ${first_name}
    Input Text    ${Last Name Field}    ${last_name}
    Input Text    ${Email Field}    ${email}
    Input Text    ${Password Field}    ${password}
    Select From List By Label       ${DOBMonth}     ${Month}
    Input Text      ${DOBDay}       ${Day}
    Input Text      ${DOBYear}      ${Year}
    Click Element    ${Continue Button}
    Input Text       ${Recovery Mobile}     08237517239
    Click Element    ${Send Code}
