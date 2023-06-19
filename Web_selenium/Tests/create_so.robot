*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#*** Test Variables ***
${user_id}  jerepkp
${pass_id}    jerepkp123
#*** Pages ***
${browser}  chrome
${url}  http://147.139.139.239/intranet/login.php
${username}     xpath://input[@placeholder='Username']
${password}     xpath://input[@placeholder='Pasword']
${button_login}     //button[contains(text(),'Masuk')]
${orig_wait}    10s
${home_page}    //div[@class='page-header navbar navbar-fixed-top']

*** Test Cases ***
def_login_sukses
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Click Element    ${username}
    Input Text    ${username}   ${user_id}
    Sleep    3s
    Click Element    ${password}
    Input Text    ${password}   ${pass_id}
    Sleep    3s
    Click Button    ${button_login}
    Set Selenium Timeout    ${orig_wait}
    Wait Until Page Contains Element    ${home_page}
    Sleep    3s