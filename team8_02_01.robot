*** Settings ***
Library    Selenium2Library
Resource    team8_01_resource.robot

*** Test Cases ***
Login post text
    Open Browser    ${SERVER}
    Open login page
    Wait Until Page Contains    Email or Username    60
    Input Text    user_login    ${VALID_USERNAME}
    Input Password     user_pass    ${VALID_PASSWORD}
    Unselect Checkbox    //*[@id="rememberme"]
    Submit login
    Wait Until Page Contains    Welcome to WordPress.com!    60
    Set Selenium Speed    0
    Maximize Browser Window
    # Click Element    //*[@id="wp-admin-bar-ab-new-post"]/a
    Wait Until Page Contains    Post
    Click Element    //*[@id="menu-posts"]/a/div[3]
    Click Link    post-new.php
    Wait Until Page Contains    Add New Post
    Click Element    //*[@id="title"]
    Input Text    //*[@id="title"]    ทดสอบข่าว
    # Input Text    content    เนื้อข่าวตรงนี้ <img src="http://www.set.or.th/images/logo_en.jpg" class="alignnone" /> เนื้อข่าวตรงนี้
    Set Selenium Speed    ${DELAY}
    Click Element    insert-media-button
    # Input Text    content    <img src="https://sprint3r8.files.wordpress.com/2016/02/setlogo2.png" alt="SETLogo" width="133" height="62" class="alignnone size-full wp-image-26" />
    Click Element    css=.thumbnail
    Click Button    Insert into post
    # Input Text    content    เนื้อข่าวตรงนี้
    Click Element    //*[@id="publish"]
    Close Browser
