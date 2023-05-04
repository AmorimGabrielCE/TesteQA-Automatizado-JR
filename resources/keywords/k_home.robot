*** Settings ***
Documentation     Arquivo onde ficarão as keywords referentes a página inicial
Library           SeleniumLibrary
Resource          ../variables/var_home.robot
Resource          k_global.robot

*** Keywords ***
Quando preencher todos os dados com dados válidos
    Wait Until Element Is Visible    ${CampoFirstName}
    Input Text    ${CampoFirstName}    Nome
    Wait Until Element Is Visible    ${CampoLastName}
    Input Text    ${CampoLastName}    Sobrenome
    Wait Until Element Is Visible    ${CampoBusinessName}
    Input Text    ${CampoBusinessName}    Test Business
    Wait Until Element Is Visible    ${CampoEmail}
    Input Text    ${CampoEmail}    teste@email.com
    Calcular e preencher soma de validação    

Quando preencher todos os dados com dados válidos menos o campo obrigatório (First Name)
    Wait Until Element Is Visible    ${CampoLastName}
    Input Text    ${CampoLastName}    Sobrenome
    Wait Until Element Is Visible    ${CampoBusinessName}
    Input Text    ${CampoBusinessName}    Test Business
    Wait Until Element Is Visible    ${CampoEmail}
    Input Text    ${CampoEmail}    teste@email.com
    Calcular e preencher soma de validação

Calcular e preencher soma de validação
    Wait Until Element Is Visible    ${PrimeiroNumeroValidacao}
    ${PrimeiroNumero}=    Get Text    ${PrimeiroNumeroValidacao}
    Wait Until Element Is Visible    ${SegundoNumeroValidacao}
    ${SegundoNumero}=    Get Text   ${SegundoNumeroValidacao}
    ${Resultado}=    Evaluate    ${PrimeiroNumero}+${SegundoNumero}
    Wait Until Element Is Visible    ${CampoResult}
    Input Text    ${CampoResult}    ${Resultado}

E clicar no botão Submit
    Wait Until Element Is Enabled    ${BotãoSubmit}
    Click Element    ${BotãoSubmit}

Então o sistema deve apresentar a tela com a mensagem “Thank you!”
    Wait Until Element Is Visible    ${TituloThankYou}
    Element Text Should Be    ${TituloThankYou}    Thank you!

Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido (First Name)
    Alert Should Be Present    ${MensagemFirstNameVazio}    LEAVE