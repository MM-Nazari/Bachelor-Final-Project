prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 88841
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>11253583894392651551
,p_default_application_id=>88841
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTMMNAZARI'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(26794291583893812496)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(26793647914692812319)
,p_default_dialog_template=>wwv_flow_imp.id(26793642717617812317)
,p_error_template=>wwv_flow_imp.id(26793632768885812312)
,p_printer_friendly_template=>wwv_flow_imp.id(26793647914692812319)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(26793632768885812312)
,p_default_button_template=>wwv_flow_imp.id(26793798496170812388)
,p_default_region_template=>wwv_flow_imp.id(26793724766923812353)
,p_default_chart_template=>wwv_flow_imp.id(26793724766923812353)
,p_default_form_template=>wwv_flow_imp.id(26793724766923812353)
,p_default_reportr_template=>wwv_flow_imp.id(26793724766923812353)
,p_default_tabform_template=>wwv_flow_imp.id(26793724766923812353)
,p_default_wizard_template=>wwv_flow_imp.id(26793724766923812353)
,p_default_menur_template=>wwv_flow_imp.id(26793737189533812359)
,p_default_listr_template=>wwv_flow_imp.id(26793724766923812353)
,p_default_irr_template=>wwv_flow_imp.id(26793714942454812348)
,p_default_report_template=>wwv_flow_imp.id(26793763297027812371)
,p_default_label_template=>wwv_flow_imp.id(26793795978817812386)
,p_default_menu_template=>wwv_flow_imp.id(26793800090339812388)
,p_default_calendar_template=>wwv_flow_imp.id(26794200126125812389)
,p_default_list_template=>wwv_flow_imp.id(26793779834380812378)
,p_default_nav_list_template=>wwv_flow_imp.id(26793791672722812384)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(26793791672722812384)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(26793786268837812381)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(26793660857978812325)
,p_default_dialogr_template=>wwv_flow_imp.id(26793658015504812324)
,p_default_option_label=>wwv_flow_imp.id(26793795978817812386)
,p_default_required_label=>wwv_flow_imp.id(26793797291612812387)
,p_default_navbar_list_template=>wwv_flow_imp.id(26793785837540812381)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
