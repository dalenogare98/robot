*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com/

*** Keywords ***
Nova sessão
    Open Browser                    ${url}              chrome
Encerra sessão
    Close Browser