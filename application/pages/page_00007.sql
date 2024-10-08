prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Download Proposal'
,p_alias=>'DOWNLOAD-PROPOSAL'
,p_step_title=>unistr('\0633\0627\0645\0627\0646\0647 \0645\062F\06CC\0631\06CC\062A \067E\0631\0648\0698\0647 \06A9\0627\0631\0634\0646\0627\0633\06CC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32464327605724740556)
,p_plug_name=>'Breadcrumb'
,p_title=>unistr('\062A\0627\0644\0628')
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32464328389121740558)
,p_plug_name=>'Download Proposal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793714942454812348)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH UserRole AS (',
'    SELECT base_role',
'    FROM "User"',
'    WHERE UPPER(username) = UPPER(:APP_USER)',
')',
'SELECT',
'    f.id,',
'    p.title,',
'   -- p.student_id,',
'    f.upload_date,',
'    f.upload_date_farsi,',
'    f.type,',
'    ft.file_type,',
'    f.file_data,',
'    f.file_name,',
'    f.mime_type,',
'    f.file_charset,',
'    sys.dbms_lob.getlength(f.file_data) AS file_size,',
'    sys.dbms_lob.getlength(f.file_data) AS download',
'FROM',
'    "files" f',
'JOIN',
'    "Project" p ON f.project_id = p.id -- Join to get the project title',
'JOIN',
'    file_types ft ON ft.id = f.type',
'JOIN',
'    UserRole ur ON (',
unistr('        (ur.base_role = ''\062F\0627\0646\0634\062C\0648'' AND p.student_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER)))'),
unistr('        OR (ur.base_role = ''\0627\0633\062A\0627\062F'' AND (p.supervisor_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER))'),
'        OR p.reviewer_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER))))',
unistr('        OR (ur.base_role = ''\0622\0645\0648\0632\0634'')'),
'    )',
'ORDER BY',
'    f.upload_date DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Download Proposal'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(32464328438772740558)
,p_name=>'Download Proposal'
,p_max_row_count_message=>unistr('\062D\062F\0627\06A9\062B\0631 \062A\0639\062F\0627\062F \0631\062F\06CC\0641\200C\0647\0627 \0628\0631\0627\06CC \0627\06CC\0646 \06AF\0632\0627\0631\0634 #MAX_ROW_COUNT# \0631\062F\06CC\0641 \0627\0633\062A. \0644\0637\0641\0627\064B \06CC\06A9 \0641\06CC\0644\062A\0631 \0627\0639\0645\0627\0644 \06A9\0646\06CC\062F \062A\0627 \062A\0639\062F\0627\062F \0631\06A9\0648\0631\062F\0647\0627\06CC \062C\0633\062A\062C\0648\06CC \0634\0645\0627 \06A9\0627\0647\0634 \06CC\0627\0628\062F.')
,p_no_data_found_message=>unistr('\062F\0627\062F\0647 \0627\06CC \06CC\0627\0641\062A \0646\0634\062F')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NAZARIMOHAMMADMEHDI6@GMAIL.COM'
,p_internal_uid=>32464328438772740558
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32263372683345061340)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>unistr('\0634\0646\0627\0633\0647')
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32263373136576061345)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>60
,p_column_identifier=>'V'
,p_column_label=>'File Charset'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775176827119888711)
,p_db_column_name=>'UPLOAD_DATE'
,p_display_order=>80
,p_column_identifier=>'AG'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0628\0627\0631\06AF\0630\0627\0631\06CC')
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775177006105888713)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>100
,p_column_identifier=>'AI'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775177155588888714)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>110
,p_column_identifier=>'AJ'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775177218963888715)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>120
,p_column_identifier=>'AK'
,p_column_label=>unistr('\0633\0627\06CC\0632 \0641\0627\06CC\0644 (\0628\0627\06CC\062A)')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775177594462888718)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>130
,p_column_identifier=>'AN'
,p_column_label=>unistr('\062F\0627\0646\0644\0648\062F')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:files:FILE_DATA:ID::MIME_TYPE:FILE_NAME:UPLOAD_DATE:FILE_CHARSET:attachment::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775177774977888720)
,p_db_column_name=>'FILE_DATA'
,p_display_order=>150
,p_column_identifier=>'AP'
,p_column_label=>'File Data'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775179036532888733)
,p_db_column_name=>'TYPE'
,p_display_order=>160
,p_column_identifier=>'AQ'
,p_column_label=>unistr('\0646\0648\0639')
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33189263735030713002)
,p_db_column_name=>'TITLE'
,p_display_order=>170
,p_column_identifier=>'AR'
,p_column_label=>unistr('\0639\0646\0648\0627\0646')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667140880649406)
,p_db_column_name=>'UPLOAD_DATE_FARSI'
,p_display_order=>180
,p_column_identifier=>'AS'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0628\0627\0631\06AF\0630\0627\0631\06CC \0641\0627\06CC\0644')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775179287449888735)
,p_db_column_name=>'FILE_TYPE'
,p_display_order=>190
,p_column_identifier=>'AT'
,p_column_label=>unistr('\0646\0648\0639 \0641\0627\06CC\0644')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32465333851980781163)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'324653339'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'UPLOAD_DATE_FARSI:DOWNLOAD:FILE_SIZE:TITLE:FILE_TYPE:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32263370331238061317)
,p_name=>'P7_FILE_ID2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32464328389121740558)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32263371491497061328)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_blob        BLOB;',
'    l_mime_type   VARCHAR2(255);',
'    l_file_name   VARCHAR2(255);',
'BEGIN',
'    -- Fetch the BLOB, MIME type, and file name from the database',
'    SELECT file_data, mime_type, file_name',
'    INTO l_blob, l_mime_type, l_file_name',
'    FROM "files"',
'    WHERE id = :P7_FILE_ID2;',
'',
'    -- Set HTTP headers for file download',
'    owa_util.mime_header(l_mime_type, FALSE);',
'    htp.p(''Content-length: '' || dbms_lob.getlength(l_blob));',
'    htp.p(''Content-Disposition: attachment; filename="'' || l_file_name || ''"'');',
'    owa_util.http_header_close;',
'',
'    -- Write the BLOB content to the response',
'    wpg_docload.download_file(l_blob);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        htp.p(''No data found.'');',
'    WHEN OTHERS THEN',
'        htp.p(''Error: '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32263371491497061328
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32263370236200061316)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download Proposal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_blob        BLOB;',
'    l_blob_length NUMBER;',
'    l_mime_type   VARCHAR2(255);',
'    l_file_name   VARCHAR2(255);',
'BEGIN',
'    -- Fetch the BLOB and MIME type from the database',
'    SELECT file_data, type, ''proposal.pdf''',
'    INTO l_blob, l_mime_type, l_file_name',
'    FROM "files"',
'    WHERE id = :P7_FILE_ID2; -- Ensure this matches the page item',
'',
'    -- Set HTTP headers for file download',
'    owa_util.mime_header(l_mime_type, FALSE);',
'    htp.p(''Content-length: '' || dbms_lob.getlength(l_blob));',
'    htp.p(''Content-Disposition: attachment; filename="'' || l_file_name || ''"'');',
'    owa_util.http_header_close;',
'',
'    -- Write the BLOB content to the response',
'    wpg_docload.download_file(l_blob);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        htp.p(''No data found.'');',
'    WHEN OTHERS THEN',
'        htp.p(''Error: '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32263370236200061316
);
wwv_flow_imp.component_end;
end;
/
