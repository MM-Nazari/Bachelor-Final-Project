prompt --application/shared_components/user_interface/lovs/file_types
begin
--   Manifest
--     FILE_TYPES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(33354342092535054886)
,p_lov_name=>'FILE_TYPES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'FILE_TYPES'
,p_return_column_name=>'ID'
,p_display_column_name=>'FILE_TYPE'
,p_default_sort_column_name=>'FILE_TYPE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15561825480029
);
wwv_flow_imp.component_end;
end;
/
