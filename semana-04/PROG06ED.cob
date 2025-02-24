       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG06ED.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: UTILIZANDO COPYBOOK
      *==  DATA: 24/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       COPY "#bookdat".

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "ENTRE COM A LINHA DE DADOS".
           ACCEPT WRK-ENTRADA.
       0200-MOSTRA           SECTION.
           DISPLAY "CODIGO  : " WRK-CODIGO.
           DISPLAY "NOME    : " WRK-NOME.
           DISPLAY "SALARIO : " WRK-SALARIO.
       0300-FINALIZAR        SECTION.
           STOP RUN.
