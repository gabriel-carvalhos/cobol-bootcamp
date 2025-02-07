       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA03.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: EXERCICIO DE CONVERSAO DE DOLAR EM REAL
      *==  DATA: 05/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-COTACAO         PIC 9(2)V99       VALUE   ZERO.
       77  WRK-VALOR-DOLAR     PIC 9(2)V99       VALUE   ZERO.
       77  WRK-VALOR-REAL      PIC 9(2)V99       VALUE   ZERO.
       77  WRK-VALOR-REAL-ED   PIC Z9,99         VALUE   ZERO.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "DIGITE O VALOR DO DOLAR ATUAL: ".
               ACCEPT WRK-COTACAO.
           DISPLAY "DIGITE A QUANTIDADE DE DOLARES PARA CONVERSAO: ".
               ACCEPT WRK-VALOR-DOLAR.

           COMPUTE WRK-VALOR-REAL = WRK-VALOR-DOLAR * WRK-COTACAO.
           MOVE WRK-VALOR-REAL TO WRK-VALOR-REAL-ED.

       0200-MOSTRA           SECTION.
           DISPLAY "VALOR CONVERTIDO: " WRK-VALOR-REAL-ED.

       0300-FINALIZAR        SECTION.
           STOP RUN.
       END PROGRAM PROGRAMA03.
