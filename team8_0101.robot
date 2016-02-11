*** Settings ***
Library    Selenium2Library
#Suite Setup    Set Selenium Timeout    20

*** Variables ***
${SERVER}       https://sprint3r8.wordpress.com
${TITLE}       sprint3r8
${VALID_USERNAME}    sprint3r8
${VALID_PASSWORD}    WorkingSoftware

*** Test Cases ***
Login web pass
    Open login page
    Input Text    user_login    ${VALID_USERNAME}
    Input Password     user_pass    ${VALID_PASSWORD}
    Unselect Checkbox    //*[@id="rememberme"]
    Click Element    //*[@id="wp-submit"]
    Wait Until Page Contains    Welcome to WordPress.com!    10
    Close Browser

*** Keywords ***
Open login page
    Open Browser    ${SERVER}
    Click Element   //*[@id="masthead"]/button
    Wait Until Page Contains    Log in    10
    Click Link   ${SERVER}/wp-login.php
    Wait Until Page Contains    Email or Username    10
