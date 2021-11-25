*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}                https://www.4devs.com.br/gerador_de_pessoas


*** Keywords ***
Nova sessão
    Open Browser                    ${url}              chrome
    Maximize Browser Window
Encerra sessão
    Capture Page Screenshot
    # Close Browser