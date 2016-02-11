*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}       https://sprint3r8.wordpress.com
${TITLE}       sprint3r8
${VALID_USERNAME}    sprint3r8
${VALID_PASSWORD}    WorkingSoftware
${DELAY}        0.3

*** Keywords ***
Open login page
    Set Selenium Speed    ${DELAY}
    Click Element   //*[@id="masthead"]/button
    Wait Until Page Contains    Log in    60
    Click Link   ${SERVER}/wp-login.php
    Wait Until Page Contains    Email or Username    60

Submit login
    Click Element    //*[@id="wp-submit"]
