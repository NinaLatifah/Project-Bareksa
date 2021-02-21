*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}            https://www.bareksa.com/id/member/login
${username}       ${EMPTY}
${password}       ${EMPTY}
${Keluar}         //*[@id="account-nav"]/div/div

*** Test Cases ***
CaseLogin
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=email    ${username}
    Input Password    id=password    ${password}
    Click Button    Login
    Sleep    10s    Wait for a reply
