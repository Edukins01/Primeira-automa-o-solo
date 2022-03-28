*** Settings ***
Documentation        Aqui estarão presente todas as keywords dps testes de pesquisa de categoria
...                  do site automationpractice.com

Resource    ../../Config/package.robot

*** Keywords ***

Passar o Mouse encima de Women
    Wait Until Element Is Visible    xpath=//*[@title="Women"]
    Mouse Over    xpath=//a[@title="Women"]

Clicar na sub categoria "Summer Dresses"

    Wait Until Element Is Visible    xpath=html/body/div/div/header/div/div/div/div/ul/li/ul/li/ul/li/a[@href="http://automationpractice.com/index.php?id_category=11&controller=category"]
    Click Element    xpath=html/body/div/div/header/div/div/div/div/ul/li/ul/li/ul/li/a[@href="http://automationpractice.com/index.php?id_category=11&controller=category"]
    #Click Link    http://automationpractice.com/index.php?id_category=11&controller=category

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Wait Until Element Is Visible    xpath=//*[@src="http://automationpractice.com/img/p/1/2/12-home_default.jpg"]
    Wait Until Element Is Visible    xpath=//*[@src="http://automationpractice.com/img/p/2/0/20-home_default.jpg"]
    Wait Until Element Is Visible    xpath=//*[@src="http://automationpractice.com/img/p/1/6/16-home_default.jpg"]
