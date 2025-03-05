       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ001.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: ABERTURA DE ARQUIVO CLIENTES.DAT
      *==  DATA: 05/03/2025
      *==  OBSERVACOES: 
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT          SECTION.

       FILE-CONTROL.
      *=== DEFINE QUAL ARQUIVO SERA ABERTO, PASSANDO SEU CAMINHO,
      *=== E ATRIBUI O STATUS DA ABERTURA EM FS-CLIENTES
           SELECT CLIENTES ASSIGN 
           TO "D:\cobol-bootcamp\dados\CLIENTES.DAT"
               FILE STATUS IS FS-CLIENTES.

       DATA DIVISION.
      *=== DEFINE O LAYOUT DO ARQUIVO
       FILE                  SECTION.
       FD  CLIENTES.
       01  REG-CLIENTES.
           05  REG-ID           PIC 9(004).
           05  REG-NOME         PIC X(020).
           05  REG-TELEFONE     PIC X(004).

       WORKING-STORAGE       SECTION.
       77  FS-CLIENTES          PIC 9(002).

       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
           
       0100-INICIALIZAR      SECTION.
      *=== ABRE O ARQUIVO NO MODO LEITURA
           OPEN INPUT CLIENTES.
      
      *=== VERIFICA SE O ARQUIVO PODE SER ABERTO, E EXIBE UMA MENSAGEM
           IF FS-CLIENTES EQUAL 35
               DISPLAY "ARQUIVO NAO FOI ABERTO"
           ELSE
               DISPLAY "ARQUIVO OK"
           END-IF

       0200-PROCESSAR        SECTION.
           CONTINUE.

       0300-FINALIZAR        SECTION.
           DISPLAY "FIM DE PROGRAMA".
      *    FECHA O ARQUIVO
           CLOSE CLIENTES.
