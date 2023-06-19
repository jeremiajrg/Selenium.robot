*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#*** Data ***
${nama_1}   Budi
${nama_2}   Tuti
${nama_3}   Iwan
${nama_4}
${nama_5}   Tuti
#*** Element ***
${field_nama}       //input[@id='nama']
${dd_department}     //button[normalize-space()='Pilih Department']
${dd_position}      //button[normalize-space()='Pilih Position']
${field_birthdate}  //input[@id='Birth Date']
${field_salary}     //input[@id='Salary']