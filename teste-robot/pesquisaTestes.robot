*** Settings ***
#utilizando a class criada anteriormente para reaproveitar as variaveis.
Resource    pesquisaClass.robot

*** Test Cases ***
Cenario 01: 
    [Tags]    String Text
    Inserir uma frase no campo de pesquisa, sistema deverá trazer o item pesquisado

Cenario 02:
    [Tags]    String NULL
    Não inserir textos na pesquisa, o sistema deverá trazer todos os conteúdos por ordem de data decrescente
Cenario 03:
    [Tags]    String word
    Inserir apenas uma palavra chave, a busca deverá ocorrer mostrando as matérias que possuem a palavra no seu titulo
       
*** Keywords ***
Inserir uma frase no campo de pesquisa, sistema deverá trazer o item pesquisado
    Quero Abrir o navegador e ao clicar na lupa abrir o input de pesquisa       
    Quando Informar a frase e clicar no botão pesquisar
    Então Finalizar o teste após clicar em pesquisar salvando um print da tela

Não inserir textos na pesquisa, o sistema deverá trazer todos os conteúdos por ordem de data decrescente    
    Quero Abrir o navegador e ao clicar na lupa abrir o input de pesquisa      
    Quando não informar a frase ou o texto e clicar no botão pesquisar
    Então Finalizar o teste após clicar em pesquisar salvando um print da tela

Inserir apenas uma palavra chave, a busca deverá ocorrer mostrando as matérias que possuem a palavra no seu titulo
    Quero Abrir o navegador e ao clicar na lupa abrir o input de pesquisa  
    Quando informar uma palavra e clicar no botão pesquisar
    Então Finalizar o teste após clicar em pesquisar salvando um print da tela