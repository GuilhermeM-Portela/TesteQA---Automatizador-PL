*** Settings ***
Documentation       Testes de cadastro de usuários
Resource            ../resources/keywords/k_cadastro.robot
  
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***

Caso de Teste 1 – Adicionar novo usuário com sucesso
    Dado que o usuário esteja no site  https://demo.automationtesting.in/Register.html
    Quando preencher todos os dados com dados válidos
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem de sucesso