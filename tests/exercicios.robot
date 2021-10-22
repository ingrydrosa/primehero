***Settings***
Documentation       Neste arquivo vão estar presente todos exercicios  da prime

***Variables***
&{PESSOA}       nome=Ingryd     Sobrenome=Rosa      idade=26        cpf=44497696863     carro=fit

@{FRUTAS}      Banana           Morango                  Maça           Limão




***Test Cases***    
Cenario: Imprimindo 6 informações de uma pessoa
     Log To Console     ${PESSOA.nome}  
     Log To Console     ${PESSOA.Sobrenome}
     Log To Console     ${PESSOA.idade}
     Log To Console     ${PESSOA.cpf}
     Log To Console     ${PESSOA.carro}
     

Cenario: Imprimindo lista de frutas
     [Tags]               LISTA

      Log To Console      ${FRUTAS}
      Log To Console      ${FRUTAS[0]}
      Log To Console      ${FRUTAS[3]}

Cenario: Somando dois numeros
     [Tags]         Somar
     Somar dois numeros  10  10

Cenario: Criar e-mail formatado
     [Tags]         EMAIL
     Criar e-mail formatado  ingryd  rosa  26


Cenario: Contando de 0 a 9
     [Tags]    Contar    
     Contar de 0 a 9


Cenario: Percorrendo lista de frutas
     [Tags]         FRUTAS
     Percorrer itens de uma lista


Cenario: Estou no numero 
     [Tags]         NUMERO
     Estou no numero

Cenario: Imprimir paises
     [Tags]         PAIS
     Imprimir paises 

Cenario: Validando decisões
     [Tags]         TESTE
     Validando decisões

Cenario: tomando decisao
     [Tags]         IF
     Tomar decisões

*** Keywords ***
Somar dois numeros
     [Arguments]         ${NUM_A}       ${NUM_B}
     ${SOMA}             Evaluate       ${NUM_A}+${NUM_B}
     [Return]       ${SOMA}
     Log To Console      ${SOMA}

Criar e-mail formatado
     [Arguments]         ${NOME}        ${SOBRENOME}        ${IDADE}
     ${IMPRIMIEMAIL}     Catenate       ${NOME}_${SOBRENOME}_${IDADE}@ROBOT.COM
     [Return]       ${IMPRIMIEMAIL}
     Log To Console      ${IMPRIMIEMAIL}

Contar de 0 a 9 
     FOR       ${COUNT}  IN   RANGE      0    9
     Log To Console   ${COUNT}
     END


Percorrer itens de uma lista
     @{FRUTAS}      Create list     Banana   Maça      Uva
     FOR   ${FRUTA}      IN    @{FRUTAS}
     Log To Console      @{FRUTAS}
     END



Estou no numero
          FOR       ${NUMERO}  IN  RANGE      0   10
          Log To Console      Estou no numero:         ${NUMERO}
          END

Imprimir paises 
     @{PAISES}      Create list    BRASIL    FRANÇA    ALEMANHA       RUSSIA         BELGICA 
     FOR       ${PAIS}        IN        @{PAISES}
          Log To Console      ${PAIS}
     END 

Validando decisões
     FOR    ${COUNT}    IN RANGE    0    9
        IF    '${COUNT}'=='5'
            Log To Console   Estou no numero ${COUNT}
        ELSE IF    '${COUNT}'=='8'
            Log To Console   Estou no numero ${COUNT}
        ELSE
            Log To Console   Este não é o número 5 ou o número 8
        END
    END

Tomar decisões
    FOR    ${COUNT}    IN RANGE    0    9
        IF    '${COUNT}'=='5'
            Log To Console   Estou no numero ${COUNT}
        ELSE IF    '${COUNT}'=='8'
            Log To Console   Estou no numero ${COUNT}
        ELSE
            Log To Console   Este não é o número 5 ou o número 8
        END
    END