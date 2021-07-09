*** Settings ***
Resource        jenkinsBase.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${name}             ${CTN}
${atividade}        26934

*** Test Cases ***
Faz build
    Maximize Browser Window
    Input text                       //*[@id="j_username"]                       extradigital
    Input text                       //*[@name="j_password"]                     Extr@123
    Click Button                     Submit
    Sleep                            1
    Click Link                       ${name}
    Click Link                       //*[@id="tasks"]/div[5]/a[2]
    Wait Until Element is Enabled    id:filter  timeout=30 s
    Input text                       id:filter                                   ${atividade}
    Sleep                            1
    Click Element                    //*[@id="select"]/option[1]    
    Sleep                            1                                        
    Click Button                     yui-gen6-button