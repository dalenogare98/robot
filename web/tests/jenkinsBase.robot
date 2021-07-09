*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              http://192.168.69.158:8080/
${CTN}              CTN - Boss

*** Keywords ***
Nova sessão
    Open Browser                    ${url}              chrome
Encerra sessão
    Capture Page Screenshot