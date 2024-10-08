prompt --application/shared_components/user_interface/lovs/teacher_groups
begin
--   Manifest
--     TEACHER_GROUPS
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
 p_id=>wwv_flow_imp.id(33425861139412793751)
,p_lov_name=>'TEACHER_GROUPS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    u.first_name || '' '' || u.last_name || '' - '' || u.base_role || ',
'    CASE ',
unistr('        WHEN gm.is_head = ''Y'' THEN '' (\0645\062F\06CC\0631 \06AF\0631\0648\0647: '' || g.title || '')'''),
unistr('        ELSE '' (\0639\0636\0648 \06AF\0631\0648\0647: '' || g.title || '')'''),
'    END AS display_value,',
'    u.id AS return_value',
'FROM ',
'    "User" u',
'LEFT JOIN ',
'    "Group_Members" gm ON u.id = gm.user_id',
'LEFT JOIN ',
'    "Group" g ON gm.group_id = g.id',
'WHERE ',
unistr('    u.base_role = ''\0627\0633\062A\0627\062F'''),
'ORDER BY ',
'    display_value;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15563020417240
);
wwv_flow_imp.component_end;
end;
/
