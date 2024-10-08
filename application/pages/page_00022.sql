prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Submit/Update Project Form'
,p_alias=>'SUBMIT-UPDATE-PROJECT-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0627\06CC\062C\0627\062F / \0628\0631\0648\0632\0631\0633\0627\0646\06CC \067E\0631\0648\0698\0647')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#persian-date.min.js',
'#APP_FILES#persian-datepicker.min.js'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P22_GRADE_DATE'').persianDatepicker({',
'    format: ''YYYY/MM/DD'',',
'    autoClose: true, ',
'    initialValue: false',
'});',
'',
'$(''#P22_PROPOSAL_SUBMISSION_DATE'').persianDatepicker({',
'    format: ''YYYY/MM/DD'',',
'    autoClose: true,',
'    initialValue: false',
'});',
'',
'$(''#P22_THESIS_SUBMISSION_DATE'').persianDatepicker({',
'    format: ''YYYY/MM/DD'',',
'    autoClose: true,',
'    initialValue: false',
'});',
'',
'$(''#P22_DEFENSE_DATE'').persianDatepicker({',
'    format: ''YYYY/MM/DD'',',
'    autoClose: true,',
'    initialValue: false',
'});',
'',
'$(''#P22_APPROVAL_DATE'').persianDatepicker({',
'    format: ''YYYY/MM/DD'',',
'    autoClose: true,',
'    initialValue: false',
'});',
''))
,p_css_file_urls=>'#APP_FILES#persian-datepicker.min.css'
,p_inline_css=>'.t-Form-fieldContainer--floatingLabel {--a-field-input-font-size: .875rem !important;}'
,p_step_template=>wwv_flow_imp.id(26793622126224812307)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33264438536432327499)
,p_plug_name=>'Submit/Update Project Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793658015504812324)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'Project'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33264451431218327510)
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
 p_id=>wwv_flow_imp.id(33264451822642327511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33264451431218327510)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_image_alt=>unistr('\0644\063A\0648')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33264453246614327512)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33264451431218327510)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_image_alt=>unistr('\062D\0630\0641')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33264453660822327512)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(33264451431218327510)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0628\0631\0648\0632\0631\0633\0627\0646\06CC')
,p_button_position=>'NEXT'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33264454092390327512)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33264451431218327510)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\06CC\062C\0627\062F \06A9\0646')
,p_button_position=>'NEXT'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264438800507327500)
,p_name=>'P22_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
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
 p_id=>wwv_flow_imp.id(33264439268881327500)
,p_name=>'P22_STUDENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0646\0627\0645 \062F\0627\0646\0634\062C\0648')
,p_source=>'STUDENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STUDENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    first_name || '' '' || last_name || '' - '' || base_role AS display_value,',
'    id AS return_value',
'FROM ',
'    "User"',
'WHERE ',
unistr('    base_role = ''\062F\0627\0646\0634\062C\0648'''),
'ORDER BY ',
'    display_value;'))
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
 p_id=>wwv_flow_imp.id(33264439617174327501)
,p_name=>'P22_SUPERVISOR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0627\0633\062A\0627\062F \0631\0627\0647\0646\0645\0627')
,p_source=>'SUPERVISOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TEACHER_GROUPS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    u.first_name || '' '' || u.last_name || '' - '' || u.base_role || ',
'    CASE ',
unistr('        WHEN gm.is_head = ''Y'' THEN '' (\0645\062F\06CC\0631 \06AF\0631\0648\0647: '' || g.title || '')'''),
unistr('        ELSE '' (\0639\0636\0648 \06AF\0631\0648\0647: '' || g.title || '')'''),
'    END AS display_value,',
'    u.id AS return_value',
'FROM ',
'    "User" u',
'LEFT JOIN ',
'    "Group_Members" gm ON u.id = gm.user_id',
'LEFT JOIN ',
'    "Group" g ON gm.group_id = g.id',
'WHERE ',
unistr('    u.base_role = ''\0627\0633\062A\0627\062F'''),
'ORDER BY ',
'    display_value;',
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
 p_id=>wwv_flow_imp.id(33264440031177327501)
,p_name=>'P22_REVIEWER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\062F\0627\0648\0631')
,p_source=>'REVIEWER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TEACHER_GROUPS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    u.first_name || '' '' || u.last_name || '' - '' || u.base_role || ',
'    CASE ',
unistr('        WHEN gm.is_head = ''Y'' THEN '' (\0645\062F\06CC\0631 \06AF\0631\0648\0647: '' || g.title || '')'''),
unistr('        ELSE '' (\0639\0636\0648 \06AF\0631\0648\0647: '' || g.title || '')'''),
'    END AS display_value,',
'    u.id AS return_value',
'FROM ',
'    "User" u',
'LEFT JOIN ',
'    "Group_Members" gm ON u.id = gm.user_id',
'LEFT JOIN ',
'    "Group" g ON gm.group_id = g.id',
'WHERE ',
unistr('    u.base_role = ''\0627\0633\062A\0627\062F'''),
'ORDER BY ',
'    display_value;',
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
 p_id=>wwv_flow_imp.id(33264440409501327502)
,p_name=>'P22_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0639\0646\0648\0627\0646')
,p_source=>'TITLE'
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
 p_id=>wwv_flow_imp.id(33264440893810327502)
,p_name=>'P22_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\062A\0648\0636\06CC\062D\0627\062A')
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264441273896327502)
,p_name=>'P22_PERSIAN_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0639\0646\0648\0627\0646 \0641\0627\0631\0633\06CC')
,p_source=>'PERSIAN_TITLE'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264441606097327502)
,p_name=>'P22_ENGLISH_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0639\0646\0648\0627\0646 \0627\0646\06AF\0644\06CC\0633\06CC')
,p_source=>'ENGLISH_TITLE'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264442004240327503)
,p_name=>'P22_PROJECT_COURSE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\06A9\062F \062F\0631\0633 \067E\0631\0648\0698\0647')
,p_source=>'PROJECT_COURSE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264442438012327503)
,p_name=>'P22_PROJECT_COURSE_UNITS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0648\0627\062D\062F \062F\0631\0633 \067E\0631\0648\0698\0647')
,p_source=>'PROJECT_COURSE_UNITS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264442882116327503)
,p_name=>'P22_COLLABORATOR_STUDENT_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0634\0645\0627\0631\0647 \062F\0627\0646\0634\062C\0648\06CC \0647\0645\06A9\0627\0631')
,p_source=>'COLLABORATOR_STUDENT_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264443265501327504)
,p_name=>'P22_GRADE_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\062A\0627\0631\06CC\062E \0646\0645\0631\0647')
,p_source=>'GRADE_DATE'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264443603005327504)
,p_name=>'P22_PROPOSAL_SUBMISSION_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\062A\0627\0631\06CC\062E \062A\062D\0648\06CC\0644 \0641\0631\0645 \067E\06CC\0634\0646\0647\0627\062F \067E\0631\0648\0698\0647')
,p_source=>'PROPOSAL_SUBMISSION_DATE'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264444072251327504)
,p_name=>'P22_THESIS_SUBMISSION_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\062A\0627\0631\06CC\062E \062A\062D\0648\06CC\0644 \067E\0627\0628\0627\0646 \0646\0627\0645\0647')
,p_source=>'THESIS_SUBMISSION_DATE'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264444445269327505)
,p_name=>'P22_DEFENSE_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\062A\0627\0631\06CC\062E \062F\0641\0627\0639')
,p_source=>'DEFENSE_DATE'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264444827900327505)
,p_name=>'P22_APPROVAL_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\062A\0627\0631\06CC\062E \062A\0635\0648\06CC\0628')
,p_source=>'APPROVAL_DATE'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264445242655327505)
,p_name=>'P22_GRADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0646\0645\0631\0647')
,p_source=>'GRADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33264445669621327506)
,p_name=>'P22_STATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_item_source_plug_id=>wwv_flow_imp.id(33264438536432327499)
,p_prompt=>unistr('\0648\0636\0639\06CC\062A')
,p_source=>'STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT_STATE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26793795978817812386)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33264451959018327511)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33264451822642327511)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33264452728497327511)
,p_event_id=>wwv_flow_imp.id(33264451959018327511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33264454881351327513)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(33264438536432327499)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Submit/Update Project Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33264454881351327513
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33264455284451327513)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>33264455284451327513
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33264454425834327513)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(33264438536432327499)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Submit/Update Project Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33264454425834327513
);
wwv_flow_imp.component_end;
end;
/
