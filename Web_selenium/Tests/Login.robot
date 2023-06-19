*** Settings ***
Library     SeleniumLibrary
Library    DateTime

*** Variables ***
#*** Test Variables ***
${user_id}  jerepkp
${pass_id}  jerepkp123
#*** Pages ***
${browser}  chrome
${url}   http://147.139.139.239/intranet/login.php
${username}     xpath://input[@placeholder='Username']
${password}     xpath://input[@placeholder='Pasword']
${orig timeout}     10 seconds
${button_login}     //button[contains(text(),'Masuk')]
${marketing_menu}   //strong[contains(text(),'Marketing')]
${kontrak_menu}     //strong[contains(text(),'Kontrak')]
${kont_submen_client}   //span[contains(text(),'Client')]
${add_kontrak}      partial link:Tamb
${inp_judul}    xpath://input[@id='inp[judul]']
${judul}        Kontrak Proyek IT SIM (Test)
${inp_ket}      xpath://textarea[@id='inp[keterangan]']
${ket}      Test
${dd_pilihcompany}      //span[@id='select2-inpcompany-container']
${search_box_company}   //input[@role='textbox']
${select_company}   PT. Organik
${inp_company}      //textarea[@id='inp[keterangan]']
${dd_pilihclient}   //span[@id='select2-inpclient-container']
${search_box_client}    //input[@role='textbox']
${select_client}    AFAMILY
${inp_startdate}    //input[@id='inp[mulai]']
${today}    //td[@class='today day']
${inp_enddate}  //input[@id='inp[selesai]']
${swipe_calendar}   //i[@class='fa fa-angle-right']
${scroll_down}      //div[@class='page-footer']//div[@class='page-footer']
${scroll_up}    //div[@class='page-bar']
${inp_nilaitotal}   //input[@id='inp[nilai_total]']
${inp_history}      //input[@id='inp[history]']
${end_date}     //td[normalize-space()='30']
${inp_filekontrak}      //div[@class='form-control uneditable-input input-small input-fixed']
${submit_kontrak}   //input[@name='Submit']
${notif_sukses}     //div[contains(@class,'showSweetAlert visible')]        //h2[normalize-space()='Data berhasil disimpan']
${orig wait}    15 seconds
*** Test Cases ***
def_Login
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    ##Set Selenium Speed    3 seconds
    ##Set Selenium Implicit Wait    ${orig wait}
    Click Element      ${username}
    ##Sleep   5s
    Input Text      ${username}     ${user_id}
    ##Sleep   5s
    ##Set Selenium Timeout    ${orig_timeout}
    Click Element      ${password}
    ##Sleep   5s
    Input Text      ${password}     ${pass_id}
    ##Sleep    5s
    ##Set Selenium Timeout    ${orig_timeout}
    Click Button    ${button_login}
    Sleep   10s
def_createkontrak
    Click Element    ${kontrak_menu}
    Sleep   5s
    Click Element    ${kont_submen_client}
    Sleep   5s
    Click Element    ${add_kontrak}
    Sleep    5s
    Input Text    ${inp_judul}      ${judul}
    Sleep    3s
    Input Text    ${inp_ket}    ${ket}
    Sleep    3s
    Click Element    ${dd_pilihcompany}
    Sleep   3s
    Input Text    ${search_box_company}     ${select_company}
    ##Click Element    ${search_box_company}
    Sleep   3s
    Press Keys    ${search_box_company}     RETURN
    Sleep   3s
    Click Element    ${dd_pilihclient}
    Sleep    3s
    Input Text    ${search_box_client}      ${select_client}
    Sleep    3s
    Press Keys    ${search_box_client}      RETURN
    Sleep    3s
    Click Element    ${inp_startdate}
    Sleep    3s
    Click Element    ${today}
    Sleep    3s
    Click Element    ${inp_enddate}
    Sleep    3s
    Double Click Element    ${swipe_calendar}
    Sleep    3s
    Click Element    ${end_date}
    Sleep    3s
    Scroll Element Into View    ${scroll_down}
    Sleep    3s
    Click Element    ${inp_nilaitotal}
    Sleep    3s
    Input Text    ${inp_nilaitotal}     150000000
    Sleep    3s
    Click Element    ${inp_history}
    Sleep    3s
    Input Text    ${inp_history}    --
    Sleep    3s
    Click Element    ${inp_filekontrak}
    Sleep    3s
    Choose File    css=[type='file']    C:/Users/ASUS/Downloads/kontrak-63bcce2b2a1901673317931.pdf
    Sleep    3s
    Scroll Element Into View    ${scroll_up}
    Sleep    3s
    Click Button    ${submit_kontrak}
    Sleep    4s