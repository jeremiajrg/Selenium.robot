*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#*** Test Variable ***
${user_mail}    admin@pkp.co.id
${user_pass}    pr@w4th1y4
${title}        Under Testing QA
${category}     article
${desc}     Hanya Untuk Kebutuhan Testing
#*** Pages ***
${url}      http://dev.pengenumroh.pkp.co.id/users/login
${browser}  chrome
${mail_field}   //input[@id='email']
${pass_field}   //input[@id='password']
${button_login}     //button[normalize-space()='Login']
${element_blog}     //span[normalize-space()='Blog System']
${element_allpost}  //span[normalize-space()='All Posts']
${add_new_post}     //span[normalize-space()='Add New Post']
${blog_title}   //input[@id='title']
${dd_category}  //div[@class='filter-option-inner-inner']
${search_cat}   //input[@aria-label='Search']
${short_desc}   //textarea[@name='short_description']
${scroll_footer}    //p[@class='mb-0']
${button_save}      //button[normalize-space()='Save']

*** Test Cases ***
Def_login_sukses
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Sleep    3s
    Click Element    ${mail_field}
    Sleep    2s
    Input Text    ${mail_field}     ${user_mail}
    Sleep    2s
    Click Element    ${pass_field}
    Sleep    2s
    Input Text    ${pass_field}     ${user_pass}
    Sleep    2s
    Click Button    ${button_login}
    ##Wait Until Page Contains Element    ${dashboard}
    Sleep    2s

Def_Add_new_blog_berhasil
    Click Element   ${element_blog}
    Sleep    2s
    Click Element    ${element_allpost}
    Sleep    2s
    Click Element    ${add_new_post}
    Sleep   2s
    Click Element    ${blog_title}
    Sleep   2s
    Input Text      ${blog_title}   ${title}
    Sleep   2s
    Click Element   ${dd_category}
    Sleep   2s
    Input Text      ${search_cat}     ${category}
    Sleep   2s
    Press Keys     ${search_cat}    RETURN
    Sleep   2s
    Click Element   ${short_desc}
    Sleep   2s
    Input Text      ${short_desc}       ${desc}
    Sleep    2s
    Scroll Element Into View    ${scroll_footer}
    Sleep    1s
    Click Button    ${button_save}
    Sleep    2s