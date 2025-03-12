# Cobol - Bootcamp Código de Base

Programas feitos no Bootcamp da Código de Base, com intuito de desenvolver as habilidades em COBOL.

# Indíce

- Semana 1: Estrutura de Arquivos COBOL, Varíaveis, Tipos de dados e Máscaras de Edição.
- Semana 2: Varíaveis de Grupo, Operadores Aritméticos, Estruturas Condicionais, Operadores Lógicos.
- Semana 3: Comando Perform, Estruturas de Repetição com Times e Varying.
- Semana 4: Vetores, Módulos e Copybooks.
- Semana 5: Leitura de Arquivos.
- Semana 6: Gravação e Localização de Registros em Arquivos.

# Uso

## Pré-Requisitos

- Cobol instalado na máquina.

## Utilização

Para utilizar e testar esses arquivos, é necessário fazer a compilação deles, utilizando os seguintes comandos:

1. Vá para o diretório da semana desejada:

    ```
    cd <SEMANA>
    ```

2. Compile o arquivo:

    - Caso o arquivo seja um executável, passe a flag '-x'
    
        ```
        cobc -x <ARQUIVO>.cob
        ```

    - Caso o arquivo seja um módulo, passe a flag '-m'
    
        ```
        cobc -m <MODULO>.cob
        ```

3. Execute o arquivo compilado:

    ```
    ./<ARQUIVO_COMPILADO>
    ```