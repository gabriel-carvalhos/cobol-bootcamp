       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG016.
      *=================================================================
      *==  AUTOR: Gabriel           EMPRESA: XPTO
      *==  OBJETIVO: PRATICAR VETORES
      *==  DATA: 24/02/2025
      *==  OBSERVACOES:
      *=================================================================
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE       SECTION.
       01  WRK-DATA.
           05 WRK-ANO      PIC 9(004).
           05 WRK-MES      PIC 9(002).
           05 WRK-DIA      PIC 9(002).
      
      *=== JUNTA TODOS OS MESES EM UMA UNICA STRING
      *=== JANEIRO  FEVEREIROMARCO    ABRIL    .... 
       01  WRK-TAB-MES.
           05 FILLER       PIC X(009)  VALUES "JANEIRO  ".
           05 FILLER       PIC X(009)  VALUES "FEVEREIRO".
           05 FILLER       PIC X(009)  VALUES "MARCO    ".
           05 FILLER       PIC X(009)  VALUES "ABRIL    ".
           05 FILLER       PIC X(009)  VALUES "MAIO     ".
           05 FILLER       PIC X(009)  VALUES "JUNHO    ".
           05 FILLER       PIC X(009)  VALUES "JULHO    ".
           05 FILLER       PIC X(009)  VALUES "AGOSTO   ".
           05 FILLER       PIC X(009)  VALUES "SETEMBRO ".
           05 FILLER       PIC X(009)  VALUES "OUTUBRO  ".
           05 FILLER       PIC X(009)  VALUES "NOVEMBRO ".
           05 FILLER       PIC X(009)  VALUES "DEZEMBRO ".
      
      *=== DIVIDE A STRING EM 12 PARTES, CADA UMA CONTENDO UM MES
       01  WRK-TAB-MES-R REDEFINES WRK-TAB-MES OCCURS 12 TIMES.
           05 MESES        PIC X(009).

       PROCEDURE             DIVISION.
       0001-PRINCIPAL        SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR
           STOP RUN.

       0100-INICIALIZAR      SECTION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.

       0200-PROCESSAR        SECTION.
           DISPLAY WRK-DIA " DE " MESES(WRK-MES) " DE " WRK-ANO.

       0300-FINALIZAR        SECTION.
           
