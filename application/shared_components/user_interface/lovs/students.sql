prompt --application/shared_components/user_interface/lovs/students
begin
--   Manifest
--     STUDENTS
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
 p_id=>wwv_flow_imp.id(32456285725431402324)
,p_lov_name=>'STUDENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    first_name || '' '' || last_name || '' - '' || base_role AS display_value,',
'    id AS return_value',
'FROM ',
'    "User"',
'WHERE ',
unistr('    base_role = ''\062F\0627\0646\0634\062C\0648'''),
'ORDER BY ',
'    display_value;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15563019803866
);
wwv_flow_imp.component_end;
end;
/
