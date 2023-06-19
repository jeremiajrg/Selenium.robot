*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#*** Test Variable ***
#*** Personal Info ***
${name}     QA
${mail}     pkpqatester@gmail
${password}     pengenumroh123
${konfir_pass}  pengenumroh123
${shop_name}    Tester's Room
${address}      Citayam, Depok
#*** Page ***
${url}      http://dev.pengenumroh.pkp.co.id/shops/create
${browser}  chrome
${field_name}   //input[@placeholder='Name']
${field_email}  //input[@placeholder='Email']
${field_password}   //input[@placeholder='Password']
${field_konfir_password}    //input[@placeholder='Confirm Password']
${field_shop_name}      //input[@placeholder='Shop Name']
${field_address}    //input[@placeholder='Address']
${button_regist}    //button[normalize-space()='Register Your Shop']

*** Test Cases ***
def_regist_seller_berhasil
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Sleep   2s
    Click Element   ${field_name}
    Sleep   1s
    Input Text      ${field_name}       ${name}
    Sleep    1s
    Click Element    ${field_email}
    Sleep    1s
    Input Text    ${field_email}    ${mail}
    Sleep    1s
    Click Element    ${field_password}
    Sleep    1s
    Input Text    ${field_password}     ${password}
    Sleep    1s
    Click Element    ${field_konfir_password}
    Sleep    1s
    Input Text    ${field_konfir_password}      ${konfir_pass}
    Sleep    1s
    Scroll Element Into View    ${field_shop_name}
    Sleep    1s
    Click Element    ${field_shop_name}
    Sleep    1s
    Input Text    ${field_shop_name}    ${shop_name}
    Sleep    1s
    Scroll Element Into View    ${button_regist}
    Sleep    1s
    Click Element    ${field_address}
    Sleep    1s
    Input Text    ${field_address}      ${address}
    Sleep    1s
    Click Button    ${button_regist}
    Sleep    4s