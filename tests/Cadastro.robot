*** Settings ***
Documentation     Arquivo da suite de testes referentes ao Cadastro
Resource            ../resources/keywords/k_home.robot
Resource            ../resources/keywords/k_global.robot
  
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Test Cases ***

Caso de Teste 1 – criar um novo cadastro com sucesso
    [Tags]  Registro
    ...     Fluxo Básico
    Dado que o usuário esteja no site     ${Home}
    Quando preencher todos os dados com dados válidos
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem “Thank you!”

Caso de Teste 2 – Tentar fazer um cadastro sem um campo obrigatório
    [Tags]  Registro
    ...     Fluxo de Exceção
    Dado que o usuário esteja no site     ${Home}
    Quando preencher todos os dados com dados válidos menos o campo obrigatório (First Name)
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido (First Name)