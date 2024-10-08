prompt --application/shared_components/user_interface/lovs/all_capacity
begin
--   Manifest
--     ALL+CAPACITY
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
 p_id=>wwv_flow_imp.id(35326266494112343317)
,p_lov_name=>'ALL+CAPACITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    u.first_name || '' '' || u.last_name || '' - '' || u.base_role ||',
'    CASE ',
'        -- If the user is a teacher, add group info and capacity',
unistr('        WHEN u.base_role = ''\0627\0633\062A\0627\062F'' THEN '),
'            CASE ',
'                WHEN gm.is_head = ''Y'' THEN ',
unistr('                    '' (\0645\062F\06CC\0631 \06AF\0631\0648\0647: '' || g.title || '', \0638\0631\0641\06CC\062A: '' || COALESCE(c.capacity, 0) || '')'''),
'                ELSE ',
unistr('                    '' (\0639\0636\0648 \06AF\0631\0648\0647: '' || g.title || '', \0638\0631\0641\06CC\062A: '' || COALESCE(c.capacity, 0) || '')'''),
'            END',
'        -- If the user is not a teacher, don''t add group info',
'        ELSE ''''',
'    END AS display_value,',
'    u.id AS return_value',
'FROM ',
'    "User" u',
'LEFT JOIN ',
unistr('    "Group_Members" gm ON u.id = gm.user_id AND u.base_role = ''\0627\0633\062A\0627\062F'''),
'LEFT JOIN ',
'    "Group" g ON gm.group_id = g.id',
'LEFT JOIN ',
'    capacitys c ON u.id = c.user_id',
'ORDER BY ',
'    display_value;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>15564267717418
);
wwv_flow_imp.component_end;
end;
/