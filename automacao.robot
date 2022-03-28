*** Settings ***
Documentation    Aqui eu farei os casos de testes propostos na aula

Library    SeleniumLibrary
Library    DebugLibrary

Resource    ../Caso de teste Edu/src/Config/package.robot

*** Test Cases ***
Caso 1:

    Acessar a página home do site
    Passar o Mouse encima de Women
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Fechar site

Caso de Teste 02: Adicionar Cliente
    [Tags]    REGISTRAR
    Acessar a página home do site
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso
    Close Browser
    











  