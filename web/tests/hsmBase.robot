*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              http://hsmonline.com.br/


*** Keywords ***
Nova sessão
    Open Browser                    ${url}              chrome
Encerra sessão
    Capture Page Screenshot
    Close Browser