prompt --application/shared_components/files/custom_css_min_css
begin
--   Manifest
--     APP STATIC FILES: 88841
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '40666F6E742D666163657B666F6E742D66616D696C793A224168616E67223B7372633A75726C28234150505F46494C4553234168616E672D526567756C61722E6F746629666F726D617428226F746622293B666F6E742D7765696768743A3430303B666F';
wwv_flow_imp.g_varchar2_table(2) := '6E742D7374796C653A6E6F726D616C7D626F64792C68746D6C7B666F6E742D66616D696C793A224168616E672221696D706F7274616E743B646972656374696F6E3A72746C3B746578742D616C69676E3A72696768747D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(35623785365793046394)
,p_file_name=>'custom_css.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
