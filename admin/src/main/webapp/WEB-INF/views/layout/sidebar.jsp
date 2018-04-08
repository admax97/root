<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
    <!-- END SIDEBAR -->
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar navbar-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
        <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
        <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
        <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
            <li class="nav-item start active open">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-home"></i>
                    <span class="title">Dashboard</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item start active open">
                        <a href="index.html" class="nav-link ">
                            <i class="icon-bar-chart"></i>
                            <span class="title">Dashboard 1</span>
                            <span class="selected"></span>
                        </a>
                    </li>
                    <li class="nav-item start ">
                        <a href="dashboard_2.html" class="nav-link ">
                            <i class="icon-bulb"></i>
                            <span class="title">Dashboard 2</span>
                            <span class="badge badge-success">1</span>
                        </a>
                    </li>
                    <li class="nav-item start ">
                        <a href="dashboard_3.html" class="nav-link ">
                            <i class="icon-graph"></i>
                            <span class="title">Dashboard 3</span>
                            <span class="badge badge-danger">5</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-diamond"></i>
                    <span class="title">UI Features</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="ui_metronic_grid.html" class="nav-link ">
                            <span class="title">Metronic Grid System</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_colors.html" class="nav-link ">
                            <span class="title">Color Library</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_general.html" class="nav-link ">
                            <span class="title">General Components</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_buttons.html" class="nav-link ">
                            <span class="title">Buttons</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_buttons_spinner.html" class="nav-link ">
                            <span class="title">Spinner Buttons</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_confirmations.html" class="nav-link ">
                            <span class="title">Popover Confirmations</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_sweetalert.html" class="nav-link ">
                            <span class="title">Bootstrap Sweet Alerts</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_icons.html" class="nav-link ">
                            <span class="title">Font Icons</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_socicons.html" class="nav-link ">
                            <span class="title">Social Icons</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_typography.html" class="nav-link ">
                            <span class="title">Typography</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_tabs_accordions_navs.html" class="nav-link ">
                            <span class="title">Tabs, Accordions & Navs</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_timeline.html" class="nav-link ">
                            <span class="title">Timeline 1</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_timeline_2.html" class="nav-link ">
                            <span class="title">Timeline 2</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_timeline_horizontal.html" class="nav-link ">
                            <span class="title">Horizontal Timeline</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_tree.html" class="nav-link ">
                            <span class="title">Tree View</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="javascript:;" class="nav-link nav-toggle">
                            <span class="title">Page Progress Bar</span>
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li class="nav-item ">
                                <a href="ui_page_progress_style_1.html" class="nav-link "> Flash </a>
                            </li>
                            <li class="nav-item ">
                                <a href="ui_page_progress_style_2.html" class="nav-link "> Big Counter </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_blockui.html" class="nav-link ">
                            <span class="title">Block UI</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_bootstrap_growl.html" class="nav-link ">
                            <span class="title">Bootstrap Growl Notifications</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_notific8.html" class="nav-link ">
                            <span class="title">Notific8 Notifications</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_toastr.html" class="nav-link ">
                            <span class="title">Toastr Notifications</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_bootbox.html" class="nav-link ">
                            <span class="title">Bootbox Dialogs</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_alerts_api.html" class="nav-link ">
                            <span class="title">Metronic Alerts API</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_session_timeout.html" class="nav-link ">
                            <span class="title">Session Timeout</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_idle_timeout.html" class="nav-link ">
                            <span class="title">User Idle Timeout</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_modals.html" class="nav-link ">
                            <span class="title">Modals</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_extended_modals.html" class="nav-link ">
                            <span class="title">Extended Modals</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_tiles.html" class="nav-link ">
                            <span class="title">Tiles</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_datepaginator.html" class="nav-link ">
                            <span class="title">Date Paginator</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_nestable.html" class="nav-link ">
                            <span class="title">Nestable List</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-puzzle"></i>
                    <span class="title">Components</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="components_date_time_pickers.html" class="nav-link ">
                            <span class="title">Date & Time Pickers</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_color_pickers.html" class="nav-link ">
                            <span class="title">Color Pickers</span>
                            <span class="badge badge-danger">2</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_select2.html" class="nav-link ">
                            <span class="title">Select2 Dropdowns</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_select.html" class="nav-link ">
                            <span class="title">Bootstrap Select</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_multi_select.html" class="nav-link ">
                            <span class="title">Bootstrap Multiple Select</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_multiselect_dropdown.html" class="nav-link ">
                            <span class="title">Bootstrap Multiselect Dropdowns</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_select_splitter.html" class="nav-link ">
                            <span class="title">Select Splitter</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_clipboard.html" class="nav-link ">
                            <span class="title">Clipboard</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_typeahead.html" class="nav-link ">
                            <span class="title">Typeahead Autocomplete</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_tagsinput.html" class="nav-link ">
                            <span class="title">Bootstrap Tagsinput</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_switch.html" class="nav-link ">
                            <span class="title">Bootstrap Switch</span>
                            <span class="badge badge-success">6</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_maxlength.html" class="nav-link ">
                            <span class="title">Bootstrap Maxlength</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_fileinput.html" class="nav-link ">
                            <span class="title">Bootstrap File Input</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_touchspin.html" class="nav-link ">
                            <span class="title">Bootstrap Touchspin</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_form_tools.html" class="nav-link ">
                            <span class="title">Form Widgets & Tools</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_context_menu.html" class="nav-link ">
                            <span class="title">Context Menu</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_editors.html" class="nav-link ">
                            <span class="title">Markdown & WYSIWYG Editors</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_code_editors.html" class="nav-link ">
                            <span class="title">Code Editors</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_ion_sliders.html" class="nav-link ">
                            <span class="title">Ion Range Sliders</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_noui_sliders.html" class="nav-link ">
                            <span class="title">NoUI Range Sliders</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_knob_dials.html" class="nav-link ">
                            <span class="title">Knob Circle Dials</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-settings"></i>
                    <span class="title">Form Stuff</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="form_controls.html" class="nav-link ">
                                        <span class="title">Bootstrap Form
                                            <br>Controls</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_controls_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Controls</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_validation.html" class="nav-link ">
                            <span class="title">Form Validation</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_validation_states_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Validation States</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_validation_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Validation</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_layouts.html" class="nav-link ">
                            <span class="title">Form Layouts</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_repeater.html" class="nav-link ">
                            <span class="title">Form Repeater</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_input_mask.html" class="nav-link ">
                            <span class="title">Form Input Mask</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_editable.html" class="nav-link ">
                            <span class="title">Form X-editable</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_wizard.html" class="nav-link ">
                            <span class="title">Form Wizard</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_icheck.html" class="nav-link ">
                            <span class="title">iCheck Controls</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_image_crop.html" class="nav-link ">
                            <span class="title">Image Cropping</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_fileupload.html" class="nav-link ">
                            <span class="title">Multiple File Upload</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_dropzone.html" class="nav-link ">
                            <span class="title">Dropzone File Upload</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-social-dribbble"></i>
                    <span class="title">General</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="page_general_about.html" class="nav-link ">
                            <i class="icon-info"></i>
                            <span class="title">About</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_contact.html" class="nav-link ">
                            <i class="icon-call-end"></i>
                            <span class="title">Contact</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="javascript:;" class="nav-link nav-toggle">
                            <i class="icon-notebook"></i>
                            <span class="title">Portfolio</span>
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li class="nav-item ">
                                <a href="page_general_portfolio_1.html" class="nav-link "> Portfolio 1 </a>
                            </li>
                            <li class="nav-item ">
                                <a href="page_general_portfolio_2.html" class="nav-link "> Portfolio 2 </a>
                            </li>
                            <li class="nav-item ">
                                <a href="page_general_portfolio_3.html" class="nav-link "> Portfolio 3 </a>
                            </li>
                            <li class="nav-item ">
                                <a href="page_general_portfolio_4.html" class="nav-link "> Portfolio 4 </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item  ">
                        <a href="javascript:;" class="nav-link nav-toggle">
                            <i class="icon-magnifier"></i>
                            <span class="title">Search</span>
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li class="nav-item ">
                                <a href="page_general_search.html" class="nav-link "> Search 1 </a>
                            </li>
                            <li class="nav-item ">
                                <a href="page_general_search_2.html" class="nav-link "> Search 2 </a>
                            </li>
                            <li class="nav-item ">
                                <a href="page_general_search_3.html" class="nav-link "> Search 3 </a>
                            </li>
                            <li class="nav-item ">
                                <a href="page_general_search_4.html" class="nav-link "> Search 4 </a>
                            </li>
                            <li class="nav-item ">
                                <a href="page_general_search_5.html" class="nav-link "> Search 5 </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_pricing.html" class="nav-link ">
                            <i class="icon-tag"></i>
                            <span class="title">Pricing</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_pricing_2.html" class="nav-link ">
                            <i class="icon-tag"></i>
                            <span class="title">Pricing 2</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_faq.html" class="nav-link ">
                            <i class="icon-wrench"></i>
                            <span class="title">FAQ</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_blog.html" class="nav-link ">
                            <i class="icon-pencil"></i>
                            <span class="title">Blog</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_blog_post.html" class="nav-link ">
                            <i class="icon-note"></i>
                            <span class="title">Blog Post</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_invoice.html" class="nav-link ">
                            <i class="icon-envelope"></i>
                            <span class="title">Invoice</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_general_invoice_2.html" class="nav-link ">
                            <i class="icon-envelope"></i>
                            <span class="title">Invoice 2</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-settings"></i>
                    <span class="title">System</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="page_cookie_consent_1.html" class="nav-link ">
                            <span class="title">Cookie Consent 1</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_cookie_consent_2.html" class="nav-link ">
                            <span class="title">Cookie Consent 2</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_system_coming_soon.html" class="nav-link " target="_blank">
                            <span class="title">Coming Soon</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_system_404_1.html" class="nav-link ">
                            <span class="title">404 Page 1</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_system_404_2.html" class="nav-link " target="_blank">
                            <span class="title">404 Page 2</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_system_404_3.html" class="nav-link " target="_blank">
                            <span class="title">404 Page 3</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_system_500_1.html" class="nav-link ">
                            <span class="title">500 Page 1</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="page_system_500_2.html" class="nav-link " target="_blank">
                            <span class="title">500 Page 2</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-folder"></i>
                    <span class="title">Multi Level Menu</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item">
                        <a href="javascript:;" class="nav-link nav-toggle">
                            <i class="icon-settings"></i> Item 1
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li class="nav-item">
                                <a href="?p=dashboard-2" target="_blank" class="nav-link">
                                    <i class="icon-user"></i> Arrow Toggle
                                    <span class="arrow nav-toggle"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="icon-power"></i> Sample Link 1</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="icon-paper-plane"></i> Sample Link 1</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="icon-star"></i> Sample Link 1</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="icon-camera"></i> Sample Link 1</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="icon-link"></i> Sample Link 2</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="icon-pointer"></i> Sample Link 3</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="?p=dashboard-2" target="_blank" class="nav-link">
                            <i class="icon-globe"></i> Arrow Toggle
                            <span class="arrow nav-toggle"></span>
                        </a>
                        <ul class="sub-menu">
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="icon-tag"></i> Sample Link 1</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="icon-pencil"></i> Sample Link 1</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="icon-graph"></i> Sample Link 1</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="icon-bar-chart"></i> Item 3 </a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
</div>
<!-- END SIDEBAR -->
<script src="${ctx}/static/html/assets/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
<script>
    var ctx ='${ctx}';
    var url = window.location.href.replace("http://","");
	var selected = "main_index";
    if(url.indexOf("main/index") > 0){
        selected = "main_index";
    }else if(url.indexOf("user/list") > 0){
        selected = "user_list";
    }else if(url.indexOf("order/list") > 0){
        selected = "order_list";
    }else if(url.indexOf("mafuro/list") > 0){
        selected = "mafuro_list";
    }else if(url.indexOf("info/list") > 0){
        selected = "info_list";
    }else if(url.indexOf("feedback/list") > 0){
        selected = "feedback_list";
    }
    if(selected.length > 0){
        //$("#"+selected).attr("class","selected");
        $("#"+selected).attr("class","start active open");
    }
</script>