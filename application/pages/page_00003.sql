prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Submit Timing form'
,p_alias=>'SUBMIT-TIMING-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0627\06CC\062C\0627\062F / \0628\0631\0648\0632\0631\0633\0627\0646\06CC \0632\0645\0627\0646 \0628\0646\062F\06CC')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.t-Form-fieldContainer--floatingLabel {--a-field-input-font-size: .875rem !important;}'
,p_step_template=>wwv_flow_imp.id(26793622126224812307)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36400083076996735636)
,p_plug_name=>'Submit Timing form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793658015504812324)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROJECT_TIMING'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36400087563515735641)
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
 p_id=>wwv_flow_imp.id(36400087998840735641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36400087563515735641)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_image_alt=>unistr('\0644\063A\0648')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36400089353162735642)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36400087563515735641)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_image_alt=>unistr('\062D\0630\0641')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36400089748398735642)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(36400087563515735641)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0628\0631\0648\0632\0631\0633\0627\0646\06CC')
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36400090195039735643)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(36400087563515735641)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\06CC\062C\0627\062F \06A9\0646')
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36400083373513735637)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_item_source_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36400083738113735637)
,p_name=>'P3_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_item_source_plug_id=>wwv_flow_imp.id(36400083076996735636)
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
'    p.title || '' - '' || u.first_name || '' '' || u.last_name AS display_value',
'FROM ',
'    "Project" p',
'JOIN ',
'    UserRole ur',
unistr('    ON (ur.base_role = ''\0622\0645\0648\0632\0634'') '),
unistr('    OR (ur.base_role = ''\062F\0627\0646\0634\062C\0648'' AND p.student_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)))'),
unistr('    OR (ur.base_role = ''\0627\0633\062A\0627\062F'' AND (p.supervisor_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)) '),
'    OR p.reviewer_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)))',
'    )',
'JOIN ',
'    "User" u ',
'    ON p.student_id = u.id  -- Assuming p.student_id relates to the student''s ID in the User table',
'ORDER BY ',
'    p.title;',
''))
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
 p_id=>wwv_flow_imp.id(36400084169845735638)
,p_name=>'P3_SUPERVISOR_SELECTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_item_source_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_prompt=>unistr('\0627\0646\062A\062E\0627\0628 \0627\0633\062A\0627\062F \0631\0627\0647\0646\0645\0627')
,p_source=>'SUPERVISOR_SELECTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMING_GRADES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36400084537403735638)
,p_name=>'P3_PROPOSAL_SUBMISSION_TO_EDUCATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_item_source_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_prompt=>unistr('\062A\062D\0648\06CC\0644 \067E\06CC\0634\0646\0647\0627\062F \067E\0631\0648\0698\0647 \0628\0647  \0622\0645\0648\0632\0634 ')
,p_source=>'PROPOSAL_SUBMISSION_TO_EDUCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMING_GRADES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36400084908009735639)
,p_name=>'P3_PROJECT_APPROVAL_BY_GROUP'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_item_source_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_prompt=>unistr('\062A\0635\0648\06CC\0628 \067E\0631\0648\0698\0647 \062F\0631 \06AF\0631\0648\0647')
,p_source=>'PROJECT_APPROVAL_BY_GROUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMING_GRADES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36400085391459735639)
,p_name=>'P3_THESIS_SUBMISSION_TO_EDUCATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_item_source_plug_id=>wwv_flow_imp.id(36400083076996735636)
,p_prompt=>unistr('\062A\062D\0648\06CC\0644 \067E\0627\06CC\0627\0646 \0646\0627\0645\0647 \0628\0647 \0622\0645\0648\0632\0634 ')
,p_source=>'THESIS_SUBMISSION_TO_EDUCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMING_GRADES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36400088020651735641)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36400087998840735641)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36400088823674735642)
,p_event_id=>wwv_flow_imp.id(36400088020651735641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36400090934536735643)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(36400083076996735636)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Submit Timing form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>36400090934536735643
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36400091340617735643)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>36400091340617735643
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36400090514988735643)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(36400083076996735636)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Submit Timing form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>36400090514988735643
);
wwv_flow_imp.component_end;
end;
/
