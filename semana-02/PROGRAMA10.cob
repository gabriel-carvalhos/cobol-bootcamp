       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA10.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: CALCULO DE FRETE
      *==  DATA: 09/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
      *=============== VARIAVEIS DE APOIO
       77  WRK-PRODUTO   PIC X(30)     VALUES SPACES.
       77  WRK-ESTADO    PIC X(02)     VALUES SPACES.
       01  WRK-NUMERO.
           05  WRK-VALOR     PIC 9(08)V99  VALUES ZEROS.
           05  WRK-FRETE     PIC 9(08)V99  VALUES ZEROS.

      *============== VARIAVEIS DE EDICAO
       01  WRK-NUMERO-ED.
           05  WRK-VALOR-ED  PIC ZZ.ZZZ.ZZ9,99 VALUE ZEROS.
           05  WRK-FRETE-ED  PIC ZZ.ZZZ.ZZ9,99 VALUE ZEROS.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "PRODUTO ".
           ACCEPT WRK-PRODUTO.
           
           DISPLAY "VALOR "
           ACCEPT WRK-VALOR.

           DISPLAY "ESTADO (SP/RJ/ES)"
           ACCEPT WRK-ESTADO.

       0150-PROCESSA         SECTION.
           IF WRK-ESTADO EQUAL "SP"
               COMPUTE WRK-FRETE = WRK-VALOR * (10/100)
           ELSE IF WRK-ESTADO EQUAL "RJ"
               COMPUTE WRK-FRETE = WRK-VALOR * (15/100)
           ELSE IF WRK-ESTADO EQUAL "ES"
               COMPUTE WRK-FRETE = WRK-VALOR * (20/100)
      *    ELSE
               
           END-IF.

           ADD WRK-FRETE TO WRK-VALOR.

           MOVE WRK-VALOR TO WRK-VALOR-ED.
           MOVE WRK-FRETE TO WRK-FRETE-ED.

       0200-MOSTRA           SECTION.
           DISPLAY "VALOR FINAL: " WRK-VALOR-ED.

           IF WRK-ESTADO EQUAL "SP" OR WRK-ESTADO EQUAL "RJ"
            OR WRK-ESTADO EQUAL "ES"
               DISPLAY "ESTADO VALIDO"
           ELSE
               DISPLAY "ESTADO INVALIDO"
           END-IF.

           IF WRK-FRETE GREATER 0
               DISPLAY "FRETE      : " WRK-FRETE-ED
           ELSE
               DISPLAY "NAO ENTREGAMOS NO ESTADO " WRK-ESTADO
           END-IF.

       0300-FINALIZAR        SECTION.
           STOP RUN.
