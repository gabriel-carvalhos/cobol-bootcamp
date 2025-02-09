       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA08.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: EXEMPLO DE OPERACAO SOMA (ADD)
      *==  DATA:
      *==  OBSERVACOES:
      *==  - obs01: "TO" ACUMULA AO VALOR ANTERIOR DA VARIAVEL
      *==  - obs02: "GIVING" ATRIBUI UM VALOR NOVO PARA VARIAVEL,
      *==    DESCONSIDERANDO O ANTERIOR.
      *==  - obs03: SUBTRAI O NUM2 PELO NUM1
      *==  - obs04: EM CASO DE MULTIPLICACAO POR 0, ELE MOSTRA A
      *==    MENSAGEM DE ERRO
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-NUM1          PIC 9(04)      VALUE ZEROS.
       77  WRK-NUM2          PIC 9(04)      VALUE ZEROS.
       77  WRK-RESULTADO     PIC S9(08)V99  VALUE ZEROS.
       77  WRK-RESULTADO-ED  PIC -ZZ.ZZZ.ZZ9,99  VALUE ZEROS.


       PROCEDURE             DIVISION.
       0100-RECEBE           SECTION.
           DISPLAY "DIGITE NUMERO 1: ".
           ACCEPT WRK-NUM1.
           DISPLAY "DIGITE NUMERO 2: ".
           ACCEPT WRK-NUM2.

       0150-PROCESSA         SECTION.
      *--------------- ADD
obs01 *    ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULTADO WRK-RESULTADO2.
obs02 *    ADD 1 GIVING WRK-RESULTADO.
      *--------------- SUBTRACT
obs03 *     SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULTADO.
      *--------------- MULTIPLY
      *    MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO.
      *
      *--------------- DIVIDE
      *    DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO
obs04 *            ON SIZE ERROR
      *                DISPLAY "ERRO: DIVISAO POR 0".
      *--------------- COMPUTE
      *    ADD WRK-NUM1 WRK-NUM2 GIVING WRK-RESULTADO
      *    DIVIDE WRK-RESULTADO BY 2 GIVING WRK-RESULTADO
           COMPUTE WRK-RESULTADO = (WRK-NUM1 + WRK-NUM2) / 2

           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
       0200-MOSTRA           SECTION.
           DISPLAY "RESULTADO : " WRK-RESULTADO-ED.

       0300-FINALIZAR        SECTION.
           STOP RUN.
