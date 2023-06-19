*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#*** Test Variables ***
${user_mail}    admin@pkp.co.id
${user_pass}    pr@w4th1y4
${produk_name}  Under Testing QA - 220523
${desc}     Testing Penambahan Kamar atribut
${data_dd_cat}  //span[normalize-space()='Umroh Reguler 12 Hari']
${data_dd_hotel}    //span[normalize-space()='Pullman Zamzam']
${syarat1}   Testing123
${duration}     12
${time_departure}   2023-03-29
${place}    Cirebon
${tag}      Umroh
${depa_airline}     //span[normalize-space()='Emirates']
${return_air}       //a[@id='bs-select-4-2']//span[@class='text'][normalize-space()='Emirates']
${price}    51000000
${qty}  5
${gal_image}    //div[@title='forexamp.png']//img[@class='img-fit']
${fac_inc}  Testingg
${fac_exc}  Testing in progress
${location}     Bandung
${activity}     Berangkat
${tipe_kamar1}      //span[@class='text'][normalize-space()='Double']
${tipe_kamar2}      //span[normalize-space()='Triple']
${tipe_kamar3}      //span[@class='text'][normalize-space()='Quad']

#*** Pages ***
${url}      http://dev.pengenumroh.pkp.co.id/users/login
${browser}  chrome
${mail_field}   //input[@id='email']
${pass_field}   //input[@id='password']
${button_login}     //button[normalize-space()='Login']
${dashboard}    //img[@src='http://dev.pengenumroh.pkp.co.id/public/assets/img/placeholder.jpg']
${expand_product}   //a[@class='aiz-side-nav-link']//span[@class='aiz-side-nav-text'][normalize-space()='Products']
${product_modul}    //span[normalize-space()='All products']
${add_new_produk}   //a[@class='btn btn-circle btn-info']//span[contains(text(),'Add New Product')]
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
${pilih_atribut}        //div[contains(text(),'Nothing selected')]
${pilih_kamar}      //a[@id='bs-select-5-0']
${tab_atribut}      //div[contains(text(),'Kamar')]
${pilih_tipe}       //button[@title='Nothing selected']
${tab_tipe}         //div[@class='filter-option-inner-inner'][normalize-space()='Double, Triple, Quad']
${unit_price}       //input[@placeholder='Unit price']
${galery_images}    //div[@data-multiple='true']
${button_add_files}     //button[normalize-space()='Add Files']
${facility_include}     (//tags[@role='tagslist'])[3]
${facility_exclude}     (//tags[@role='tagslist'])[4]
${button_save_publish}      //button[normalize-space()='Save & Publish']
${button_save_and_unpublish}    //button[normalize-space()='Save & Unpublish']
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
    Scroll Element Into View    ${data_dd_hotel}
    Sleep    2s
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
    Sleep   2s
    Scroll Element Into View    ${unit_price}
    Sleep    2s
    Click Element    ${departure_airline}
    Sleep   2s
    Click Element   ${depa_airline}
    Sleep   2s
    Click Element       ${return_airline}
    Sleep    1s
    Click Element    ${return_air}
    Sleep   2s
    Click Element   ${pilih_atribut}
    Sleep   1s
    Click Element   ${pilih_kamar}
    Sleep    1s
    Click Element    ${tab_atribut}
    Sleep    1s
    Click Button    ${pilih_tipe}
    Sleep    2s
    Click Element    ${tipe_kamar1}
    Sleep    2s
    Click Element    ${tipe_kamar2}
    Sleep    1s
    Click Element    ${tipe_kamar3}
    Sleep    1s
    Click Element    ${tab_tipe}
    Sleep    1s
    Clear Element Text    ${unit_price}
    Sleep    2s
    Input Text    ${unit_price}     ${price}
    Sleep    3s
    Clear Element Text    ${quantity}
    Sleep    2s
    Input Text    ${quantity}       ${qty}
    Sleep    3s
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
    Scroll Element Into View    ${button_save_publish}
    Sleep    2s
    ##Click Button    ${button_save_publish}
    Click Button    ${button_save_and_unpublish}
    Sleep    3s