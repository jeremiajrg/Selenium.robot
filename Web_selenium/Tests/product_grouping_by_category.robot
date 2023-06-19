*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#*** Test Variables ***
${browser}      chrome
${url}      http://dev.pengenumroh.pkp.co.id/search?plclocation=&plctime=&plcprice=&location=&month=&year=&price=
${lokasi}   //div[@class='product-name text-truncate fs-14 mb-5px'][normalize-space()='Jakarta']
${waktu}    //div[@class='product-name text-truncate fs-14 mb-5px'][normalize-space()='January-2023']
${biaya}    //span[@id='31kto35k']
#*** Object Test ***
${cat_umroh_reg9hari}  //a[contains(text(),'Umroh Reguler 9 Hari')]

${by_lokasi}    //div[@class='input-group']//input[@id='search-by-location']
${by_waktu}     //div[@class='input-group']//input[@id='search-by-time']
${by_biaya}     //div[@class='input-group']//input[@id='search-by-price']
${scroll_1}     //img[@alt='Umroh Maret bersama Ust. Junaedi Abdullah']
${scroll_2}     //img[@alt='Umroh Reguler - Surbaya']
${scroll_3}     //img[@alt='Umroh Reguler Desember']
${back_scroll}  //img[@class='mw-100 h-30px h-md-40px']
${submit}   //div[@class='input-group-append d-none d-lg-block']//button[@type='submit']
#*** Expect Result ***
${validasi}  //h1[normalize-space()='Umroh Reguler 9 Hari']
${cat_umroh_reg_12hari}     //a[normalize-space()='"Umroh Reguler 12 Hari"']

*** Test Cases ***
def_grouping_product_filtering_by_lokasi
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Sleep    2s
    Click Element    ${cat_umroh_reg9hari}
    Sleep    2s
    Scroll Element Into View    ${scroll_1}
    Sleep    1s
    Scroll Element Into View    ${scroll_2}
    Sleep    1s
    Scroll Element Into View    ${scroll_3}
    Sleep    1s
    Scroll Element Into View    ${back_scroll}
    Sleep    2s
    Click Element    ${by_lokasi}
    Sleep    1s
    Click Element    ${lokasi}
    Sleep    2s
    Click Button    ${submit}
    Wait Until Element Is Visible    ${validasi}
    Sleep    2s