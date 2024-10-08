prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>unistr('\0633\0627\0645\0627\0646\0647 \0645\062F\06CC\0631\06CC\062A \067E\0631\0648\0698\0647 \06A9\0627\0631\0634\0646\0627\0633\06CC')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.login-page {',
'    direction: ltr;',
'    text-align: left;',
'    background-color: #f0f0f0;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(26793632768885812312)
,p_page_css_classes=>'.login-page body {     direction: ltr !important;     text-align: left; }'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26794319184097812515)
,p_plug_name=>'Login'
,p_title=>unistr('\0633\0627\0645\0627\0646\0647 \0645\062F\06CC\0631\06CC\062A \067E\0631\0648\0698\0647 \06A9\0627\0631\0634\0646\0627\0633\06CC')
,p_region_css_classes=>'.login-page body {     direction: ltr !important;     text-align: left; }'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793719581656812350)
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#final-512.jpg'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26794320833741812519)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26794319184097812515)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0648\0631\0648\062F')
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11492868889262803320)
,p_name=>'P9999_APP_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26794319184097812515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11492868958253803321)
,p_name=>'P9999_APP_USER_ROLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26794319184097812515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26794319664597812518)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26794319184097812515)
,p_prompt=>unistr('\0646\0627\0645 \06A9\0627\0631\0628\0631\06CC')
,p_placeholder=>unistr('\0646\0627\0645 \06A9\0627\0631\0628\0631\06CC')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(26793795651286812386)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26794320029455812518)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26794319184097812515)
,p_prompt=>unistr('\06AF\0630\0631\0648\0627\0698\0647')
,p_placeholder=>unistr('\06AF\0630\0631\0648\0627\0698\0647')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(26793795651286812386)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26794320488245812519)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26794319184097812515)
,p_prompt=>unistr('\0646\0627\0645 \06A9\0627\0631\0628\0631\06CC \0648 \06AF\0630\0631\0648\0627\0698\0647 \0631\0627 \0628\0647 \062E\0627\0637\0631 \0628\0633\067E\0627\0631')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(26793795651286812386)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26794323073104812520)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26794323073104812520
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26794323518247812521)
,p_page_process_id=>wwv_flow_imp.id(26794323073104812520)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26794324086086812521)
,p_page_process_id=>wwv_flow_imp.id(26794323073104812520)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26794321164494812519)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26794321164494812519
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26794321615867812520)
,p_page_process_id=>wwv_flow_imp.id(26794321164494812519)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26794322182199812520)
,p_page_process_id=>wwv_flow_imp.id(26794321164494812519)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26794322666780812520)
,p_page_process_id=>wwv_flow_imp.id(26794321164494812519)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11492869107195803323)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RetreiveId'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_user_id INTEGER;',
'BEGIN',
'    -- Retrieve the user ID based on the username and password provided',
'    SELECT id ',
'    INTO v_user_id',
'    FROM "User"',
'    WHERE UPPER(username) = UPPER(:P9999_USERNAME) ',
'      AND password = :P9999_PASSWORD;',
'    ',
'    -- Set the session state for APP_USER_ID',
'    APEX_UTIL.SET_SESSION_STATE(''APP_USER_ID'', v_user_id);',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        -- Handle case where no user is found',
'        APEX_UTIL.SET_SESSION_STATE(''APP_USER_ID'', NULL);',
'        -- You can also raise an application error here if desired:',
'        -- raise_application_error(-20001, ''Invalid username or password'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11492869107195803323
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26794324943535812521)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26794324943535812521
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26794324552183812521)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>26794324552183812521
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11492869034459803322)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ID-ROLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_user_id INTEGER;',
'BEGIN',
'    -- Retrieve the user ID based on the username and password provided',
'    SELECT id ',
'    INTO v_user_id',
'    FROM "User"',
'    WHERE UPPER(username) = UPPER(:P9999_USERNAME) ',
'      AND password = :P9999_PASSWORD;',
'    ',
'    -- Set the session state for APP_USER_ID',
'    APEX_UTIL.SET_SESSION_STATE(''APP_USER_ID'', v_user_id);',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        -- Handle case where no user is found',
'        APEX_UTIL.SET_SESSION_STATE(''APP_USER_ID'', NULL);',
'        -- You can also raise an application error here if desired:',
'        -- raise_application_error(-20001, ''Invalid username or password'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11492869034459803322
);
wwv_flow_imp.component_end;
end;
/
