prompt --application/shared_components/files/custom_css_css
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
wwv_flow_imp.g_varchar2_table(1) := '40666F6E742D66616365207B0D0A20202020666F6E742D66616D696C793A20274168616E67273B0D0A202020207372633A2075726C2827234150505F46494C4553234168616E672D526567756C61722E6F7466272920666F726D617428276F746627293B';
wwv_flow_imp.g_varchar2_table(2) := '0D0A20202020666F6E742D7765696768743A206E6F726D616C3B0D0A20202020666F6E742D7374796C653A206E6F726D616C3B0D0A7D0D0A0D0A68746D6C2C20626F6479207B0D0A20202020666F6E742D66616D696C793A20274168616E67272021696D';
wwv_flow_imp.g_varchar2_table(3) := '706F7274616E743B0D0A20202020646972656374696F6E3A2072746C3B2020202F2A2052696768742D746F2D6C65667420666F72204661727369202A2F0D0A20202020746578742D616C69676E3A2072696768743B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(35615311300789497655)
,p_file_name=>'custom_css.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
