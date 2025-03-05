       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ002.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: LEITURA DE 1 REGISTRO DO ARQUIVO CLIENTES.DAT
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
           05  REG-TELEFONE     PIC X(011).

       WORKING-STORAGE       SECTION.
       77  FS-CLIENTES          PIC 9(002) VALUE ZEROS.
       77  WRK-MSG-ERRO         PIC X(030) VALUE SPACES.

       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

           STOP RUN.
           
       0100-INICIALIZAR      SECTION.
      *=== ABRE O ARQUIVO NO MODO LEITURA
           OPEN INPUT CLIENTES.
      
      *=== VERIFICA SE O ARQUIVO NAO PODE SER ABERTO
           IF FS-CLIENTES EQUAL 35
               MOVE "ARQUIVO NAO FOI ABERTO" TO WRK-MSG-ERRO
               PERFORM 9000-TRATA-ERRO
           END-IF.

       0200-PROCESSAR        SECTION.
      *=== LE UM REGISTRO DO ARQUIVO, E CASO ESTAVA VAZIO, ATRIBUI O
      *=== VALOR 10 PARA FS-CLIENTES    
           READ CLIENTES.
           IF FS-CLIENTES EQUAL 10
               DISPLAY "ARQUIVO VAZIO"
           ELSE
               DISPLAY "ID.......... " REG-ID
               DISPLAY "NOME........ " REG-NOME
               DISPLAY "TELEFONE.... " REG-TELEFONE
           END-IF.

       0300-FINALIZAR        SECTION.
           DISPLAY "FIM DE PROGRAMA".
      *=== FECHA O ARQUIVO
           CLOSE CLIENTES.
       
       9000-TRATA-ERRO       SECTION.
           DISPLAY WRK-MSG-ERRO.
           GOBACK.
