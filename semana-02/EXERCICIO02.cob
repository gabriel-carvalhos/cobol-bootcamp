       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERCICIO02.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO:
      *==  DATA: 10/02/2024
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
      *==== VARIAVEIS DE APOIO
       77  WRK-NOME                  PIC X(30)      VALUE SPACES.
       77  WRK-CIDADE                PIC X(02)      VALUE SPACES.
       77  WRK-VALOR-LITRO           PIC 9(02)V99   VALUE ZEROS.
       77  WRK-VALOR-VIAGEM          PIC 9(04)V99   VALUE ZEROS.
      
      *==== VARIAVEIS DE EDICAO
       77  WRK-VALOR-VIAGEM-ED       PIC ZZZ9,99    VALUE ZEROS.
       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "DIGITE O NOME................ ".
           ACCEPT WRK-NOME.

           DISPLAY "DIGITE O DESTINO (PI/CA/JU).. ".
           ACCEPT WRK-CIDADE.

           DISPLAY "DIGITE O VALOR DO LITRO...... ".
           ACCEPT WRK-VALOR-LITRO.
       
       0150-PROCESSA         SECTION.
           EVALUATE WRK-CIDADE
               WHEN "PI"
                   MOVE 220 TO WRK-VALOR-VIAGEM
               WHEN "CA"
                   MOVE 180 TO WRK-VALOR-VIAGEM
               WHEN "JU"
                   MOVE 120 TO WRK-VALOR-VIAGEM
           END-EVALUATE.

           IF WRK-VALOR-VIAGEM GREATER 0
               COMPUTE WRK-VALOR-VIAGEM =
                   WRK-VALOR-VIAGEM * (WRK-VALOR-LITRO / 10)
               COMPUTE WRK-VALOR-VIAGEM = WRK-VALOR-VIAGEM * 1,30
               MOVE WRK-VALOR-VIAGEM TO WRK-VALOR-VIAGEM-ED
           END-IF.

       0200-MOSTRA           SECTION.
           IF WRK-VALOR-VIAGEM GREATER 0
               DISPLAY "PASSAGEIRO................ " WRK-NOME
               DISPLAY "DESTINO................... " WRK-CIDADE
               DISPLAY "VALOR VIAGEM.............. " WRK-VALOR-VIAGEM-ED
           ELSE
               DISPLAY "ERRO: NAO ATENDEMOS ESSA CIDADE"
           END-IF.

       0300-FINALIZAR        SECTION.
           STOP RUN.
