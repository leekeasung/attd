*** Settings ***
Library    Selenium2Library
Resource    team8_01_resource.robot

Suite Setup    Open Browser    ${SERVER}
Test Setup    Go to    https://sprint3r8.wordpress.com/wp-login.php
Suite Teardown    Close Browser
Test Template    Login With Invalid Credentials Should Fail

*** Test Cases ***               USER NAME            PASSWORD
Invalid Username                 xxxx                 ${VALID PASSWORD}
Invalid Password                 ${VALID USERNAME}    xxxx
Invalid Username And Password    xxxx                 xxxx
Empty Username                   ${EMPTY}             ${VALID PASSWORD}
Empty Password                   ${VALID USERNAME}    ${EMPTY}
#Empty Username And Password      ${EMPTY}             ${EMPTY}


*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Input Text    user_login    ${username}
    Input Password     user_pass    ${password}
    Submit login
    Login should Failed

init test setup
    Open login page
    Wait Until Page Contains    Email or Username    60

Login should Failed
    Wait Until Page Contains    ERROR    30
