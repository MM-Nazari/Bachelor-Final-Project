prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_name=>'Submit/Update Request Grid'
,p_alias=>'SUBMIT-UPDATE-REQUEST-GRID'
,p_step_title=>unistr('\0633\0627\0645\0627\0646\0647 \0645\062F\06CC\0631\06CC\062A \067E\0631\0648\0698\0647 \06A9\0627\0631\0634\0646\0627\0633\06CC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33959299574399271843)
,p_plug_name=>'Submit/Update Request Grid'
,p_title=>unistr('\0644\06CC\0633\062A \062F\0631\062E\0648\0627\0633\062A\200C\0647\0627')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(26793724766923812353)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    r.id,',
'    r.project_id,',
'    r.sender_id,',
'    r.receiver_id,',
'    r.type,',
'    r.state, ',
'    r.description,',
'    r.send_request_date,',
'    CASE ',
'        WHEN r.state = 1 THEN 1',
'        WHEN r.state = 2 THEN 2',
'        WHEN r.state = 3 THEN 3',
'        WHEN r.state = 4 THEN 4',
'        ELSE 5 -- Fallback for unexpected states',
'    END AS state_priority2',
'FROM ',
'    "Request" r',
'WHERE ',
'    r.sender_id = (',
'        SELECT u.id ',
'        FROM "User" u ',
'        WHERE UPPER(u.username) = UPPER(:APP_USER)',
'    ) ',
'    OR r.receiver_id = (',
'        SELECT u.id ',
'        FROM "User" u ',
'        WHERE UPPER(u.username) = UPPER(:APP_USER)',
'    );',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\0644\06CC\0633\062A \062F\0631\062E\0648\0627\0633\062A\200C\0647\0627')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33189265126055713016)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33189265220683713017)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33189266040883713025)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\0627\0637\0644\0627\0639\0627\062A \0627\0636\0627\0641\0647')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33189266195604713026)
,p_name=>'SEND_REQUEST_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEND_REQUEST_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\062A\0627\0631\06CC\062E \0627\0631\0633\0627\0644 \062F\0631\062E\0648\0627\0633\062A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33189267569926713040)
,p_name=>'STATE_PRIORITY2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_PRIORITY2'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\0627\0648\0644\0648\06CC\062A \062F\0631\062E\0648\0627\0633\062A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33959300841764271844)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'.center-text {     text-align: center; }'
,p_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP,14:P14_ID:\&ID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33959301893056271845)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33959302831879271846)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\0639\0646\0648\0627\0646 \067E\0631\0648\0698\0647')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(32978169503530364203)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33959303844250271846)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\0648\0636\0639\06CC\062A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(33240636275538202312)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33959304860773271847)
,p_name=>'SENDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SENDER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\0646\0627\0645 \0641\0631\0633\062A\0646\062F\0647')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(33973775931592195875)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33959305809705271848)
,p_name=>'RECEIVER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\0646\0627\0645 \06AF\06CC\0631\0646\062F\0647')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(33973775931592195875)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33959306872429271848)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\0646\0648\0639 \062F\0631\062E\0648\0627\0633\062A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(32422316701209593905)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(33959300028389271843)
,p_internal_uid=>33959300028389271843
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>unistr('\062F\0627\062F\0647 \0627\06CC \06CC\0627\0641\062A \0646\0634\062F.')
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(33959300401321271844)
,p_interactive_grid_id=>wwv_flow_imp.id(33959300028389271843)
,p_static_id=>'339593005'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(33959300683425271844)
,p_report_id=>wwv_flow_imp.id(33959300401321271844)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33959301234396271844)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(33959300841764271844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33959302236542271845)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(33959301893056271845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33959303276757271846)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(33959302831879271846)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33959304294286271847)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(33959303844250271846)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>274
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33959305228058271847)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(33959304860773271847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33959306240294271848)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(33959305809705271848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33959307260680271849)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(33959306872429271848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35283079045346685385)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(33189265126055713016)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35496295692434499538)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(33189266040883713025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35496296582686499542)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(33189266195604713026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39107328412590020799)
,p_view_id=>wwv_flow_imp.id(33959300683425271844)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(33189267569926713040)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33959312438882271854)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793737189533812359)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(26793621344885812306)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(26793800090339812388)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33959310876784271851)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33959299574399271843)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26793798496170812388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0636\0627\0641\0647 \06A9\0631\062F\0646')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:14::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33959311111190271853)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(33959299574399271843)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33959311629652271853)
,p_event_id=>wwv_flow_imp.id(33959311111190271853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33959299574399271843)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33189265338228713018)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(33959299574399271843)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Submit/Update Request Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33189265338228713018
);
wwv_flow_imp.component_end;
end;
/
