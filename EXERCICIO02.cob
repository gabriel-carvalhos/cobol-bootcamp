       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA03.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: EXERCICIO DE CALCULO DE IMC
      *==  DATA: 05/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.


       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-PESO            PIC 9(3)V9(2)     VALUE   ZERO.
       77  WRK-ALTURA          PIC 99V99         VALUE   ZERO.
       77  WRK-IMC             PIC 9(3)V99       VALUE   ZERO.
       77  WRK-IMC-ED          PIC ZZ9.99        VALUE   ZERO.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "DIGITE O PESO: ".
               ACCEPT WRK-PESO.
           DISPLAY "DIGITE A ALTURA: ".
               ACCEPT WRK-ALTURA.

           COMPUTE WRK-IMC = WRK-PESO / (WRK-ALTURA * WRK-ALTURA).
           MOVE WRK-IMC TO WRK-IMC-ED.

       0200-MOSTRA           SECTION.
           DISPLAY "SEU IMC = " WRK-IMC-ED.

       0300-FINALIZAR        SECTION.
           STOP RUN.
       END PROGRAM PROGRAMA03.
