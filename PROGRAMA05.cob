       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA5.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: VARIAVEL DE NIVEL (ESTRUTURAL) - FILLER
      *==  DATA: 09/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       01  WRK-DATA.
           05  WRK-ANO     PIC X(4)   VALUE SPACES.
           05  WRK-MES     PIC X(2)   VALUE SPACES.
           05  WRK-DIA     PIC X(2)   VALUE SPACES.

       01  WRK-DATA2.
           05  WRK-DIA     PIC X(2)   VALUE SPACES.
           05  FILLER      PIC X(1)   VALUE "/".
           05  WRK-MES     PIC X(2)   VALUE SPACES.
           05  FILLER      PIC X(1)   VALUE "/".
           05  WRK-ANO     PIC X(4)   VALUE SPACES.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           MOVE CORR WRK-DATA TO WRK-DATA2.

       0200-MOSTRA           SECTION.
           DISPLAY "DATA " WRK-DATA2.
      *     DISPLAY "DIA " WRK-DIA OF WRK-DATA2.
      *     DISPLAY "MES " WRK-MES OF WRK-DATA2.
      *     DISPLAY "ANO " WRK-ANO OF WRK-DATA2.

       0300-FINALIZAR        SECTION.
           STOP RUN.
