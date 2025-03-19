       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ004.
      *=================================================================
      *==  AUTOR: Gabriel           
      *==  EMPRESA: XPTO
      *==  OBJETIVO: GRAVAÇÃO DE REGISTRO DO ARQUIVO CLIENTES.DAT
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
           TO "..\dados\CLIENTES.DAT"
               FILE STATUS IS FS-CLIENTES
               ORGANIZATION IS LINE SEQUENTIAL.
 
           SELECT ENTRADA ASSIGN
           TO "..\dados\ENTRADA.TXT"
               FILE STATUS IS FS-ENTRADA
               ORGANIZATION IS LINE SEQUENTIAL.       
     
       DATA DIVISION.
      *=== DEFINE O LAYOUT DO ARQUIVO
       FILE                  SECTION.
       FD  ENTRADA.           
      *-------------------
      *---- TAMANHO -> 35
      *-------------------
       01  REG-ENTRADA-CLIENTES.
           05  REG-ENTRADA-ID           PIC 9(004).
           05  REG-ENTRADA-NOME         PIC X(020).
           05  REG-ENTRADA-TELEFONE     PIC X(011).
       
       FD  CLIENTES.
      *-------------------
      *---- TAMANHO -> 35
      *-------------------
       01  REG-CLIENTES         PIC X(35).
 
       WORKING-STORAGE       SECTION.
       77  FS-CLIENTES          PIC 9(002) VALUE ZEROS.
       77  FS-ENTRADA           PIC 9(002) VALUE ZEROS.
       77  WRK-MSG-ERRO         PIC X(030) VALUE SPACES.
 
       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR UNTIL FS-ENTRADA EQUAL 10.
           PERFORM 0300-FINALIZAR.
 
           STOP RUN.
           
       0100-INICIALIZAR      SECTION.
      *=== ABRE O ARQUIVO NO MODO LEITURA 
           OPEN INPUT ENTRADA
      *=== ABRE O ARQUIVO NO MODO GRAVACAO, O 'OUTPUT' DEFINE QUE O
      *=== NOVO CONTEUDO SERA SUBSTITUIDO PELO ANTIGO
           OPEN OUTPUT CLIENTES.

           EVALUATE FS-ENTRADA
             WHEN 30
                 MOVE "CAMINHO NAO RESOLVIDO" TO WRK-MSG-ERRO
                 PERFORM 9000-TRATA-ERRO
             WHEN 35    
                 MOVE "ARQUIVO NAO FOI ABERTO" TO WRK-MSG-ERRO
                 PERFORM 9000-TRATA-ERRO
             WHEN 42   
                 MOVE "ARQUIVO CORROMPIDO    " TO WRK-MSG-ERRO
                 PERFORM 9000-TRATA-ERRO
           END-EVALUATE.
      *----------  TESTAR VAZIO         
           READ ENTRADA.
           
       0200-PROCESSAR        SECTION.
       
           IF REG-ENTRADA-TELEFONE(01:02) EQUAL "11"
               MOVE REG-ENTRADA-CLIENTES TO REG-CLIENTES
               
               DISPLAY "ID........ " REG-ENTRADA-ID
               DISPLAY "NOME...... " REG-ENTRADA-NOME
               DISPLAY "TELEFONE.. " REG-ENTRADA-TELEFONE
               DISPLAY "----------"
               WRITE REG-CLIENTES
           END-IF.
                
           READ ENTRADA.
           IF FS-ENTRADA NOT EQUAL 00
               DISPLAY "ERRO DE LEITURA"
           END-IF.
 
       0300-FINALIZAR        SECTION.
           DISPLAY "FIM DE PROGRAMA".
      *=== FECHA O ARQUIVO
           CLOSE CLIENTES
                 ENTRADA.
       
       9000-TRATA-ERRO       SECTION.
           DISPLAY WRK-MSG-ERRO.
           GOBACK.
