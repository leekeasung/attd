*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}       https://sprint3r8.wordpress.com
${TITLE}       sprint3r8
${VALID_USERNAME}    sprint3r8
${VALID_PASSWORD}    WorkingSoftware

*** Keywords ***
Open login page
    Click Element   //*[@id="masthead"]/button
    Wait Until Page Contains    Log in    60
    Click Link   ${SERVER}/wp-login.php

Submit login
    Click Element    //*[@id="wp-submit"]
