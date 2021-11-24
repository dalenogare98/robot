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
Gerando pessoa e cadastrando no HSM
    Log                 -------------------------------------     
    Log To Console      -------------------------------------     
    Log                 Pegando pessoa no 4devs
    Log To Console      Pegando pessoa no 4devs     
    Log                 -------------------------------------     
    Log To Console      -------------------------------------     
    Click Button        id:bt_gerar_pessoa
    Sleep               2
    ${fullName}=                       Get Text        id:nome
    ${user.email}=                     Get Text        id:email
    ${document}=                       Get Text        id:cpf
    ${birthDate}=                      Get Text        id:data_nasc
    ${password}=                       Get Text        id:senha
    ${passwordConfirmation}=           Get Text        id:senha
    ${cellPhoneDDD}=                   Get Text        id:celular
    ${cellPhoneNumber}=                Get Text        id:celular
    # Log To Console      ${fullName}         
    # Log To Console      ${document}     
    # Log To Console      ${birthDate}     
    # Log To Console      ${passwordConfirmation}     
    # Log To Console      ${cellPhoneDDD}     
    # Log To Console      ${cellPhoneNumber} 

# Cadastro no HSM
    Go To               http://hsmonline.com.br/   
    Sleep               4
    # Log                 -------------------------------------     
    # Log To Console      -------------------------------------     
    # Log                 Cadastrando pessoa no HSM
    # Log To Console      Cadastrando pessoa no HSM     
    # Log                 -------------------------------------     
    # Log To Console      -------------------------------------
    Title Should Be                  MedPass & Hospital Santa Mônica   
    Click Button                     //*[@id="root"]/div/div/div[2]/button
    Sleep                            1                       
    Wait Until Page Contains         Cadastre-se para liberar sua consulta gratuita
    Input Text                       name:fullName                           ${fullName}
    Sleep                            1
    Input Text                       name:user.email                         ${user.email}
    Sleep                            1
    Input Text                       name:document                           ${document}
    Sleep                            1
    Input Text                       name:birthDate                          ${birthDate}
    Sleep                            1
    Input Password                   name:user.password                      ${password}
    Sleep                            1
    Input Text                       name:user.passwordConfirmation          ${password}
    Sleep                            1
    Input Text                       name:cellPhoneDDD                       48
    Sleep                            1
    Input Text                       name:cellPhoneNumber                    991589775
    Sleep                            1
    Click Element                    class:check-mark              
    Sleep                            1
    Log                              ${user.email}
    Log To Console                   ${user.email}     
    Log                              ${password}
    Log To Console                   ${password}     
    Sleep                            1

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