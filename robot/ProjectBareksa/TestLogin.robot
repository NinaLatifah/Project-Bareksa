*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}            https://www.bareksa.com/id/member/login
${username}       latifanina16@gmail.com
${password}       ******
${Keluar}         //*[@id="account-nav"]/div/div

*** Test Cases ***
positiveCase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=email    ${username}
    Input Password    id=password    ${password}
    Click Button    Login
    Sleep    10s    Wait for a reply
    Click Element At Coordinates    ${Keluar}

negativeCase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=email    ${username}
    Input Password    id=password    ${password}
    Click Button    Login
    Sleep    10s    Wait for a reply
