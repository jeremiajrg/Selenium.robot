from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from selenium.common.exceptions import TimeoutException
from openpyxl import load_workbook
##from selenium.webdriver.common.keys import Keys


import  time

wb = load_workbook(filename="D:\TEST INSPIRO Tech\datainputform.xlsx")

sheetRange = wb['Data']   ##SheetName = Data

driver = webdriver.chrome()

driver.get("https://demoqa.com/webtables")      ##urlwebdummykebutuhantest
driver.maximize_window()
driver.implicitly_wait(5)       ##optionaldigunakan tergantung kecepatan koneksi internet

i = 2

while i <= len(sheetRange['A']):
    Nama = sheetRange['A'+str(i)].value
    Department = sheetRange['B' + str(i)].value
    Position = sheetRange['C' + str(i)].value
    DOB = sheetRange['D' + str(i)].value
    Salary = sheetRange['E' + str(i)].value
    Test = sheetRange['F' +str(i)].value

    driver.find_element_by_id("addNewRecordButton").click()

    try:
        WebDriverWait(driver,5).until(EC.visibility_of_element_located((By.XPATH,'/html/body/div[4]/div/div')))

        driver.find_element_by_id('firstName').send_keys(Nama)
        driver.find_element_by_id('lastName').send_keys(Department)
        driver.find_element_by_id('userEmail').send_keys(Position)
        driver.find_element_by_id('age').send_keys(DOB)
        driver.find_element_by_id('salary').send_keys(Salary)
        driver.find_element_by_id('department').send_keys(Test)
        if Nama != null & Department != null & Position != null & DOB != null & Salary != null & Test != null:
            continue
        driver.find_element_by_id('submit').click()

    except TimeoutException:
        print("ada yang salah bang")
        pass

    i = i + 1