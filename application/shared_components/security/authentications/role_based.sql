prompt --application/shared_components/security/authentications/role_based
begin
--   Manifest
--     AUTHENTICATION: Role-Based
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(26802079007972172610)
,p_name=>'Role-Based'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_authentication'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15560190859289
);
wwv_flow_imp.component_end;
end;
/
