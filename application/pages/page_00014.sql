prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Submit/Update Request Form'
,p_alias=>'SUBMIT-UPDATE-REQUEST-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0627\06CC\062C\0627\062F / \0628\0631\0648\0632\0631\0633\0627\0646\06CC \062F\0631\062E\0648\0627\0633\062A')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#persian-date.min.js',
'#APP_FILES#persian-datepicker.min.js'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        // document.addEventListener(''DOMContentLoaded'', function() {',
'            // if (typeof PersianDate !== ''undefined'') {',
'                // Initialize the date picker',
'                // console.log(''hiiiiiiiiiiiiiiiiiiiiiiiiiiiiii'')',
'                $(''#P14_SEND_REQUEST_DATE'').persianDatepicker({',
'                    format: ''YYYY/MM/DD'',',
'                    autoClose: true',
'                });',
'            // } else {',
'                // console.error(''PersianDate library not loaded'');',
'            // }',
'        // });'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#persian-datepicker2.min.css',
''))
,p_inline_css=>'.t-Form-fieldContainer--floatingLabel {--a-field-input-font-size: .875rem !important;}'
,p_step_template=>wwv_flow_imp.id(26793622126224812307)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33959289597710271833)
,p_plug_name=>'Submit/Update Request Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793658015504812324)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'.custom-height {     height: 50px; /* Adjust the height value as per your need */ }'
,p_query_type=>'TABLE'
,p_query_table=>'Request'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33959294748997271838)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793660857978812325)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33959295124992271839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33959294748997271838)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_image_alt=>unistr('\0644\063A\0648')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33959296543332271840)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33959294748997271838)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_image_alt=>unistr('\062D\0630\0641')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33959296908378271840)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(33959294748997271838)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0628\0631\0648\0632\0631\0633\0627\0646\06CC')
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33959297386552271840)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33959294748997271838)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\06CC\062C\0627\062F \06A9\0646')
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33189266284372713027)
,p_name=>'P14_SEND_REQUEST_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_prompt=>unistr('\062A\0627\0631\06CC\062E \0627\0631\0633\0627\0644 \062F\0631\062E\0648\0627\0633\062A')
,p_source=>'SEND_REQUEST_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33959289813244271833)
,p_name=>'P14_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33959290273276271834)
,p_name=>'P14_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_prompt=>unistr('\0639\0646\0648\0627\0646 \067E\0631\0648\0698\0647')
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH UserRole AS (',
'    SELECT base_role',
'    FROM "User"',
'    WHERE UPPER(username) = UPPER(:APP_USER)',
')',
'SELECT ',
'    p.id AS return_value,',
'    p.title AS display_value',
'FROM ',
'    "Project" p',
'JOIN ',
'    UserRole ur',
'ON',
unistr('    (ur.base_role = ''\0622\0645\0648\0632\0634'') OR'),
unistr('    (ur.base_role = ''\062F\0627\0646\0634\062C\0648'' AND p.student_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER))) OR'),
unistr('    (ur.base_role = ''\0627\0633\062A\0627\062F'' AND (p.supervisor_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)) '),
'    OR p.reviewer_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER))))',
'ORDER BY ',
'    p.title;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'.custom-height {     height: 50px; /* Adjust this value as needed */     line-height: 50px; /* Ensures the text inside is vertically aligned */ }'
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33959290626585271835)
,p_name=>'P14_STATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_prompt=>unistr('\0648\0636\0639\06CC\062A')
,p_source=>'STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REQUEST_STATE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'.custom-height {     height: 50px; /* Adjust this value as needed */     line-height: 50px; /* Ensures the text inside is vertically aligned */ }'
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_css_classes=>'.custom-height {     height: 50px; /* Adjust this value as needed */     line-height: 50px; /* Ensures the text inside is vertically aligned */ }'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33959291081945271835)
,p_name=>'P14_SENDER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id',
'FROM "User"',
'WHERE UPPER(username) = UPPER(:APP_USER)'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'SENDER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33959291482543271836)
,p_name=>'P14_RECEIVER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_prompt=>unistr('\06AF\06CC\0631\0646\062F\0647')
,p_source=>'RECEIVER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ALL+CAPACITY+FILTERED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P14_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33959291894816271836)
,p_name=>'P14_TYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_prompt=>unistr('\0646\0648\0639 \062F\0631\062E\0648\0627\0633\062A')
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'REQUEST_TYPES.REQUEST_TYPE_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33959292253595271836)
,p_name=>'P14_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_item_source_plug_id=>wwv_flow_imp.id(33959289597710271833)
,p_prompt=>unistr('\062A\0648\0636\06CC\062D\0627\062A')
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33959295248513271839)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33959295124992271839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33959296018929271839)
,p_event_id=>wwv_flow_imp.id(33959295248513271839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33189267626489713041)
,p_name=>'Filter'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33189267822786713043)
,p_event_id=>wwv_flow_imp.id(33189267626489713041)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'receiver'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_RECEIVER_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33959298113311271841)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(33959289597710271833)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Submit/Update Request Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33959298113311271841
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33959298523191271841)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>33959298523191271841
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33959297719051271840)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(33959289597710271833)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Submit/Update Request Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33959297719051271840
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33189265994978713024)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check / Decrease Capacity'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DECLARE',
'        v_teacher_id NUMBER;',
'        v_request_type NUMBER;',
'        v_capacity NUMBER;',
'        v_rows_updated NUMBER;',
'        v_state NUMBER;',
'        v_existing_state NUMBER;',
'        v_request_exists NUMBER;',
'    BEGIN',
'        -- Get the request type, state, and teacher ID from the page items',
'        v_request_type := :P14_TYPE;',
'        v_teacher_id := :P14_RECEIVER_ID;',
'        v_state := :P14_STATE;',
'        ',
'        -- Check if the request exists and get its current state',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO v_request_exists',
'            FROM "Request"',
'            WHERE id = :P14_ID; -- Assuming :P14_ID is the ID of the request',
'',
'            -- If the request exists, get its state',
'            IF v_request_exists > 0 THEN',
'                SELECT state',
'                INTO v_existing_state',
'                FROM "Request"',
'                WHERE id = :P14_ID; -- Assuming :P14_ID is the ID of the request',
'            ELSE',
'                v_existing_state := NULL;',
'            END IF;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                v_existing_state := NULL;',
'        END;',
'        ',
'        IF v_request_type = 41 THEN',
'            -- If the request is being updated and state changes to 3, insert a record into the Role table',
'            IF v_existing_state = 1 AND v_state = 3 THEN',
'                -- Insert a record in the Role table',
'                INSERT INTO "Role" (user_id, project_id, name)',
'                VALUES (:P14_RECEIVER_ID, :P14_PROJECT_ID, 21);',
'            END IF;',
'        END IF;',
'        ',
'        -- Handle new request creation',
'        IF v_request_exists = 0 THEN',
unistr('            -- Check if the request type is "\0627\0646\062A\062E\0627\0628 \0627\0633\062A\0627\062F \0631\0627\0647\0646\0645\0627"'),
'            IF v_request_type = 1 THEN',
'                -- Get the current capacity of the teacher',
'                SELECT capacity',
'                INTO v_capacity',
'                FROM capacitys',
'                WHERE user_id = v_teacher_id;',
'                ',
'                -- Check if the capacity is zero',
'                IF v_capacity = 0 THEN',
'                    -- Raise a custom error message if capacity is zero',
unistr('                    RAISE_APPLICATION_ERROR(-20004, ''\0638\0631\0641\06CC\062A \0627\06CC\0646 \0627\0633\062A\0627\062F \067E\0631 \0634\062F\0647 \0627\0633\062A'');'),
'                END IF;',
'',
'                -- Check if the request state is 3 before decreasing capacity',
'                IF v_state = 3 THEN',
'                    -- Decrease the capacity of the teacher by 1',
'                    UPDATE capacitys',
'                    SET capacity = capacity - 1',
'                    WHERE user_id = v_teacher_id',
'                    RETURNING 1 INTO v_rows_updated;',
'',
'                    -- Check if any rows were updated',
'                    IF v_rows_updated = 0 THEN',
'                        -- Raise a custom error message if no rows were updated',
unistr('                        RAISE_APPLICATION_ERROR(-20003, ''\0638\0631\0641\06CC\062A \0627\0633\062A\0627\062F \0628\0647\200C\0631\0648\0632 \0646\0634\062F. \0627\0633\062A\0627\062F \067E\06CC\062F\0627 \0646\0634\062F.'');'),
'                    END IF;',
'',
'                    INSERT INTO "Role" (user_id, project_id, name)',
'                    VALUES (:P14_RECEIVER_ID, :P14_PROJECT_ID, 22);',
'                END IF;',
'            END IF;',
'        ',
'        -- Handle update of an existing request',
'        ELSIF v_request_exists > 0 THEN',
unistr('            -- Check if the request type is "\0627\0646\062A\062E\0627\0628 \0627\0633\062A\0627\062F \0631\0627\0647\0646\0645\0627"'),
'            IF v_request_type = 1 THEN',
'                -- Get the current capacity of the teacher',
'                SELECT capacity',
'                INTO v_capacity',
'                FROM capacitys',
'                WHERE user_id = v_teacher_id;',
'                ',
'                -- Check if the capacity is zero',
'                IF v_capacity = 0 THEN',
'                    -- Raise a custom error message if capacity is zero',
unistr('                    RAISE_APPLICATION_ERROR(-20004, ''\0638\0631\0641\06CC\062A \0627\06CC\0646 \0627\0633\062A\0627\062F \067E\0631 \0634\062F\0647 \0627\0633\062A'');'),
'                END IF;',
'',
'                -- Check if the request state is 3 and it has changed from a different state',
'                IF v_state = 3 AND v_existing_state != 3 THEN',
'                    -- Decrease the capacity of the teacher by 1',
'                    UPDATE capacitys',
'                    SET capacity = capacity - 1',
'                    WHERE user_id = v_teacher_id',
'                    RETURNING 1 INTO v_rows_updated;',
'',
'                    -- Check if any rows were updated',
'                    IF v_rows_updated = 0 THEN',
'                        -- Raise a custom error message if no rows were updated',
unistr('                        RAISE_APPLICATION_ERROR(-20003, ''\0638\0631\0641\06CC\062A \0627\0633\062A\0627\062F \0628\0647\200C\0631\0648\0632 \0646\0634\062F. \0627\0633\062A\0627\062F \067E\06CC\062F\0627 \0646\0634\062F.'');'),
'                    END IF;',
'',
'                    INSERT INTO "Role" (user_id, project_id, name)',
'                    VALUES (:P14_RECEIVER_ID, :P14_PROJECT_ID, 22);',
'                END IF;',
'            END IF;',
'        END IF;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            -- Handle case where no capacity data is found',
unistr('            RAISE_APPLICATION_ERROR(-20001, ''\0627\0633\062A\0627\062F\06CC \0628\0627 \0627\06CC\0646 \0622\06CC\062F\06CC \06CC\0627\0641\062A \0646\0634\062F'');'),
'    END;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33189265994978713024
);
wwv_flow_imp.component_end;
end;
/
