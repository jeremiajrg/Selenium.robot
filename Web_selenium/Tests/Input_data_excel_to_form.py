from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from openpyxl import load_workbook

import  time

wb = load_workbook(filename="D:\TEST INSPIRO Tech\datainputform.xlsx")

sheetRange = wb['Data']   ##SheetName = Data

driver = webdriver.chrome()

driver.get("https://inspirotech.com/qatest-2")      ##urlwebdummykebutuhantest
driver.maximize_window()
driver.implicitly_wait(5)       ##optionaldigunakan tergantung kecepatan koneksi internet

i = 2

while i <= len(sheetRange['A']):
    Nama = sheetRange['A'+str(i)].value
    Department = sheetRange['B' + str(i)].value
    Position = sheetRange['C' + str(i)].value
    DOB = sheetRange['D' + str(i)].value
    Salary = sheetRange['E' + str(i)].value

    driver.find_element_by_id("btn_addDataKaryawan").click()

    try:
        WebDriverWait(driver,5).until(EC.visibility_of_element_located((By.XPATH,'//div[@class='form-data-input']')))

        driver.find_element_by_id('Nama').send_keys(Nama)
        driver.find_element(By.CLASS_NAME, 'Department').send_keys(Department)
        driver.find_element(By.CLASS_NAME, 'Position').send_keys(Position)
        driver.find_element_by_id('DOB').send_keys(DOB)
        driver.find_element_by_id('Salary').send_keys(Salary)
        if Nama != null & Department != null & Position != null & DOB != null & Salary != null:
            continue
        driver.find_element_by_id('btn-save').click()

    except TimeoutException:
        print("sepertinya ada yang salah.")
        pass

    time.sleep(3)
    i = i + 1