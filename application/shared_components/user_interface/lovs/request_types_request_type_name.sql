prompt --application/shared_components/user_interface/lovs/request_types_request_type_name
begin
--   Manifest
--     REQUEST_TYPES.REQUEST_TYPE_NAME
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
 p_id=>wwv_flow_imp.id(32422316701209593905)
,p_lov_name=>'REQUEST_TYPES.REQUEST_TYPE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'REQUEST_TYPES'
,p_return_column_name=>'ID'
,p_display_column_name=>'REQUEST_TYPE_NAME'
,p_default_sort_column_name=>'REQUEST_TYPE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15560757177250
);
wwv_flow_imp.component_end;
end;
/
