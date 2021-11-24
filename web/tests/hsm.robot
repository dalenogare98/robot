*** Settings ***
Resource        hsmBase.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${fullName}     
${user.email}     
${document}     
${birthDate}     
${password}     
${passwordConfirmation}     
${cellPhoneDDD}     
${cellPhoneNumber} 

*** Test Cases ***
Pegando pessoa aleatória no 4devs
    Log To Console      ${fullName}     
    Log To Console      ${user.email}     
    Log To Console      ${document}     
    Log To Console      ${birthDate}     
    Log To Console      ${password}     
    Log To Console      ${passwordConfirmation}     
    Log To Console      ${cellPhoneDDD}     
    Log To Console      ${cellPhoneNumber} 

Cadastro no HSM
    Log To Console      ${fullName}
    Sleep               1
    ${fullName}=            Set Variable        Joao                    
    Sleep               1
    Log To Console      ${fullName}
    Sleep               1
    # Maximize Browser Window
    # Title Should Be                  MedPass & Hospital Santa Mônica   
    # Click Button                     //*[@id="root"]/div/div/div[2]/button
    # Sleep                            1                       
    # Wait Until Page Contains         Cadastre-se para liberar sua consulta gratuita
    # Input Text                       name:fullName                           Pedro Silveira Dalenogare
    # Input Text                       name:user.email                         pedro_teste@hotmail.com
    # Input Text                       name:document                           10726544906
    # Input Text                       name:birthDate                          15051998
    # Input Password                   name:user.password                      Pedro
    # Input Text                       name:user.passwordConfirmation          Pedro
    # Input Text                       name:cellPhoneDDD                       48
    # Input Text                       name:cellPhoneNumber                    991589775
    # Click Element                    class:check-mark              
    # Sleep                            1
    # Sleep                            1
    # Sleep                            1
    # Sleep                            1
    # Sleep                            1
    # Sleep                            1
    # Sleep                            1
    # Sleep                            1
    # Sleep                            1
    Sleep                            3

    # Input text                       //*[@id="j_username"]                       extradigital
    # Input text                       //*[@name="j_password"]                     Extr@123
    # Click Button                     Submit
    # Sleep                            1
    # Click Link                       ${name}
    # Click Link                       //*[@id="tasks"]/div[5]/a[2]
    # Wait Until Element is Enabled    id:filter  timeout=30 s
    # Input text                       id:filter                                   ${atividade}
    # Sleep                            1
    # Click Element                    //*[@id="select"]/option[1]    
    # Sleep                            1                                        
    # Click Button                     yui-gen6-button