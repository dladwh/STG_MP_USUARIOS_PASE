/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 11.2.0.4.0 
-- Created Date              : Tue Sep 30 14:29:10 ART 2014
-- Modified Date             : Tue Sep 30 14:29:10 ART 2014
-- Created By                : owb11204_idesa
-- Modified By               : owb11204_idesa
-- Generated Object Type     : EXTERNAL TABLE
-- Generated Object Name     : EXT_MP_USUARIOS_PASE
-- Comments                  : 
-- Copyright (c) 2000, 2014, Oracle. Todos los Derechos Reservados.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "EXT_MP_USUARIOS_PASE"
(
"VALOR_DE_TIPO" VARCHAR2(1),
"ID_CLIENTE" NUMBER(10),
"ID_PASE" NUMBER(5),
"TX_USERNAME" VARCHAR2(100),
"COD_FECHA_ALTA" VARCHAR2(8),
"COD_FECHA_MODIFICACION" VARCHAR2(8),
"COD_FECHA_BAJA" VARCHAR2(12)
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY EXTERNAL_TABLES
  ACCESS PARAMETERS (
    RECORDS DELIMITED BY NEWLINE
    CHARACTERSET WE8MSWIN1252
    STRING SIZES ARE IN BYTES
    LOAD WHEN (
      ("VALOR_DE_TIPO"='D')
    )
    NOBADFILE
    NODISCARDFILE
    NOLOGFILE
    FIELDS
      TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"' AND '"'
      NOTRIM
      (
        "VALOR_DE_TIPO" CHAR,
        "ID_CLIENTE" CHAR,
        "ID_PASE" CHAR,
        "TX_USERNAME" CHAR,
        "COD_FECHA_ALTA" CHAR,
        "COD_FECHA_MODIFICACION" CHAR,
        "COD_FECHA_BAJA" CHAR
      )
    )
  LOCATION (
      'MP_USUARIOS_PASE.txt'
  )
)
REJECT LIMIT UNLIMITED
NOPARALLEL
;

