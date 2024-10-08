prompt --application/shared_components/logic/application_items/app_user_id
begin
--   Manifest
--     APPLICATION ITEM: APP_USER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(32209613034777975392)
,p_name=>'APP_USER_ID'
,p_protection_level=>'N'
,p_version_scn=>15560333379750
);
wwv_flow_imp.component_end;
end;
/
