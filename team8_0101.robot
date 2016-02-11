*** Settings ***
Library    Selenium2Library
#Suite Setup    Set Selenium Timeout    20

*** Variables ***
${SERVER}       https://sprint3r8.wordpress.com
${TITLE}       sprint3r8

*** Test Cases ***
Login web pass
    Open login page
    Input Text    user_login    sprint3r8
    Input Password     user_pass    WorkingSoftware
    Unselect Checkbox    //*[@id="rememberme"]
    Click Element    //*[@id="wp-submit"]
    Wait Until Page Contains    Welcome to WordPress.com!
    Close Browser

*** Keywords ***
Open login page
    Open Browser    ${SERVER}
    Click Element   //*[@id="masthead"]/button
    Wait Until Page Contains    Log in
    Click Link   ${SERVER}/wp-login.php
    Wait Until Page Contains    Email or Username
