       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA03.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: MOVE (EXEMPLOS)
      *==  DATA: 05/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-VALOR0           PIC X(05)           VALUE ZEROS.
       77  WRK-VALOR1           PIC 9(05)           VALUE ZEROS.
       77  WRK-VALOR2           PIC 9(05)           VALUE ZEROS.
       77  WRK-RESULTADO        PIC S9(05)V99       VALUE ZEROS.
       77  WRK-ENDERECO         PIC X(30)           VALUE SPACES.
       77  WRK-NOME-RUA         PIC A(30)           VALUE SPACES.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "DIGITE VALOR 1: "
               ACCEPT WRK-VALOR1.
               MOVE WRK-VALOR1 TO WRK-VALOR0.
           DISPLAY "DIGITE VALOR 2: "
               ACCEPT WRK-VALOR2.
           COMPUTE WRK-RESULTADO = WRK-VALOR1 - WRK-VALOR2.

           DISPLAY "DIGITE O ENDERECO: "
               ACCEPT WRK-ENDERECO.
               MOVE WRK-ENDERECO TO WRK-NOME-RUA.

       0200-MOSTRA           SECTION.
           DISPLAY "RESULTADO " WRK-RESULTADO.
           DISPLAY "VALOR 0 - TEXTO " WRK-VALOR0.
           DISPLAY "NOME DA RUA " WRK-NOME-RUA.

       0300-FINALIZAR        SECTION.
           STOP RUN.
       END PROGRAM PROGRAMA03.
