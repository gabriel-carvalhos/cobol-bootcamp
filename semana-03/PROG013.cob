       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG013.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: ADAPTAR AS BOAS PRATICAS COM PERFORM
      *==  DATA: 17/02/2025
      *==  OBSERVACOES:
      *=================================================================   
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-NOTA1       PIC 99V99  VALUE ZEROS.
       77  WRK-NOTA2       PIC 99V99  VALUE ZEROS.
       77  WRK-MEDIA       PIC 99V99  VALUE ZEROS.

       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       

       0100-INICIALIZAR       SECTION.
           DISPLAY "NOTA 1: ".
           ACCEPT WRK-NOTA1.
           DISPLAY "NOTA 2: ".
           ACCEPT WRK-NOTA2.

       0200-PROCESSAR        SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           DISPLAY "MEDIA " WRK-MEDIA.
      
      *=== QUANDO TRUE E PASSADO NO EVALUATE, PODEMOS FAZER COMPARACOES
      *=== UTILIZANDO OS OPERADORES LOGICOS    
           EVALUATE TRUE
               WHEN WRK-MEDIA GREATER 10
                   DISPLAY "ERRO: NOTA DEVE SER ENTRE 0 E 10"
               WHEN WRK-MEDIA GREATER 6
                   DISPLAY "APROVADO"
               WHEN OTHER
                   DISPLAY "REPROVADO"
           END-EVALUATE.
      
      *=== O COMANDO THRU VERIFICA SE UM NUMERO ESTA ENTRE 2 NUMEROS
      *    EVALUATE WRK-MEDIA
      *        WHEN 6 THRU 10
      *            DISPLAY "APROVADO"
      *        WHEN OTHER
      *            DISPLAY "REPROVADO"
      *    END-EVALUATE.

       0300-FINALIZAR        SECTION.
           DISPLAY "FIM DE PROGRAMA".

      *    PODERIA SER PASSADO APENAS O COMANDO CONTINUA, PARA CONTINUAR
      *    O CODIGO

      *    CONTINUE.