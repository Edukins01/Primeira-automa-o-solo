*** Settings ***
Documentation        Aqui estarão presente todas as keywords dps testes de pesquisa
...                  do site automationpractice.com

Resource    ../../Config/package.robot

*** Keywords ***

Clicar em "Sign in"
    Wait Until Element Is Visible    xpath=//*[@title="Log in to your customer account"]
    Click Element    xpath=//a[@class="login"]

Informar um e-mail válido
    #${email2}    FakerLibrary.Email

    Wait Until Element Is Visible    //*[@id="email_create"]
    Input Text    xpath=//*[@id="email_create"]    ${REGISTER.email}

Clicar em "Create an account"
    Wait Until Element Is Visible    xpath=//*[@class="btn btn-default button button-medium exclusive"]
    Click Button    xpath=//*[@class="btn btn-default button button-medium exclusive"]

Preencher os dados obrigatórios
    
    #${first_name}        FakerLibrary.First Name
    #${last_name}         FakerLibrary.Last Name
    #${password}          FakerLibrary.password
    #${companhia}         FakerLibrary.Company
    #${endereço}          FakerLibrary.Address
    #${cidade}            FakerLibrary.City
    #${zip}               FakerLibrary.Postalcode
    #${telefone_casa}     FakerLibrary.Port Number
    #${phone}             FakerLibrary.Phone Number
    #${adress2}           FakerLibrary.Address
    
    #Genero
    Wait Until Element Is Visible    xpath=//*[@id="id_gender1"]
    Click Element    xpath=//*[@id="id_gender1"]

    #Primeiro nome
    Input Text    xpath=//*[@id="customer_firstname"]    ${REGISTER.first_name}
    
    #Sobrenome
    Input Text    xpath=//*[@id="customer_lastname"]    ${REGISTER.last_name}

    #Senha
    Input Text    xpath=//*[@id="passwd"]    ${REGISTER.password}

    #Data de aniversario
    Select From List By Value    xpath=//*[@id="days"]       6
    Select From List By Value    xpath=//*[@id="months"]     6
    Select From List By Value    xpath=//*[@id="years"]      2005  

    #Companhia
    Input Text    xpath=//*[@id="company"]    ${REGISTER.companhia}

    #Endereço
    Input Text    xpath=//*[@id="address1"]    ${REGISTER.endereço}

    #Cidade
    Input Text    xpath=//*[@id="city"]    ${REGISTER.cidade}

    #Estado
    Select From List By Value    xpath=//*[@id="id_state"]        5

    #CEP
    Input Text    xpath=//*[@id="postcode"]    ${REGISTER.zip}
    
    #Pais
    Select From List By Value    xpath=//*[@id="id_country"]    21

    #Telefone da casa
    Input Text    xpath=//*[@id="phone"]    ${REGISTER.telefone_casa}

    #Telefone celular
    Input Text    xpath=//*[@id="phone_mobile"]    ${REGISTER.phone}

    #Endereço pra outro lugar
    Input Text    xpath=//*[@id="alias"]    ${REGISTER.adress2}

Submeter cadastro
    Click Button    xpath=//*[@id="submitAccount"]

Conferir se o cadastro foi efetuado com sucesso

    ${texto}    Get Text    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a/span

    Wait Until Element Is Visible    xpath=//*[@class="page-heading"]
    Title Should Be    My account - My Store

    Should Be Equal    ${REGISTER.first_name} ${REGISTER.last_name}    ${texto} 
    

    

