*** Settings ***
Documentation       Aqui estarão presentes os primeiros testes automatizados web
Resource            ../resources/keywords/kws_webautomation.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador    


*** Test Case ***
Caso de Teste 01: Pesquisar produto Existente
    [Tags]      CT001
    Acessar a pagina home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site
