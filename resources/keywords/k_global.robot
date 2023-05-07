*** Settings ***
Documentation     Aqui armazenamos as keywords globais que podem ser ultilizadas em qualquer teste
Library           SeleniumLibrary
Resource          ../variables/v_global.robot

*** Keywords ***

Abrir navegador
    Open Browser  browser=${Browser}
    Maximize Browser Window
    
Fechar navegador
    Close Browser