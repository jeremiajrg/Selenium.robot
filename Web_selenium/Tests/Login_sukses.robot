*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#*** Test Variables ***
${user_mail}    jejejeow@mail.com
${user_pass}    pengenumroh123
${produk_name}  Under Testing - QA(3)
${desc}     Keperluan Testing
${data_dd_cat}  //span[normalize-space()='Umroh Reguler 12 Hari']
${data_dd_hotel}    //span[normalize-space()='Pullman Zamzam']
${syarat1}   Testing---
${duration}     8
${time_departure}   2023-03-17
${place}    Bekasi
${tag}      Umroh
${depa_airline}     //a[@id='bs-select-3-1']//span[@class='text'][normalize-space()='Garuda Indonesia']
${return_air}       //a[@id='bs-select-4-1']//span[@class='text'][normalize-space()='Garuda Indonesia']
${price}    52000000
${qty}  6
${gal_image}    //div[@title='forexamp.png']//img[@class='img-fit']
${fac_inc}  Under Testing
${fac_exc}  Under Testing
${location}     Jakarta
${activity}     Berangkat

#*** Pages ***
${url}      http://dev.pengenumroh.pkp.co.id/users/login
${browser}  chrome
${mail_field}   //input[@id='email']
${pass_field}   //input[@id='password']
${button_login}     //button[normalize-space()='Login']
${dashboard}    //img[@src='http://dev.pengenumroh.pkp.co.id/public/assets/img/placeholder.jpg']
${expand_product}   //a[@class='aiz-side-nav-link']//span[@class='aiz-side-nav-text'][normalize-space()='Products']
${product_modul}    //a[@href='http://dev.pengenumroh.pkp.co.id/seller/products']//span[@class='aiz-side-nav-text'][normalize-space()='Products']
${add_new_produk}   //div[@class='p-3 rounded mb-3 c-pointer text-center bg-white shadow-sm hov-shadow-lg has-transition']
${product_name_textfield}   //input[@placeholder='Product Name']
${desc_text}    //textarea[@name='description']
${dd_category}  //button[@title='Select Category']
${dd_hotel}     //div[contains(text(),'Select Hotel')]
${syarat_ketentuan}     (//span[@role='textbox'])[1]
${travel_duration}      //input[@placeholder='Travel Duration']
${departure_time}       //input[@placeholder='Select Date']
${departure_place}      //input[@placeholder='Departure Place']
${tags}     //span[@data-placeholder='Type and hit enter to add a tag']
${quantity}     //input[@placeholder='Quantity']
${departure_airline}    //div[contains(text(),'Select Airlines')]
${return_airline}       //button[@title='Select Airlines']
${unit_price}       //input[@placeholder='Unit price']
${galery_images}    //div[@data-multiple='true']
${button_add_files}     //button[normalize-space()='Add Files']
${facility_include}     (//tags[@role='tagslist'])[3]
${facility_exclude}     (//tags[@role='tagslist'])[4]
${button_upload_product}      //button[normalize-space()='Upload Product']
${add_roadmap}      //button[@id='choice_attributes']
${road_location}    //input[@placeholder='Location']
${road_activity}    //input[@placeholder='Activity']
${meta_title}       //input[@placeholder='Meta Title']


*** Test Cases ***
Def_loginsukses
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

def_addnewproduk
    Click Element    ${expand_product}
    Sleep    3s
    Click Element    ${product_modul}
    Sleep    3s
    Click Element    ${add_new_produk}
    Sleep    3s
    Click Element    ${product_name_textfield}
    Sleep    2s
    Input Text    ${product_name_textfield}     ${produk_name}
    Sleep    2s
    Click Element    ${desc_text}
    Sleep    2s
    Input Text    ${desc_text}      ${desc}
    Sleep   2s
    Click Button    ${dd_category}
    Sleep    2s
    Scroll Element Into View    ${data_dd_cat}
    Sleep    2s
    Click Element    ${data_dd_cat}
    Sleep    2s
    Click Element    ${dd_hotel}
    Sleep    2s
    ##Scroll Element Into View    ${data_dd_hotel}
    ##Sleep    2s
    Click Element    ${data_dd_hotel}
    Sleep    2s
    Scroll Element Into View    ${tags}
    Sleep    2s
    Click Element    ${syarat_ketentuan}
    Sleep    2s
    Input Text    ${syarat_ketentuan}   ${syarat1}
    Sleep    2s
    Press Keys    ${syarat_ketentuan}   RETURN
    Sleep    3s
    Click Element       ${travel_duration}
    Sleep   2s
    Input Text      ${travel_duration}      ${duration}
    Sleep   2s
    Click Element       ${departure_time}
    Sleep   2s
    Input Text    ${departure_time}     ${time_departure}
    Sleep    2s
    ##Press Keys    ${departure_time}     RETURN
    ##Sleep   2s
    Scroll Element Into View    ${departure_airline}
    Sleep   2s
    Click Element    ${departure_place}
    Sleep   2s
    Input Text    ${departure_place}    ${place}
    Sleep   2s
    Click Element    ${tags}
    Sleep    2s
    Input Text    ${tags}       ${tag}
    Sleep    2s
    Press Keys    ${tags}       RETURN
    Sleep   3s
    Scroll Element Into View    ${return_airline}
    Sleep   2s
    Click Element    ${departure_airline}
    Sleep   2s
    Click Element   ${depa_airline}
    Sleep   2s
    Click Element       ${return_airline}
    Sleep    1s
    Click Element    ${return_air}
    Sleep   2s
    Clear Element Text    ${unit_price}
    Sleep    2s
    Input Text    ${unit_price}     ${price}
    Sleep    3s
    Clear Element Text    ${quantity}
    Sleep    2s
    Input Text    ${quantity}       ${qty}
    Sleep    2s
    Click Element   ${galery_images}
    Sleep    2s
    Click Element   ${gal_image}
    Sleep    2s
    Click Button    ${button_add_files}
    Sleep    3s
    Scroll Element Into View    ${add_roadmap}
    Sleep    2s
    Click Element    ${facility_include}
    Sleep    2s
    Press Keys    ${facility_include}       ${fac_inc}
    Sleep    2s
    Click Element    ${facility_exclude}
    Sleep    2s
    Press Keys    ${facility_exclude}       ${fac_exc}
    Sleep    2s
    Click Element    ${add_roadmap}
    Sleep   2s
    Click Element   ${road_location}
    Sleep   2s
    Input Text      ${road_location}    ${location}
    Sleep   2s
    Click Element   ${road_activity}
    Sleep   2s
    Input Text      ${road_activity}    ${activity}
    Sleep   2s
    Scroll Element Into View    ${meta_title}
    Sleep   2s
    Scroll Element Into View    ${button_upload_product}
    Sleep    2s
    Click Button    ${button_upload_product}
    Sleep    4s