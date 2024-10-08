prompt --application/shared_components/security/authorizations/education_officer_only
begin
--   Manifest
--     SECURITY SCHEME: Education Officer Only
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(32924474565630119820)
,p_name=>'Education Officer Only'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM "User"',
'WHERE UPPER(username) = UPPER(:APP_USER)',
unistr('  AND base_role = ''\0622\0645\0648\0632\0634''')))
,p_error_message=>unistr('\062A\0646\0647\0627 \06A9\0627\0631\0634\0646\0627\0633 \0622\0645\0648\0632\0634 \0645\06CC\062A\0648\0627\0646\062F \0628\0647 \0627\06CC\0646 \0635\0641\062D\0647 \062F\0633\062A\0631\0633\06CC \062F\0627\0634\062A\0647 \0628\0627\0634\062F')
,p_version_scn=>15563023391887
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
