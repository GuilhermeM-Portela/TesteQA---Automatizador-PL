*** Variables ***

#Aqui as variaveis de texto
${PrimeiroNome}       Teste
${Sobrenome}          de teste
${Endereço}           Rua teste 001
${Email}              teste@email.com
${Genero}             value="Male"
${Telefone}           0000000000
${Senha}              Teste#001
${SkillAPI}           APIs
${País}               Japan
${Ano}                1996
${Mês}                October
${Dia}                22
${MensagemDeSucesso}  Mensagem de sucesso


#Aqui ficam os seletores dos elementos
${LocalizaçãoPrimeiroNome}                   xpath=//input[@placeholder="First Name"]
${LocalizaçãoSobrenome}                      xpath=//input[@placeholder="Last Name"]
${LocalizaçãoEndereço}                       xpath=//textarea[contains(@class, 'form-control')]
${LocalizaçãoEmail}                          xpath=//input[@type='email']
${LocalizaçãoTelefone}                       xpath=//input[@type='tel']
${LocalizaçãoEscolhaDeGenero}                name=radiooptions
${LocalizaçãoEscolhaDeHobbies}               id=checkbox2
${LocalizaçãoSeleçãoDeLinguagem}             id=msdd
${LocalizaçãoSeleçãoDeLinguagemJapones}      xpath=//a[text()='Japanese']
${LocalizaçãoSeleçãoDeSkills}                id=Skills
${LocalizaçãoSeleçãoDePaís}                  id=country
${LocalizaçãoSeleçãoDeAno}                   id=yearbox
${LocalizaçãoSeleçãoDeMês}                   xpath=//select[@placeholder="Month"]
${LocalizaçãoSeleçãoDeDia}                   id=daybox
${LocalizaçãoSeleçãoDeImagem}                id=imagesrc
${LocalizaçãoBotãoSubmit}                    id=submitbtn
${LocalizaçãoSenha}                          id=firstpassword
${LocalizaçãoConfirmarSenha}                 id=secondpassword
${LocalizaçãoComponenteDeMensagemDeSucesso}  id=msgSucesso 