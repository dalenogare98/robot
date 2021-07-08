*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Pedro   João   
    Should Be Equal     ${result}   Olá PedroJoão, Bem Vindo ao Curso Básico de Robot Framework!