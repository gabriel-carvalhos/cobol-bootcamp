       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG017.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: TESTAR CONSUMO DO MODULO DATAMES
      *==  DATA: 24/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-DATA        PIC X(040).

       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           CALL "DATAMES" USING WRK-DATA.
           DISPLAY WRK-DATA.
           STOP RUN.
