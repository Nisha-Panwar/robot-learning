*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}    chrome
${USERNAME}   Admin
${PASSWORD}   admin123

*** Test Cases ***
Login To OrangeHRM Successfully
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@name='username']    timeout=15s
    Input Text    xpath=//input[@name='username']    ${USERNAME}
    Input Text    xpath=//input[@name='password']    ${PASSWORD}
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Dashboard    timeout=15s
    Log    Login Successful!
    Close Browser