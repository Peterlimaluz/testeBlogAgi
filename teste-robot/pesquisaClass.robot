*** Settings ***

Library         SeleniumLibrary

*** Variables ***

${abrirNavegador}  https://blogdoagi.com.br/
${lupa}  id=search-open   # Localiza e clica no ícone de pesquisa (lupa)
${inputPesquisa}    name=s    
${frasePesquisa}    Agibank se prepara para transacionar via Drex
${palavraPesquisada}   agibank
${semString}
${botãoPesquisar}   css=.search-submit  # Enviar a tecla "Enter" após a pesquisa
    # Ou, se preferir clicar no botão de pesquisa em vez de pressionar Enter:
    # Click Element    id=searchsubmit
${esperarCarregamento}    css=.meta-main-wrap
${capturarPrint}   resultado_da_pesquisa.png



*** Keywords ***
Quero Abrir o navegador e ao clicar na lupa abrir o input de pesquisa       
    Open Browser     ${abrirNavegador}    chrome    
    Maximize Browser Window
    Click Element    ${lupa}

Quando Informar a frase e clicar no botão pesquisar
    Input Text    ${inputPesquisa}    ${frasePesquisa}
    Click Element    ${botãoPesquisar}

Quando não informar a frase ou o texto e clicar no botão pesquisar
    Input Text    ${inputPesquisa}    ${semString}
    Click Element    ${botãoPesquisar}

Quando informar uma palavra e clicar no botão pesquisar
    Input Text    ${inputPesquisa}    ${palavraPesquisada}
    Click Element    ${botãoPesquisar}

Então Finalizar o teste após clicar em pesquisar salvando um print da tela
    Wait Until Element Is Visible    ${esperarCarregamento}
    Capture Page Screenshot    ${capturarPrint}
    Close Browser
    