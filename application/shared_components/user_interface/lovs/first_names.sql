prompt --application/shared_components/user_interface/lovs/first_names
begin
--   Manifest
--     FIRST_NAMES
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
 p_id=>wwv_flow_imp.id(32424381441521660879)
,p_lov_name=>'FIRST_NAMES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    first_name || '' '' || last_name || '' - '' || base_role AS display_name,',
'    id AS return_value',
'FROM',
'    "User"',
'ORDER BY',
'    display_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15560807848531
);
wwv_flow_imp.component_end;
end;
/
