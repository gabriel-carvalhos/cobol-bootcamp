       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA09.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: TESTAR MEDIA ALUNO
      *==  DATA: 09/02/2025
      *==  OBSERVACOES:
      *=================================================================
ALT01 *==  ALTERACOES
  .   *==  REMONTEI LOGICA DOS APROVADOS
  .   *==  AUTOR: GABRIEL                  EMPRESA: TOXP
ALT01 *=================================================================    
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
ALT01  77  WRK-NIVEL       PIC X(10)  VALUE SPACES.
ALT01  77  WRK-CORTE       PIC 99     VALUE ZEROS.
       77  WRK-NOTA1       PIC 99V99  VALUE ZEROS.
       77  WRK-NOTA2       PIC 99V99  VALUE ZEROS.
       77  WRK-MEDIA       PIC 99V99  VALUE ZEROS.

       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
ALT01      DISPLAY "NIVEL (FUND/MEDIO): ".
ALT01      ACCEPT WRK-NIVEL.
           DISPLAY "NOTA 1: ".
           ACCEPT WRK-NOTA1.
           DISPLAY "NOTA 2: ".
           ACCEPT WRK-NOTA2.

       0150-PROCESSA         SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

       0200-MOSTRA           SECTION.
           DISPLAY "MEDIA " WRK-MEDIA.
           
ALT01      IF WRK-NIVEL(01:04) EQUAL "FUND"
  .            MOVE 6 TO WRK-CORTE
  .        ELSE
  .            MOVE 7 TO WRK-CORTE
  .        END-IF.
  .      
  .        IF WRK-MEDIA GREATER THAN OR EQUAL WRK-CORTE
  .            DISPLAY "APROVADO"
ALT01      ELSE IF WRK-MEDIA GREATER THAN OR EQUAL 2
               DISPLAY "RECUPERACAO"
           ELSE
               DISPLAY "REPROVADO"
           END-IF.

       0300-FINALIZAR        SECTION.
           STOP RUN.
