SET SERVEROUTPUT ON;
CLEAR BUFFER
SET ECHO OFF
CLEAR SCREEN

declare
    v_status VARCHAR2(4000);
    v_trailer_cant_filas number;
    v_trailer_table_name varchar2(30);
    v_trailer_cod_fecha number; 
    v_trailer_cod_fecha_diario number;
begin
    select CANT_FILAS, TABLENAME, COD_FECHA, COD_FECHA_DIARIO
    into v_trailer_cant_filas, v_trailer_table_name, v_trailer_cod_fecha, v_trailer_cod_fecha_diario
    from EXT_MP_USUARIOS_PASE_TRL; 

    DW_STG.APP_STG_MP_USUARIOS_PASE.Main (
      p_status => v_status,
      CANT_FILAS => v_trailer_cant_filas,
      COD_FECHA => v_trailer_cod_fecha,
      TABLE_NAME => v_trailer_table_name,
      COD_FECHA_DIARIO => v_trailer_cod_fecha_diario,
      p_max_no_of_errors => 50,
      p_commit_frequency => 1000,
      p_operating_mode   => 'ROW_BASED_TARGET_ONLY',
      p_bulk_size        => 1000,
      p_audit_level      => 'ERROR_DETAILS',
      p_purge_group      => 'WB',
      p_job_audit        => 'TRUE'
    );

    DBMS_OUTPUT.PUT_LINE(' ' || v_status);
    IF(instr(v_status,'FAILURE',1)!= 0)THEN
      DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');
      DBMS_OUTPUT.PUT_LINE('ERROR AL PROCESAR MAPPING');
    END IF;
end;