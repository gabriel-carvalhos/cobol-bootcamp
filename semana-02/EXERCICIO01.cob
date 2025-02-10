       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERCICIO01.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: CALCULAR IMPOSTO DE RENDA DE UM SALARIO
      *==  DATA: 09/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
      *=== VARIAVEIS DE APOIO
       77  WRK-SALARIO       PIC 9(05)V99  VALUES ZEROS.
       77  WRK-IR            PIC 9(05)V99  VALUES ZEROS.
       77  WRK-FINAL         PIC 9(05)V99  VALUES ZEROS.
      
      *=== VARIAVEIS DE EDICAO
       77   WRK-SALARIO-ED    PIC ZZ.ZZ9,99  VALUE ZEROS.
       77   WRK-IR-ED         PIC ZZ.ZZ9,99  VALUE ZEROS.
       77   WRK-FINAL-ED      PIC ZZ.ZZ9,99  VALUE ZEROS.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "DIGITE O SALARIO.. ".
           ACCEPT WRK-SALARIO.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.

       0150-PROCESSA         SECTION.
           IF WRK-SALARIO GREATER THAN OR EQUAL 1000
               COMPUTE WRK-IR = 15/100
           ELSE
               COMPUTE WRK-IR = 10/100
           END-IF.

           COMPUTE WRK-IR = WRK-SALARIO * WRK-IR.
           COMPUTE WRK-FINAL = WRK-SALARIO - WRK-IR.

      *    MULTIPLY WRK-SALARIO BY WRK-IR GIVING WRK-IR.
      *    SUBTRACT WRK-IR FROM WRK-SALARIO GIVING WRK-FINAL.

           MOVE WRK-IR TO WRK-IR-ED.
           MOVE WRK-FINAL TO WRK-FINAL-ED.

       0200-MOSTRA           SECTION.
           DISPLAY "SALARIO........... " WRK-SALARIO-ED.
           DISPLAY "IMPOSTO DE RENDA.. " WRK-IR-ED.
           DISPLAY "SALARIO FINAL .... " WRK-FINAL-ED.

       0300-FINALIZAR        SECTION.
           STOP RUN.
