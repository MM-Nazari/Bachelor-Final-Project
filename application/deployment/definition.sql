prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 88841
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(34561237106163635756)
,p_required_free_kb=>10000
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
);
wwv_flow_imp.component_end;
end;
/
