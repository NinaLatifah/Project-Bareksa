*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://www.bareksa.com/id/member/login
${browser}        chrome
${username}       latifanina16@gmail.com

*** Test Cases ***
positiveCase2
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Link    //*[@id="login-form"]/div[6]/a
    Input Text    id=email    ${username}
    Click Button    Kirim
    Sleep    10s    Wait for a reply

negativeCase2
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Link    //*[@id="login-form"]/div[6]/a
    Input Text    id=email    ${username}
    Click Button    Kirim
    Sleep    10s    Wait for a reply
