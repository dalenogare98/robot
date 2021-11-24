*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# ${url}              http://hsmonline.com.br/
${url}                https://www.4devs.com.br/gerador_de_pessoas


*** Keywords ***
# Nova sessão HSM
#     Open Browser                    ${url}              chrome
Nova sessão
    Open Browser                    ${url}              chrome
Encerra sessão
    Capture Page Screenshot
    Close Browser