prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'My Projects'
,p_alias=>'MY-PROJECTS'
,p_step_title=>unistr('\0633\0627\0645\0627\0646\0647 \0645\062F\06CC\0631\06CC\062A \067E\0631\0648\0698\0647 \06A9\0627\0631\0634\0646\0627\0633\06CC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32864866791353358979)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793737189533812359)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26793621344885812306)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(26793800090339812388)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32864867420160358982)
,p_plug_name=>'My Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793714942454812348)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH UserRole AS (',
'    SELECT base_role',
'    FROM "User"',
'    WHERE UPPER(username) = UPPER(:APP_USER)',
'),',
'RankedFiles AS (',
'    SELECT',
'        p.id,',
'        p.title,',
'        p.student_id,',
'        p.supervisor_id,',
'        p.reviewer_id,',
'        p.persian_title,',
'        p.english_title,',
'        p.description,',
'        p.project_course_code,',
'        p.project_course_units,',
'        p.grade_date,',
'        p.proposal_submission_date,',
'        p.thesis_submission_date,',
'        p.defense_date,',
'        p.approval_date,',
'        p.grade,',
'        f.id AS file_id,',
'        f.project_id,',
'        f.upload_date,',
'        f.upload_date_farsi,',
'        f.type,',
'       -- COALESCE(ft.file_type, ''Unknown'') AS file_type,  -- Handle NULL file_type',
'        ft.file_type,',
'        f.file_data,',
'        f.file_name,',
'        f.mime_type,',
'        f.file_charset,',
'        u.first_name || '' '' || u.last_name AS student_name, ',
'        su.first_name || '' '' || su.last_name AS supervisor_name,   -- Supervisor Name',
'        ru.first_name || '' '' || ru.last_name AS reviewer_name,     -- Reviewer Name',
'        ROW_NUMBER() OVER (PARTITION BY f.project_id ORDER BY f.type DESC) AS rn',
'    FROM',
'        "Project" p',
'    LEFT JOIN',
'        "files" f ON p.id = f.project_id',
'    LEFT JOIN ',
'        file_types ft ON ft.id = f.type',
'    LEFT JOIN',
'        "User" u ON p.student_id = u.id ',
'    LEFT JOIN',
'        "User" su ON p.supervisor_id = su.id  -- Join for supervisor name',
'    LEFT JOIN',
'        "User" ru ON p.reviewer_id = ru.id    -- Join for reviewer name',
'    WHERE',
'        (',
unistr('            (SELECT base_role FROM UserRole) = ''\0622\0645\0648\0632\0634'''),
'            OR p.student_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER))',
'            OR p.supervisor_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER))',
'            OR p.reviewer_id = (SELECT id FROM "User" WHERE UPPER(username) = UPPER(:APP_USER))',
'        )',
')',
'SELECT',
'    id,',
'    title,',
'    student_id,',
'    supervisor_id,',
'    reviewer_id,',
'    persian_title,',
'    english_title,',
'    description,',
'    project_course_code,',
'    project_course_units,',
'    grade_date,',
'    proposal_submission_date,',
'    thesis_submission_date,',
'    defense_date,',
'    approval_date,',
'    grade,',
'    file_id,',
'    project_id,',
'    upload_date,',
'    upload_date_farsi,',
'    type,',
'    file_type,',
'    file_data,',
'    file_name,',
'    mime_type,',
'    file_charset,',
'    student_name,',
'    supervisor_name,    -- Added supervisor name',
'    reviewer_name      -- Added reviewer name',
'FROM',
'    RankedFiles',
'WHERE',
'    rn = 1 -- This ensures only the record with the highest file type for each project is selected',
'ORDER BY',
'    title;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'My Projects'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(32864867556467358982)
,p_name=>'My Projects'
,p_max_row_count_message=>unistr('\062D\062F\0627\06A9\062B\0631 \062A\0639\062F\0627\062F \0631\062F\06CC\0641\200C\0647\0627 \0628\0631\0627\06CC \0627\06CC\0646 \06AF\0632\0627\0631\0634 #MAX_ROW_COUNT# \0631\062F\06CC\0641 \0627\0633\062A. \0644\0637\0641\0627\064B \06CC\06A9 \0641\06CC\0644\062A\0631 \0627\0639\0645\0627\0644 \06A9\0646\06CC\062F \062A\0627 \062A\0639\062F\0627\062F \0631\06A9\0648\0631\062F\0647\0627\06CC \062C\0633\062A\062C\0648\06CC \0634\0645\0627 \06A9\0627\0647\0634 \06CC\0627\0628\062F.')
,p_no_data_found_message=>unistr('\062F\0627\062F\0647 \0627\06CC \06CC\0627\0641\062A \0646\0634\062F.')
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
,p_internal_uid=>32864867556467358982
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864868267290358984)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('\0639\0646\0648\0627\0646 \067E\0631\0648\0698\0647')
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864868627056358985)
,p_db_column_name=>'TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\0639\0646\0648\0627\0646')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864869037487358986)
,p_db_column_name=>'PERSIAN_TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\0639\0646\0648\0627\0646 \0641\0627\0631\0633\06CC')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864869430703358986)
,p_db_column_name=>'ENGLISH_TITLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\0639\0646\0648\0627\0646 \0627\0646\06AF\0644\06CC\0633\06CC')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864869897094358986)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\062A\0648\0636\06CC\062D\0627\062A')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864870229211358986)
,p_db_column_name=>'PROJECT_COURSE_CODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\06A9\062F \062F\0631\0633 \067E\0631\0648\0698\0647')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864870654812358987)
,p_db_column_name=>'PROJECT_COURSE_UNITS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\0648\0627\062D\062F \062F\0631\0633 \067E\0631\0648\0698\0647')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864873079971358989)
,p_db_column_name=>'GRADE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('\0646\0645\0631\0647')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864873452188358989)
,p_db_column_name=>'FILE_ID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'File Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864873827047358989)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32864874298093358990)
,p_db_column_name=>'UPLOAD_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0622\067E\0644\0648\062F')
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775177833026888721)
,p_db_column_name=>'FILE_DATA'
,p_display_order=>27
,p_column_identifier=>'S'
,p_column_label=>'File Data'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775178131611888724)
,p_db_column_name=>'ID'
,p_display_order=>57
,p_column_identifier=>'V'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775178255807888725)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>67
,p_column_identifier=>'W'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775178397713888726)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>77
,p_column_identifier=>'X'
,p_column_label=>'File Charset'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33189263865288713003)
,p_db_column_name=>'TYPE'
,p_display_order=>87
,p_column_identifier=>'Y'
,p_column_label=>unistr('\0646\0648\0639')
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667233605649407)
,p_db_column_name=>'GRADE_DATE'
,p_display_order=>97
,p_column_identifier=>'Z'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0646\0645\0631\0647')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667303838649408)
,p_db_column_name=>'PROPOSAL_SUBMISSION_DATE'
,p_display_order=>107
,p_column_identifier=>'AA'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \062A\062D\0648\06CC\0644 \067E\06CC\0634\0646\0647\0627\062F \067E\0631\0648\0698\0647')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667496715649409)
,p_db_column_name=>'THESIS_SUBMISSION_DATE'
,p_display_order=>117
,p_column_identifier=>'AB'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \062A\062D\0648\06CC\0644 \067E\0627\06CC\0627\0646 \0646\0627\0645\0647')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667565975649410)
,p_db_column_name=>'DEFENSE_DATE'
,p_display_order=>127
,p_column_identifier=>'AC'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \062F\0641\0627\0639')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667648619649411)
,p_db_column_name=>'APPROVAL_DATE'
,p_display_order=>137
,p_column_identifier=>'AD'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \062A\0635\0648\06CC\0628')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667704077649412)
,p_db_column_name=>'UPLOAD_DATE_FARSI'
,p_display_order=>147
,p_column_identifier=>'AE'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0628\0627\0631\06AF\0630\0627\0631\06CC \0641\0627\06CC\0644')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35287667902350649414)
,p_db_column_name=>'STUDENT_ID'
,p_display_order=>157
,p_column_identifier=>'AF'
,p_column_label=>unistr('\0646\0627\0645 \062F\0627\0646\0634\062C\0648')
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32775179365021888736)
,p_db_column_name=>'FILE_TYPE'
,p_display_order=>167
,p_column_identifier=>'AG'
,p_column_label=>unistr('\0646\0648\0639 \0641\0627\06CC\0644')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33189266322491713028)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>177
,p_column_identifier=>'AH'
,p_column_label=>unistr('\0646\0627\0645 \062F\0627\0646\0634\062C\0648')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33189266640685713031)
,p_db_column_name=>'SUPERVISOR_ID'
,p_display_order=>187
,p_column_identifier=>'AI'
,p_column_label=>'Supervisor Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33189266752558713032)
,p_db_column_name=>'REVIEWER_ID'
,p_display_order=>197
,p_column_identifier=>'AJ'
,p_column_label=>'Reviewer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33189266858726713033)
,p_db_column_name=>'SUPERVISOR_NAME'
,p_display_order=>207
,p_column_identifier=>'AK'
,p_column_label=>unistr('\0627\0633\062A\0627\062F \0631\0627\0647\0646\0645\0627')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33189266970572713034)
,p_db_column_name=>'REVIEWER_NAME'
,p_display_order=>217
,p_column_identifier=>'AL'
,p_column_label=>unistr('\062F\0627\0648\0631')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32865174116310104381)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'328651742'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TITLE:REVIEWER_NAME:STUDENT_NAME:FILE_TYPE:SUPERVISOR_NAME:UPLOAD_DATE_FARSI:'
);
wwv_flow_imp.component_end;
end;
/
