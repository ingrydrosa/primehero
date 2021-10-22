*** Settings ***
Documentation       Aqui estarão presentes todas as keywords dos testes web.
Library  SeleniumLibrary

*** Variables ***

${BROWSER}      geckodriver
${URL}          http://automationpractice.com/index.php


*** Keywords ***

### SETUP e TEARDOWN
Abrir Navegador
    Open Browser        Browser=${BROWSER}
    Maximize Browser Window

Fechar Navegador

    Close Browser

### Passo-a-Passo

Acessar a pagina home do site Automation Practice
    Go To   ${URL}
    Title Should Be     My Store

Digitar o nome do produto "Blouse" no campo de pesquisa
    Input Text      name = search_query     ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name = submit_search

Conferir se o produto "Blouse" foi listado no site
    Scroll Element Into View    xpath = //*[@id="center_column"]/ul/li/div/div[2]/div[1]/span
    Wait Until Element Is Visible    xpath = //*[@id="center_column"]//h1//span[1]
    Title Should Be    Search - My Store
    Page Should Contain Image    xpath = //[@id="center_column"]//[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]

    Capture Page Screenshot