*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    http://www.amazon.com.br

*** Keywords ***
Acessar a pagina amazon
    Open Browser    url=${URL}    browser=${BROWSER}
    Sleep    time_=10
Pesquisar por celulares
    Input Text    locator=id:twotabsearchtextbox    text=celulares
    Click Button    locator=id:nav-search-submit-button
Validar o resultado
    Wait Until Page Contains   text=Resultados