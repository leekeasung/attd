*** Settings ***
Library    Selenium2Library
Resource    team8_01_resource.robot

*** Test Cases ***
Login web pass
    Open Browser    ${SERVER}
    Open login page
    Wait Until Page Contains    Email or Username    60
    Input Text    user_login    ${VALID_USERNAME}
    Input Password     user_pass    ${VALID_PASSWORD}
    Unselect Checkbox    //*[@id="rememberme"]
    Submit login
    Wait Until Page Contains    Welcome to WordPress.com!    60
    Close Browser
