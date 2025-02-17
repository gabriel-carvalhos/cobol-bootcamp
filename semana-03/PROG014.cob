       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG014.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: IMPRESSAO TABUADA 1 A 10
      *==  DATA: 17/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-NUMERO          PIC 9(002)  VALUE ZEROS.
       77  WRK-CONTADOR        PIC 9(002)  VALUE ZEROS.
       77  WRK-RESULTADO       PIC 9(003)  VALUE ZEROS.

       PROCEDURE             DIVISION.

       0100-INICIALIZAR       SECTION.
           DISPLAY "DIGITE UM NUMERO: ".
           ACCEPT WRK-NUMERO.

       0200-PROCESSAR        SECTION.
      *=== TIMES
      *    EXECUTA O PERFORM PELO NUMERO INDICADO DE VEZES (10)
      *    PERFORM 10 TIMES
      *        COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *        DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
      *        ADD 1 TO WRK-CONTADOR
      *    END-PERFORM.
       
      *=== UNTIL
      *    EXECUTA O PERFORM ATE QUE CONTADOR SEJA MAIOR QUE 10
      *    PERFORM UNTIL WRK-CONTADOR GREATER 10
      *        COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *        DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
      *        ADD 1 TO WRK-CONTADOR
      *    END-PERFORM.

      *=== VARYING
      *    VARIA A VARIAVEL CONTADOR DE 50 INCREMENTANDO -1 EM SEU VALOR
      *    ATE QUE CONTADOR SEJA MENOR QUE 1
           PERFORM VARYING WRK-CONTADOR FROM 50 BY -1
                      UNTIL WRK-CONTADOR LESS 1
               COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
           END-PERFORM.

       0300-FINALIZAR        SECTION.
           DISPLAY "FIM DE PROGRAMA".
