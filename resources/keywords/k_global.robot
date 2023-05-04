*** Settings ***
Documentation     Arquivo onde ficarão as keywords gerais/globais dos testes
Library           SeleniumLibrary
Resource          ../variables/globalVar.robot
Resource          k_home.robot

*** Keywords ***
Abrir navegador
    Open Browser  browser=${Browser}    options=add_argument("--start-maximized")
    
Dado que o usuário esteja no site
    [Arguments]    ${Site}
    Go To    ${Site}
    
Fechar navegador
    Close Browser