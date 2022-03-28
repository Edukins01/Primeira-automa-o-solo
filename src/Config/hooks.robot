*** Settings ***
Documentation    Aqui estarão presentes todas as configurações de Setup e Teardown
...              Essas configurações, podem ser utilizadas tanto para Suites Setup/Teardown
...              wquanto para teste setup/teardown

Resource    package.robot

Test Setup    Acessar a página home do site
Test Teardown    Fechar site

*** Keywords ***

Acessar a página home do site
    Open Browser    about:blank    chrome
    Maximize Browser Window
    Go To    ${HOME_PAGE.url}
    Title Should Be    ${HOME_PAGE.title}

Fechar site

    Capture Page Screenshot
    Close Browser