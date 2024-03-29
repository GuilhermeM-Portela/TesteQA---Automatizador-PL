*** Settings ***
Documentation     Aqui armazenamos as keywords relacionadas com o teste de cadastro de usuário
Library           SeleniumLibrary
Resource          ../variables/v_global.robot
Resource          ../variables/v_cadastro.robot
Resource          ../assert/assert.robot
Resource          ../keywords/k_global.robot

*** Keywords ***

Dado que o usuário esteja no site
    [Arguments]                    ${URL}
    Go To                          ${URL}

Quando preencher todos os dados com dados válidos
    Wait Until Element Is Visible  ${LocalizaçãoPrimeiroNome}
    #Preenchendo os campos do tipo textBox
    Input Text                     ${LocalizaçãoPrimeiroNome}  ${PrimeiroNome}
    Input Text                     ${LocalizaçãoSobrenome}     ${Sobrenome}
    Input Text                     ${LocalizaçãoEndereço}      ${Endereço}
    Input Text                     ${LocalizaçãoEmail}         ${Email}
    Input Text                     ${LocalizaçãoTelefone}      ${Telefone}
    #Selecionando o radioBtn
    Wait Until Element Is Visible  ${LocalizaçãoEscolhaDeGenero}
    Click Element                  ${LocalizaçãoEscolhaDeGenero}
    #Selecionando CheckBox
    Wait Until Element Is Visible  ${LocalizaçãoEscolhaDeHobbies}
    Click Element                  ${LocalizaçãoEscolhaDeHobbies}
    #Selecionado Linguagem
    Wait Until Element Is Visible  ${LocalizaçãoSeleçãoDeLinguagem}
    Click Element                  ${LocalizaçãoSeleçãoDeLinguagem}
    Wait Until Element Is Visible  ${LocalizaçãoSeleçãoDeLinguagemJapones}
    Click Element                  ${LocalizaçãoSeleçãoDeLinguagemJapones}
    #Selecionando as opções dos Dropdowns
    Wait Until Element Is Visible  ${LocalizaçãoSeleçãoDeSkills}
    Select From List By Value      ${LocalizaçãoSeleçãoDeSkills}  ${SkillAPI}
    Select From List By Label      ${LocalizaçãoSeleçãoDePaís}    ${País}
    Select From List By Value      ${LocalizaçãoSeleçãoDeAno}     ${Ano}
    Select From List By Value      ${LocalizaçãoSeleçãoDeMês}     ${Mês}
    Select From List By Value      ${LocalizaçãoSeleçãoDeDia}     ${Dia}
    #Preenchendo a senha
    Wait Until Element Is Visible  ${LocalizaçãoSenha}
    Input Password                 ${LocalizaçãoSenha}  ${Senha}
    Input Password                 ${LocalizaçãoConfirmarSenha}   ${Senha}
    #Fazendo upload da foto
    Wait Until Element Is Visible  ${LocalizaçãoSeleçãoDeImagem}
    Choose File                    ${LocalizaçãoSeleçãoDeImagem}  ${Foto}
    
E clicar no botão Submit
    Execute JavaScript             ${windowScroll}
    Wait Until Element Is Visible  ${LocalizaçãoBotãoSubmit}
    Click Button                   ${LocalizaçãoBotãoSubmit}

Então o sistema deve apresentar a tela com a mensagem de sucesso
    Wait Until Element Contains    ${LocalizaçãoComponenteDeMensagemDeSucesso}  ${MensagemDeSucesso}