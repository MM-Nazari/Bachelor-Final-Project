prompt --application/shared_components/user_interface/lovs/all_capacity_filtered
begin
--   Manifest
--     ALL+CAPACITY+FILTERED
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
 p_id=>wwv_flow_imp.id(38586726270956942909)
,p_lov_name=>'ALL+CAPACITY+FILTERED'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- With Group_Members join',
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
'WHERE ',
'    -- For teachers, check if P14_TYPE matches the teacher-specific values',
unistr('    (:P14_TYPE IN (28, 23, 4, 1, 3, 26, 30, 41) AND u.base_role = ''\0627\0633\062A\0627\062F'') '),
'    -- For education officers',
unistr('    OR (:P14_TYPE IN (25, 29, 21, 24, 2, 42) AND u.base_role = ''\0622\0645\0648\0632\0634'')'),
'    -- For students',
unistr('    OR (:P14_TYPE = 27 AND u.base_role = ''\062F\0627\0646\0634\062C\0648'')'),
'ORDER BY ',
'    display_value;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15570523621074
);
wwv_flow_imp.component_end;
end;
/
