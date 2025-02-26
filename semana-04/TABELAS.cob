       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABELAS.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: EXPLICACAO SOBRE OCCURS
      *==  DATA: 26/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       01  WRK-NUMEROS.
           05 WRK-NUMERO   PIC 9(003) VALUES ZEROS OCCURS 3 TIMES.
       
       01  WRK-MAIOR       PIC 9(003) VALUES ZEROS.
       01  WRK-IND         PIC 9(001) VALUES ZEROS.

      *=== VARIAVEIS DE ESTATISTICA
       01  WRK-LIDOS       PIC 9(001) VALUES ZEROS.

       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
           
       0100-INICIALIZAR      SECTION.
           DISPLAY "----- PROGRAMA DE NUMEROS -----".

       0200-PROCESSAR        SECTION.
           PERFORM VARYING WRK-IND FROM 1 BY 1 UNTIL WRK-IND GREATER 3
               DISPLAY "NUMERO"
               ACCEPT WRK-NUMERO(WRK-IND)

               IF WRK-NUMERO(WRK-IND) GREATER WRK-MAIOR
                   MOVE WRK-NUMERO(WRK-IND) TO WRK-MAIOR
               END-IF

               ADD 1 TO WRK-LIDOS

           END-PERFORM.

       0300-FINALIZAR        SECTION.
           DISPLAY "TOTAL DE NUMEROS LIDOS: " WRK-LIDOS

           PERFORM VARYING WRK-IND FROM 1 BY 1 UNTIL WRK-IND GREATER 3
               DISPLAY "NUMERO " WRK-IND ": " WRK-NUMERO(WRK-IND)
           END-PERFORM.

           DISPLAY "MAIOR: " WRK-MAIOR.
