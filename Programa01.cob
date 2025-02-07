      *====DIVISAO DE IDENTIFICAO DO PROGRAMA
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA01.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: 1o Contato com COBOL
      *==  DATA: 04/02/2025
      *==  OBSERVACOES:
      *=================================================================
      *==  ALTERACOES
      *==  galt01: adicionado o "Hello Curso Cobol"
      *=================================================================

      *---- DIVISAO DE CONFIGURACAO DO PROGRAMA
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.

      *---- DIVISAO DOS DADOS DO PROGRAMA
       DATA DIVISION.
       FILE SECTION.

      *---- DEFINICAO DAS VARIAVEIS DO PROGRAMA
       WORKING-STORAGE SECTION.

      *---- DIVISAO DOS PROCEDIMENTOS DO PROGRAMA
       PROCEDURE DIVISION.
       0001-MAIN-PROCEDURE SECTION.
           DISPLAY "Hello world"
galt01     DISPLAY "Hello Curso Cobol"
           DISPLAY "Texto bem grande para ter que continuar na proxima l
      -    "inha"
           STOP RUN.
       END PROGRAM PROGRAMA01.
