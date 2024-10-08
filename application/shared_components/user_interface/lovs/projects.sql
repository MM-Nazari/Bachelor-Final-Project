prompt --application/shared_components/user_interface/lovs/projects
begin
--   Manifest
--     PROJECTS
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
 p_id=>wwv_flow_imp.id(32978169503530364203)
,p_lov_name=>'PROJECTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH UserRole AS (',
'    SELECT base_role',
'    FROM "User"',
'    WHERE UPPER(username) = UPPER(:APP_USER)',
')',
'SELECT ',
'    p.id AS return_value,',
'    p.title || '' - '' || u.first_name || '' '' || u.last_name AS display_value',
'FROM ',
'    "Project" p',
'JOIN ',
'    UserRole ur',
unistr('    ON (ur.base_role = ''\0622\0645\0648\0632\0634'') '),
unistr('    OR (ur.base_role = ''\062F\0627\0646\0634\062C\0648'' AND p.student_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)))'),
unistr('    OR (ur.base_role = ''\0627\0633\062A\0627\062F'')'),
unistr('  --  OR (ur.base_role = ''\0627\0633\062A\0627\062F'' AND (p.supervisor_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)) '),
'  --  OR p.reviewer_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)))',
'  --  )',
'JOIN ',
'    "User" u ',
'    ON p.student_id = u.id  -- Assuming p.student_id relates to the student''s ID in the User table',
'ORDER BY ',
'    p.title;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15570800115097
);
wwv_flow_imp.component_end;
end;
/
