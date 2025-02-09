       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA02.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: APRENDENDO VARIAVEIS NO COBOL
      *==  DATA: 04/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
      *                             X -> CARACTERES ALFANUMERICOS
       77  WRK-NOME             PIC X(30)       VALUE SPACES.
      *                             9 -> NUMEROS
       77  WRK-IDADE            PIC 9(03)       VALUE ZEROS.
       77  WRK-SALARIO          PIC 9(08)V9(02) VALUE ZEROS.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "DIGITE SEU NOME: "
               ACCEPT WRK-NOME.

           DISPLAY "DIGITE SUA IDADE: "
               ACCEPT WRK-IDADE.

           DISPLAY "DIGITE SEU SALARIO: "
               ACCEPT WRK-SALARIO.

       0200-MOSTRA           SECTION.
           DISPLAY "NOME  DIGITADO: " WRK-NOME " IDADE " WRK-IDADE
           DISPLAY "SALARIO DIGITADO: " WRK-SALARIO.

       0300-FINALIZAR        SECTION.
           STOP RUN.
       END PROGRAM PROGRAMA02.
