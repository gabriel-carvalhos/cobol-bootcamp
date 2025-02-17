       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC01.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: EXERCICIO DE PAGAMENTO DE CONTAS
      *==  DATA: 17/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
      *=== VARIAVEIS DE APOIO
       77  WRK-SALDO           PIC 9(004)V99   VALUES ZEROS.
       77  WRK-PAGAMENTO       PIC 9(004)V99   VALUES 1.
       77  WRK-PAGAMENTOS      PIC 9(004)V99   VALUES ZEROS.
       77  WRK-FINAL           PIC S9(004)V99   VALUES ZEROS.

      *=== VARIAVEIS DE EDICAO
       77  WRK-SALDO-ED        PIC ZZZ9,99     VALUES ZEROS.
       77  WRK-PAGAMENTOS-ED   PIC ZZZ9,99     VALUES ZEROS.
       77  WRK-FINAL-ED        PIC -ZZZ9,99    VALUES ZEROS.

       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INICIALIZAR      SECTION.
           DISPLAY "DIGITE O SEU SALDO: ".
           ACCEPT WRK-SALDO.

           PERFORM UNTIL WRK-PAGAMENTO EQUAL 0
               DISPLAY "DIGITE PAGAMENTO"
               ACCEPT WRK-PAGAMENTO
               ADD WRK-PAGAMENTO TO WRK-PAGAMENTOS
           END-PERFORM.

       0200-PROCESSAR           SECTION.
           COMPUTE WRK-FINAL = WRK-SALDO - WRK-PAGAMENTOS.

           MOVE WRK-SALDO TO WRK-SALDO-ED.
           MOVE WRK-PAGAMENTOS TO WRK-PAGAMENTOS-ED.
           MOVE WRK-FINAL TO WRK-FINAL-ED.

       0300-FINALIZAR        SECTION.
           DISPLAY "SALDO INICIAL..... " WRK-SALDO-ED.
           DISPLAY "PAGAMENTOS........ " WRK-PAGAMENTOS-ED.
           DISPLAY "SALDO FINAL....... " WRK-FINAL-ED.
           
