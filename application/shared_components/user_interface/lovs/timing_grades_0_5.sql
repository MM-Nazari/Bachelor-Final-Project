prompt --application/shared_components/user_interface/lovs/timing_grades_0_5
begin
--   Manifest
--     TIMING_GRADES_0.5
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
 p_id=>wwv_flow_imp.id(38675398219348384005)
,p_lov_name=>'TIMING_GRADES_0.5'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT type AS display_value, type AS return_value',
'FROM timing_grades',
'WHERE type IN (0, 0.5)',
'ORDER BY type;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>15569290803605
);
wwv_flow_imp.component_end;
end;
/
