*** Settings ***
Documentation     A web scrapper robot.
...               It Opens a website.
...               It Stores the web page Content as a file in the output directory.
Library           RPA.Browser.Selenium
Library           RPA.FileSystem
Library           RPA.Tables

*** Settings ***
Library           RPA.Excel.Application
Task Setup        Open Application
Task Teardown     Quit Application

*** Variables ***
${URL-1}=         https://www.amazon.com/Samsung-Electronics-Unlocked-Smartphone-Long-Lasting/dp/B08BX7N9SK/ref=sr_1_3?keywords=samsung+mobile&qid=1647077707&sr=8-3

*** Tasks ***
Store Web Page Content
    Open Available Browser    ${URL-1}
    #${Text}=    Get Text    productTitle
    ${Text}=    Get Text    dp
    #@{webelements}=    Get WebElement    xpath://*[@id="search"]/div[1]
    Create File
    ...    ${CURDIR}${/}output${/}content-1.csv
    ...    ${text}
    ...    overwrite=True
    [Teardown]    Close Browser

*** Variables ***
${URL-2}=         https://www.amazon.com/Simple-Mobile-Samsung-Galaxy-64GB/dp/B09CLMK872/ref=sr_1_1_sspa?keywords=samsung+mobile&qid=1647078148&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFYU1hWMTc3MlI4RVgmZW5jcnlwdGVkSWQ9QTAyNjM1NzczUk5BWlBaQjBCVkdMJmVuY3J5cHRlZEFkSWQ9QTAxNjA0MjQyOTJZMUk1NTdHWlVUJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==

*** Tasks ***
Store Web Page Content
    Open Available Browser    ${URL-2}
    #${Text}=    Get Text    productTitle
    ${Text}=    Get Text    dp
    #@{webelements}=    Get WebElement    xpath://*[@id="search"]/div[1]
    Create File
    ...    ${CURDIR}${/}output${/}content-2.csv
    ...    ${text}
    ...    overwrite=True
    [Teardown]    Close Browser

*** Variables ***
${URL-3}=         https://www.amazon.com/Samsung-Factory-Unlocked-Smartphone-Pro-Grade/dp/B08FYVMRM5/ref=sr_1_4?keywords=samsung+mobile&qid=1647078148&sr=8-4

*** Tasks ***
Store Web Page Content
    Open Available Browser    ${URL-3}
    #${Text}=    Get Text    productTitle
    ${Text}=    Get Text    dp
    #@{webelements}=    Get WebElement    xpath://*[@id="search"]/div[1]
    Create File
    ...    ${CURDIR}${/}output${/}content-3.csv
    ...    ${text}
    ...    overwrite=True
    [Teardown]    Close Browser

*** Variables ***
${URL-4}=         https://www.amazon.com/Samsung-Galaxy-Unlocked-T-Mobile-International/dp/B09GPQ9VM6/ref=sr_1_5_mod_primary_new?keywords=samsung+mobile&qid=1647078148&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sr=8-5

*** Tasks ***
Store Web Page Content
    Open Available Browser    ${URL-4}
    #${Text}=    Get Text    productTitle
    ${Text}=    Get Text    dp
    #@{webelements}=    Get WebElement    xpath://*[@id="search"]/div[1]
    Create File
    ...    ${CURDIR}${/}output${/}content-4.csv
    ...    ${text}
    ...    overwrite=True
    [Teardown]    Close Browser

*** Variables ***
${URL-5}=         https://www.amazon.com/Electronics-Unlocked-Smartphone-Multi-Camera-Expandable/dp/B08XX66S6Z/ref=sr_1_6?keywords=samsung+mobile&qid=1647078148&sr=8-6

*** Tasks ***
Store Web Page Content
    Open Available Browser    ${URL-5}
    #${Text}=    Get Text    productTitle
    ${Text}=    Get Text    dp
    #@{webelements}=    Get WebElement    xpath://*[@id="search"]/div[1]
    Create File
    ...    ${CURDIR}${/}output${/}content-5.csv
    ...    ${text}
    ...    overwrite=True
    [Teardown]    Close Browser
#*** Keywords ***
#Files to Table
    #${files}=    List files in directory    ${CURDIR}
    #${files}=    Create table    ${files}
    #Filter table by column    ${files}    size    >=    ${1024}
    #FOR    ${file}    IN    @{files}
    #Log    ${file}[name]
    #END
    #Write table to CSV    ${files}    ${OUTPUT_DIR}${/}files.csv
#*** Tasks ***
#Manipulate Excel application
    #Open Workbook    content-1.csv
    #Set Active Worksheet    sheetname=new stuff
    #Write To Cells
    #...    row=1
    #...    column=1
    #...    value=my data
    #Save Excel
#Run Excel Macro
    #Open Workbook    orders_with_macro.xlsm
    #Run Macro    Sheet1.CommandButton1_Click
#Export Workbook as PDF
    #Open Workbook    content-1.csv
    #Export as PDF    workbook.pdf

Minimal task
    Log    Done.
#Refrence:- https://www.youtube.com/watch?v=_l709ZfNPnc&ab_channel=ShankarR
