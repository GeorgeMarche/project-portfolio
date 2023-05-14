<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
	<title>Please login or register</title>
	<link rel="shortcut icon" id="favicon" href="https://backoffice.webandcloud.com/uploads/company/favicon.ico">
<link rel="apple-touch-icon”" id="favicon-apple-touch-icon" href="https://backoffice.webandcloud.com/uploads/company/favicon.ico">
<link rel="stylesheet" type="text/css" id="reset-css" href="https://backoffice.webandcloud.com/assets/css/reset.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="bootstrap-css" href="https://backoffice.webandcloud.com/assets/plugins/bootstrap/css/bootstrap.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="roboto-css" href="https://backoffice.webandcloud.com/assets/plugins/roboto/roboto.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="datatables-css" href="https://backoffice.webandcloud.com/assets/plugins/datatables/datatables.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="fontawesome-css" href="https://backoffice.webandcloud.com/assets/plugins/font-awesome/css/font-awesome.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="datetimepicker-css" href="https://backoffice.webandcloud.com/assets/plugins/datetimepicker/jquery.datetimepicker.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="bootstrap-select-css" href="https://backoffice.webandcloud.com/assets/plugins/bootstrap-select/css/bootstrap-select.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="lightbox-css" href="https://backoffice.webandcloud.com/assets/plugins/lightbox/css/lightbox.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="colorpicker-css" href="https://backoffice.webandcloud.com/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="bootstrap-overrides-css" href="https://backoffice.webandcloud.com/assets/css/bs-overides.min.css?v=2.7.0">
<link rel="stylesheet" type="text/css" id="theme-css" href="https://backoffice.webandcloud.com/assets/themes/perfex/css/style.min.css?v=2.7.0">
	<script src="https://backoffice.webandcloud.com/assets/plugins/jquery/jquery.min.js"></script>
	    <script>
        if (typeof (jQuery) === 'undefined' && !window.deferAfterjQueryLoaded) {
            window.deferAfterjQueryLoaded = [];
            Object.defineProperty(window, "$", {
                set: function (value) {
                    window.setTimeout(function () {
                        $.each(window.deferAfterjQueryLoaded, function (index, fn) {
                            fn();
                        });
                    }, 0);
                    Object.defineProperty(window, "$", {
                        value: value
                    });
                },
                configurable: true
            });
        }

        var csrfData = {"formatted":{"csrf_token_name":"3d538c9616aec06baf7b32d86cde3349"},"token_name":"csrf_token_name","hash":"3d538c9616aec06baf7b32d86cde3349"};

        if (typeof(jQuery) == 'undefined') {
            window.deferAfterjQueryLoaded.push(function () {
                csrf_jquery_ajax_setup();
            });
            window.addEventListener('load',function(){
                csrf_jquery_ajax_setup();
            }, true);
        } else {
            csrf_jquery_ajax_setup();
        }

        function csrf_jquery_ajax_setup() {
            $.ajaxSetup({
                data: csrfData.formatted
            });

            $(document).ajaxError(function( event, request, settings ) {
                if(request.status === 419) {
                    alert_float('warning', 'Page expired, refresh the page make an action.')
                }
            });
        }
 </script>
 <style class="custom_style_links-hover-focus">
a:hover,a:focus{
color:#fc0733;
}
</style>
<style class="custom_style_table-headings">
table.dataTable thead tr>th, .table.dataTable>thead:first-child>tr:first-child>th{
color:#f70716;
}
</style>
<style class="custom_style_table-items-heading">
.table.items thead{
background:#16a6f7;
}
</style>
<style class="custom_style_tabs-bg">
.nav-tabs{
background:#f5fafc;
}
</style>
<style class="custom_style_tabs-active-border">
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover, .nav-tabs>li>a:focus, .nav-tabs>li>a:hover{
border-bottom-color:#f71156;
}
</style>
<style class="custom_style_btn-default">
.btn-default{
background-color:#1564d9;
}

                        .btn-default:focus,.btn-default.focus,.btn-default:hover,.btn-default:active,
                        .btn-default.active,
                        .open > .dropdown-toggle.btn-default,.btn-default:active:hover,
                        .btn-default.active:hover,
                        .open > .dropdown-toggle.btn-default:hover,
                        .btn-default:active:focus,
                        .btn-default.active:focus,
                        .open > .dropdown-toggle.btn-default:focus,
                        .btn-default:active.focus,
                        .btn-default.active.focus,
                        .open > .dropdown-toggle.btn-default.focus,
                        .btn-default:active,
                        .btn-default.active,
                        .open > .dropdown-toggle.btn-default{background-color:#0032a7;color:#fff;border-color:#0032a7}
                        .btn-default.disabled,
                        .btn-default[disabled],
                        fieldset[disabled] .btn-default,
                        .btn-default.disabled:hover,
                        .btn-default[disabled]:hover,
                        fieldset[disabled] .btn-default:hover,
                        .btn-default.disabled:focus,
                        .btn-default[disabled]:focus,
                        fieldset[disabled] .btn-default:focus,
                        .btn-default.disabled.focus,
                        .btn-default[disabled].focus,
                        fieldset[disabled] .btn-default.focus,
                        .btn-default.disabled:active,
                        .btn-default[disabled]:active,
                        fieldset[disabled] .btn-default:active,
                        .btn-default.disabled.active,
                        .btn-default[disabled].active,
                        fieldset[disabled] .btn-default.active {
                            background-color: #4796ff;color:#fff;border-color:#4796ff;}.btn-default {
border-color:#1564d9;
}
</style>
<style class="custom_style_btn-info">
.btn-info{
background-color:#16a6f7;
}

                        .btn-info:focus,.btn-info.focus,.btn-info:hover,.btn-info:active,
                        .btn-info.active,
                        .open > .dropdown-toggle.btn-info,.btn-info:active:hover,
                        .btn-info.active:hover,
                        .open > .dropdown-toggle.btn-info:hover,
                        .btn-info:active:focus,
                        .btn-info.active:focus,
                        .open > .dropdown-toggle.btn-info:focus,
                        .btn-info:active.focus,
                        .btn-info.active.focus,
                        .open > .dropdown-toggle.btn-info.focus,
                        .btn-info:active,
                        .btn-info.active,
                        .open > .dropdown-toggle.btn-info{background-color:#0074c5;color:#fff;border-color:#0074c5}
                        .btn-info.disabled,
                        .btn-info[disabled],
                        fieldset[disabled] .btn-info,
                        .btn-info.disabled:hover,
                        .btn-info[disabled]:hover,
                        fieldset[disabled] .btn-info:hover,
                        .btn-info.disabled:focus,
                        .btn-info[disabled]:focus,
                        fieldset[disabled] .btn-info:focus,
                        .btn-info.disabled.focus,
                        .btn-info[disabled].focus,
                        fieldset[disabled] .btn-info.focus,
                        .btn-info.disabled:active,
                        .btn-info[disabled]:active,
                        fieldset[disabled] .btn-info:active,
                        .btn-info.disabled.active,
                        .btn-info[disabled].active,
                        fieldset[disabled] .btn-info.active {
                            background-color: #48d8ff;color:#fff;border-color:#48d8ff;}.btn-info {
border-color:#16a6f7;
}
</style>
<style class="custom_style_customers-navigation">
.customers .navbar-default{
background:#16a6f7;
}
</style>
<style class="custom_style_customers-navigation-links">
.customers .navbar-default .navbar-nav>li>a{
color:#080000;
}
</style>
<style class="custom_style_modal-heading">
.modal-header{
background:#16a6f7;
}
</style>
    <script>
        function custom_fields_hyperlink(){
         var cf_hyperlink = $('body').find('.cf-hyperlink');
         if(cf_hyperlink.length){
             $.each(cf_hyperlink,function(){
                var cfh_wrapper = $(this);
                var cfh_field_to = cfh_wrapper.attr('data-fieldto');
                var cfh_field_id = cfh_wrapper.attr('data-field-id');
                var textEl = $('body').find('#custom_fields_'+cfh_field_to+'_'+cfh_field_id+'_popover');
                var hiddenField = $("#custom_fields\\\["+cfh_field_to+"\\\]\\\["+cfh_field_id+"\\\]");
                var cfh_value = cfh_wrapper.attr('data-value');
                hiddenField.val(cfh_value);

                if($(hiddenField.val()).html() != ''){
                    textEl.html($(hiddenField.val()).html());
                }
                var cfh_field_name = cfh_wrapper.attr('data-field-name');
                textEl.popover({
                    html: true,
                    trigger: "manual",
                    placement: "top",
                    title:cfh_field_name,
                    content:function(){
                        return $(cfh_popover_templates[cfh_field_id]).html();
                    }
                }).on("click", function(e){
                    var $popup = $(this);
                    $popup.popover("toggle");
                    var titleField = $("#custom_fields_"+cfh_field_to+"_"+cfh_field_id+"_title");
                    var urlField = $("#custom_fields_"+cfh_field_to+"_"+cfh_field_id+"_link");
                    var ttl = $(hiddenField.val()).html();
                    var cfUrl = $(hiddenField.val()).attr("href");
                    if(cfUrl){
                        $('#cf_hyperlink_open_'+cfh_field_id).attr('href',(cfUrl.indexOf('://') === -1 ? 'http://' + cfUrl : cfUrl));
                    }
                    titleField.val(ttl);
                    urlField.val(cfUrl);
                    $("#custom_fields_"+cfh_field_to+"_"+cfh_field_id+"_btn-save").click(function(){
                        hiddenField.val((urlField.val() != '' ? '<a href="'+urlField.val()+'" target="_blank">' + titleField.val() + '</a>' : ''));
                        textEl.html(titleField.val() == "" ? "Click here to add link" : titleField.val());
                        $popup.popover("toggle");
                    });
                    $("#custom_fields_"+cfh_field_to+"_"+cfh_field_id+"_btn-cancel").click(function(){
                        if(urlField.val() == ''){
                            hiddenField.val('');
                        }
                        $popup.popover("toggle");
                    });
                });
            });
         }
     }
 </script>
     <script>
        
        var site_url = 'https://backoffice.webandcloud.com/',
        app = {},
        cfh_popover_templates  = {};

        app.isRTL = 'false';
        app.is_mobile = '';
        app.months_json = '["January","February","March","April","May","June","July","August","September","October","November","December"]';

        app.browser = "";
        app.max_php_ini_upload_size_bytes = "20971520";
        app.locale = "en";

        app.options = {
            calendar_events_limit: "4",
            calendar_first_day: "1",
            tables_pagination_limit: "25",
            enable_google_picker: "0",
            google_client_id: "",
            google_api: "",
            default_view_calendar: "month",
            timezone: "America/Manaus",
            allowed_files: ".gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xls,.mp4,.html,.csv",
            date_format: "d-m-Y",
            time_format: "24",
        };

        app.lang = {
            file_exceeds_maxfile_size_in_form: "The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form" + ' (20 MB)',
            file_exceeds_max_filesize: "The uploaded file exceeds the upload_max_filesize directive in php.ini" + ' (20 MB)',
            validation_extension_not_allowed: "File extension not allowed",
            sign_document_validation: "Please sign the document.",
            dt_length_menu_all: "All",
            drop_files_here_to_upload: "Drop files here to upload",
            browser_not_support_drag_and_drop: "Your browser does not support drag'n'drop file uploads",
            confirm_action_prompt: "Are you sure you want to perform this action?",
            datatables: {"emptyTable":"No entries found","info":"Showing _START_ to _END_ of _TOTAL_ entries","infoEmpty":"Showing 0 to 0 of 0 entries","infoFiltered":"(filtered from _MAX_ total entries)","lengthMenu":"_MENU_","loadingRecords":"Loading...","processing":"<div class=\"dt-loader\"><\/div>","search":"<div class=\"input-group\"><span class=\"input-group-addon\"><span class=\"fa fa-search\"><\/span><\/span>","searchPlaceholder":"Search...","zeroRecords":"No matching records found","paginate":{"first":"First","last":"Last","next":"Next","previous":"Previous"},"aria":{"sortAscending":" activate to sort column ascending","sortDescending":" activate to sort column descending"}},
            discussions_lang: {"discussion_add_comment":"Add comment","discussion_newest":"Newest","discussion_oldest":"Oldest","discussion_attachments":"Attachments","discussion_send":"Send","discussion_reply":"Answer","discussion_edit":"Edit","discussion_edited":"Modified","discussion_you":"You","discussion_save":"Save","discussion_delete":"Delete","discussion_view_all_replies":"Show all replies","discussion_hide_replies":"Hide replies","discussion_no_comments":"No comments","discussion_no_attachments":"No attachments","discussion_attachments_drop":"Drag and drop to upload file"},
        };
        window.addEventListener('load',function(){
            custom_fields_hyperlink();
        });
    </script>
        <script>
        /**
         * @deprecated 2.3.2
         * Do not use any of these below as will be removed in future updates.
         */
        var isRTL = 'false';

        var calendar_events_limit = "4";
        var maximum_allowed_ticket_attachments = "";

        var max_php_ini_upload_size_bytes  = "20971520";

        var file_exceeds_maxfile_size_in_form = "The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form" + ' (20 MB)';
        var file_exceeds_max_filesize = "The uploaded file exceeds the upload_max_filesize directive in php.ini" + ' (20 MB)';

        var validation_extension_not_allowed = "File extension not allowed";
        var sign_document_validation = "Please sign the document.";
        var dt_length_menu_all = "All";

        var drop_files_here_to_upload = "Drop files here to upload";
        var browser_not_support_drag_and_drop = "Your browser does not support drag'n'drop file uploads";
        var remove_file = "Remove file";
        var tables_pagination_limit = "25";
        var enable_google_picker = "0";
        var google_client_id = "";
        var google_api = "";
        var acceptable_mimes = ".gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xls,.mp4,.html,.csv, image/gif, image/png, image/jpeg, image/jpeg, application/pdf, application/msword, text/plain, application/vnd.openxmlformats-officedocument.wordprocessingml.document, application/vnd.ms-excel, application/x-zip, application/x-rar, application/vnd.ms-excel, video/mp4, text/html, text/x-comma-separated-values";
        var date_format = "d-m-Y";
        var time_format = "24";
        var default_view_calendar = "month";
        var dt_lang = {"emptyTable":"No entries found","info":"Showing _START_ to _END_ of _TOTAL_ entries","infoEmpty":"Showing 0 to 0 of 0 entries","infoFiltered":"(filtered from _MAX_ total entries)","lengthMenu":"_MENU_","loadingRecords":"Loading...","processing":"<div class=\"dt-loader\"><\/div>","search":"<div class=\"input-group\"><span class=\"input-group-addon\"><span class=\"fa fa-search\"><\/span><\/span>","searchPlaceholder":"Search...","zeroRecords":"No matching records found","paginate":{"first":"First","last":"Last","next":"Next","previous":"Previous"},"aria":{"sortAscending":" activate to sort column ascending","sortDescending":" activate to sort column descending"}};
        var discussions_lang = {"discussion_add_comment":"Add comment","discussion_newest":"Newest","discussion_oldest":"Oldest","discussion_attachments":"Attachments","discussion_send":"Send","discussion_reply":"Answer","discussion_edit":"Edit","discussion_edited":"Modified","discussion_you":"You","discussion_save":"Save","discussion_delete":"Delete","discussion_view_all_replies":"Show all replies","discussion_hide_replies":"Hide replies","discussion_no_comments":"No comments","discussion_no_attachments":"No attachments","discussion_attachments_drop":"Drag and drop to upload file"};
        var confirm_action_prompt = "Are you sure you want to perform this action?";
        var cf_translate_input_link_tip = "Click here to add link";

        var locale = 'en';
        var timezone = "America/Manaus";
        var allowed_files = ".gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xls,.mp4,.html,.csv";
        var calendar_first_day = '1';
        var months_json = '["January","February","March","April","May","June","July","August","September","October","November","December"]';
    </script>
        </head>
<body class="customers  customers_login" >
	<nav class="navbar navbar-default header">
   <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#theme-navbar-collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
         </button>
         <a href="https://backoffice.webandcloud.com/" class="logo img-responsive navbar-brand logo">
        <img src="https://backoffice.webandcloud.com/uploads/company/logo.png" class="img-responsive" alt="Web &amp; Cloud LLC">
        </a>      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="theme-navbar-collapse">
         <ul class="nav navbar-nav navbar-right">
                                       <li class="customers-nav-item-knowledge-base"
                  >
                  <a href="https://backoffice.webandcloud.com/knowledge-base"
                     >
                     Knowledge Base                  </a>
               </li>
                           <li class="customers-nav-item-register"
                  >
                  <a href="https://backoffice.webandcloud.com/authentication/register"
                     >
                     Register                  </a>
               </li>
                           <li class="customers-nav-item-login"
                  >
                  <a href="https://backoffice.webandcloud.com/authentication/login"
                     >
                     Login                  </a>
               </li>
                                                         </ul>
      </div>
      <!-- /.navbar-collapse -->
   </div>
   <!-- /.container-fluid -->
</nav>
<div id="wrapper">
   <div id="content">
      <div class="container">
         <div class="row">
                     </div>
      </div>
            <div class="container">
                  <div class="row">
                        <div class="mtop40">
   <div class="col-md-4 col-md-offset-4 text-center">
      <h1 class="text-uppercase mbot20 login-heading">
         Please login or register      </h1>
   </div>
   <div class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">
      <form action="https://backoffice.webandcloud.com/authentication/login" class="login-form" method="post" accept-charset="utf-8">
                              <input type="hidden" name="csrf_token_name" value="3d538c9616aec06baf7b32d86cde3349" />
            <div class="panel_s">
         <div class="panel-body">
                           <div class="form-group select-placeholder">
                  <label for="language" class="control-label">Language                  </label>
                  <select name="language" id="language" class="form-control selectpicker" onchange="change_contact_language(this)" data-none-selected-text="Nothing selected" data-live-search="true">
                                                                  <option value="portuguese" >
                           Portuguese                        </option>
                                             <option value="slovak" >
                           Slovak                        </option>
                                             <option value="ukrainian" >
                           Ukrainian                        </option>
                                             <option value="japanese" >
                           Japanese                        </option>
                                             <option value="turkish" >
                           Turkish                        </option>
                                             <option value="portuguese_br" >
                           Portuguese_br                        </option>
                                             <option value="dutch" >
                           Dutch                        </option>
                                             <option value="spanish" >
                           Spanish                        </option>
                                             <option value="czech" >
                           Czech                        </option>
                                             <option value="italian" >
                           Italian                        </option>
                                             <option value="romanian" >
                           Romanian                        </option>
                                             <option value="english" selected>
                           English                        </option>
                                             <option value="bulgarian" >
                           Bulgarian                        </option>
                                             <option value="russian" >
                           Russian                        </option>
                                             <option value="vietnamese" >
                           Vietnamese                        </option>
                                             <option value="french" >
                           French                        </option>
                                             <option value="german" >
                           German                        </option>
                                             <option value="catalan" >
                           Catalan                        </option>
                                             <option value="indonesia" >
                           Indonesia                        </option>
                                             <option value="swedish" >
                           Swedish                        </option>
                                             <option value="greek" >
                           Greek                        </option>
                                             <option value="chinese" >
                           Chinese                        </option>
                                             <option value="polish" >
                           Polish                        </option>
                                             <option value="persian" >
                           Persian                        </option>
                                       </select>
               </div>
                        <div class="form-group">
               <label for="email">Email Address</label>
               <input type="text" autofocus="true" class="form-control" name="email" id="email">
                           </div>
            <div class="form-group">
               <label for="password">Password</label>
               <input type="password" class="form-control" name="password" id="password">
                           </div>
                        <div class="checkbox">
               <input type="checkbox" name="remember" id="remember">
               <label for="remember">
                  Remember me               </label>
            </div>

            <div class="form-group">
               <button type="submit" class="btn btn-info btn-block">Login</button>
                                 <a href="https://backoffice.webandcloud.com/authentication/register" class="btn btn-success btn-block">Register                  </a>
                           </div>
            <a href="https://backoffice.webandcloud.com/authentication/forgot_password">Forgot Password?</a>
                        </form>         </div>
      </div>
   </div>
</div>
         </div>
      </div>
   </div>
   <div class="pusher"></div>
<footer class="navbar-fixed-bottom footer">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<span class="copyright-footer">2020 Copyright Web & Cloud LLC</span>
											</div>
		</div>
	</div>
</footer>
</div>
<script type="text/javascript" id="bootstrap-js" src="https://backoffice.webandcloud.com/assets/plugins/bootstrap/js/bootstrap.min.js?v=2.7.0"></script>
<script type="text/javascript" id="datatables-js" src="https://backoffice.webandcloud.com/assets/plugins/datatables/datatables.min.js?v=2.7.0"></script>
<script type="text/javascript" id="jquery-validation-js" src="https://backoffice.webandcloud.com/assets/plugins/jquery-validation/jquery.validate.min.js?v=2.7.0"></script>
<script type="text/javascript" id="bootstrap-select-js" src="https://backoffice.webandcloud.com/assets/builds/bootstrap-select.min.js?v=2.7.0"></script>
<script type="text/javascript" id="datetimepicker-js" src="https://backoffice.webandcloud.com/assets/plugins/datetimepicker/jquery.datetimepicker.full.min.js?v=2.7.0"></script>
<script type="text/javascript" id="chart-js" src="https://backoffice.webandcloud.com/assets/plugins/Chart.js/Chart.min.js?v=2.7.0"></script>
<script type="text/javascript" id="colorpicker-js" src="https://backoffice.webandcloud.com/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js?v=2.7.0"></script>
<script type="text/javascript" id="lightbox-js" src="https://backoffice.webandcloud.com/assets/plugins/lightbox/js/lightbox.min.js?v=2.7.0"></script>
<script type="text/javascript" id="common-js" src="https://backoffice.webandcloud.com/assets/builds/common.js?v=2.7.0"></script>
<script type="text/javascript" id="theme-global-js" src="https://backoffice.webandcloud.com/assets/themes/perfex/js/global.min.js?v=2.7.0"></script>
</body>
</html>
