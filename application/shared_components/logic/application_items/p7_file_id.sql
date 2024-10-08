prompt --application/shared_components/logic/application_items/p7_file_id
begin
--   Manifest
--     APPLICATION ITEM: P7_FILE_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(32466417619461065390)
,p_name=>'P7_FILE_ID'
,p_protection_level=>'I'
,p_version_scn=>15560831931897
);
wwv_flow_imp.component_end;
end;
/
