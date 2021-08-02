*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

เปิด Website e-office
    เปิด chrome browser เข้า website
    เข้าสู่ระบบ

เจ้าหน้าที่ยกร่างหนังสือ    
    คลิกเมนูระบบสารบรรณฯ
    คลิกเมนูทะเบียนหนังสือส่ง 
    คลิกเมนูยกร่างหนังสือ

ข้อมูลหนังสือส่ง
    #ลงวันที่
    กรอกชื่อเรื่อง
    กรอกระบุเรียน    
    #ชื่อผู้ลงนาม   
    คลิกปุ่มออกเลขหนังสือ
    
*** Keywords ***

เปิด chrome browser เข้า website
    Open Browser    url=https://rd-dev.summitthai.com/rd-app/login.xhtml   browser=chrome  
    Maximize Browser Window
เข้าสู่ระบบ    
    Input Text    name=form-login:userId    sunisa.ra
    Input Text    name=form-login:password    P@ssw0rd
    Click Element    form-login:btn


คลิกเมนูระบบสารบรรณฯ
    Click Element    menuform:j_idt163_0
คลิกเมนูทะเบียนหนังสือส่ง 
    Click Element    menuform:j_idt163_1
คลิกเมนูยกร่างหนังสือ
    Click Element    menuform:j_idt163_1_1


#ลงวันที่

กรอกชื่อเรื่อง
    Input Text    name=formc:subject1    การประชาสัมพันธ์การยื่นแบบแสดงรายการภาษีเงินได้บุคคลธรรมดา ภ.ง.ด.90, 91 ปีภาษี 2563
กรอกระบุเรียน  
    #[Arguments]    ${receiverName}
    Input Text    name=formc:receiverNameAuto1_input     ผู้อำนวยการกองมาตรฐานการจัดเก็บภาษี
    Wait Until Element Is Visible    id=formc:receiverNameAuto1_panel
    Click Element    //*[@id="formc:receiverNameAuto1_panel"]/ul/li[contains(@data-item-label, 'ผู้อำนวยการกองมาตรฐานการจัดเก็บภาษี')]
 #ชื่อผู้ลงนาม   
คลิกปุ่มออกเลขหนังสือ
    Click Element    formc:e_btnInsert

