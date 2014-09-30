/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 11.2.0.4.0 
-- Created Date              : Tue Sep 30 12:43:59 ART 2014
-- Modified Date             : Tue Sep 30 12:43:59 ART 2014
-- Created By                : owb11204_idesa
-- Modified By               : owb11204_idesa
-- Generated Object Type     : TABLE
-- Generated Object Name     : STG_MP_USUARIOS_PASE
-- Comments                  : 
-- Copyright (c) 2000, 2014, Oracle. Todos los Derechos Reservados.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "STG_MP_USUARIOS_PASE"
(
"ID_CLIENTE" NUMBER(10),
"ID_PASE" NUMBER(5),
"TX_USERNAME" VARCHAR2(100),
"COD_FECHA_ALTA" NUMBER(8),
"COD_FECHA_MODIFICACION" NUMBER(8),
"COD_FECHA_BAJA" NUMBER(12),
"COD_FECHA_DIARIO" NUMBER(8),
"COD_FECHA" NUMBER(8)
)
;


