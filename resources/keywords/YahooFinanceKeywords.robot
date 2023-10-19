*** Settings ***
Resource    ../page_objects/YahooFinancePageObjects.robot

*** Keywords ***
Create Yahoo Finance Account
    Open Yahoo Finance
    Click Sign In
    Fill Registration Form    Jaspal    Raja    jaspalraja      SecretP@123     January     10      1992

