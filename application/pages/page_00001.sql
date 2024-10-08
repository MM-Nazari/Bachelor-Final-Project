prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>unistr('\0633\0627\0645\0627\0646\0647 \0645\062F\06CC\0631\06CC\062A \067E\0631\0648\0698\0647 \06A9\0627\0631\0634\0646\0627\0633\06CC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26794326111457812523)
,p_plug_name=>unistr('\062E\0627\0646\0647')
,p_title=>unistr('\062E\0627\0646\0647')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26793691307370812338)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#final-512.jpg'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32263368789057061301)
,p_plug_name=>'Welcome'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(26793724766923812353)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    @font-face {',
'        font-family: ''BNazanin'';',
'        src: url(''/path-to-font/BNazanin.woff'') format(''woff''),',
'             url(''/path-to-font/BNazanin.ttf'') format(''truetype''); /* Update with the correct path */',
'        font-weight: normal;',
'        font-style: normal;',
'    }',
'',
'    #welcome-message {',
'        background-color: #f4f4f4;',
'        padding: 15px;',
'        border-radius: 8px;',
'        text-align: center;',
'        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);',
'        font-family: ''BNazanin'', sans-serif;',
'    }',
'',
'    #greeting {',
'        color: #333;',
'        font-size: 24px;',
'        margin: 0;',
'        font-family: ''BNazanin'', sans-serif;',
'    }',
'</style>',
'',
'<div id="welcome-message">',
'    <h2 id="greeting">',
unistr('        \0628\0647 \0633\06CC\0633\062A\0645 \0645\062F\06CC\0631\06CC\062A \067E\0631\0648\0698\0647 \062E\0648\0634 \0622\0645\062F\06CC\062F\060C &P1_USER_LAST_NAME.'),
'    </h2>',
'</div>',
'',
'<script>',
'    document.addEventListener("DOMContentLoaded", function() {',
'        var currentHour = new Date().getHours();',
'        var greeting;',
'',
'        if (currentHour < 12) {',
unistr('            greeting = "\0635\0628\062D \0628\062E\06CC\0631";'),
'        } else if (currentHour < 18) {',
unistr('            greeting = "\0639\0635\0631 \0628\062E\06CC\0631";'),
'        } else {',
unistr('            greeting = "\0634\0628 \0628\062E\06CC\0631";'),
'        }',
'',
'        var firstname = "&P1_USER_FIRST_NAME.";',
'        var lastname = "&P1_USER_LAST_NAME.";',
'        //console.log("lastname:", lastname);',
'        document.getElementById("greeting").innerText = greeting + ", " + firstname + " " + lastname;',
'    });',
'</script>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11492869368981803325)
,p_name=>'P1_USER_FIRST_NAME'
,p_item_sequence=>10
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT first_name',
'FROM "User"',
'WHERE UPPER(username) = UPPER(:APP_USER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11492869509380803327)
,p_name=>'P1_USER_ID'
,p_item_sequence=>40
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id',
'FROM "User"',
'WHERE UPPER(username) = UPPER(:APP_USER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33189267245638713037)
,p_name=>'P1_USER_LAST_NAME'
,p_item_sequence=>20
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT last_name',
'FROM "User"',
'WHERE UPPER(username) = UPPER(:APP_USER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33189267344184713038)
,p_name=>'P1_USER_FULL_NAME'
,p_item_sequence=>30
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    first_name,',
'    last_name,',
'    CASE',
unistr('        WHEN base_role = ''\0627\0633\062A\0627\062F'' THEN ''\062F\06A9\062A\0631 '' || first_name || '' '' || last_name'),
'        ELSE first_name || '' '' || last_name',
'    END AS full_name',
'FROM "User"',
'WHERE UPPER(username) = UPPER(:APP_USER);'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
