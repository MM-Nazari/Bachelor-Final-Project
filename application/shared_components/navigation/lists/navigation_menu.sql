prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26793621837990812306)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15570387544156
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26794325206285812522)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\062E\0627\0646\0647')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32464327235537740555)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('\062F\0631\06CC\0627\0641\062A \0641\0627\06CC\0644')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32864866327247358979)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('\067E\0631\0648\0698\0647\200C\0647\0627\06CC \0645\0646')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33176123387599565962)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('\0646\0642\0634 \067E\0631\0648\0698\0647')
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_security_scheme=>wwv_flow_imp.id(32924474565630119820)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17,18'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33185147508765418345)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('\0641\0627\06CC\0644')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19,20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33264455811276327514)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>unistr('\067E\0631\0648\0698\0647')
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_security_scheme=>wwv_flow_imp.id(32924474565630119820)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21,22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33959299114267271842)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('\062F\0631\062E\0648\0627\0633\062A')
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36400091998525735644)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>unistr('\0632\0645\0627\0646\200C\0628\0646\062F\06CC')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_security_scheme=>wwv_flow_imp.id(32924474565630119820)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp.component_end;
end;
/
