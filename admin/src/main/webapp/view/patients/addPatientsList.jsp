<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>add Patient</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet" />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="../assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="<%=request.getContextPath()%>/main" class="app-brand-link">
              <span class="app-brand-text demo menu-text fw-bolder">WCC Admin</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>
		<!----------------- side bar  ---------------------->
          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <li class="menu-item">
              <a href="<%=request.getContextPath()%>/main" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Dashboard</div>
              </a>
            </li>
			<li class="menu-header small text-uppercase">
              <span class="menu-header-text">Items</span>
            </li>
            <!----------------- menu items -------------------->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Layouts">Menu Items</div>
              </a>				
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="<%=request.getContextPath()%>/menu/list" class="menu-link">
                    <div data-i18n="Without menu">List</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=request.getContextPath()%>/menu/add" class="menu-link">
                    <div data-i18n="Without navbar">add List</div>
                  </a>
                </li>
              </ul>
            </li>
			<!----------------- patient -------------------->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">Patient</span>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">Patients</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="<%=request.getContextPath()%>/patients/list" class="menu-link">
                    <div data-i18n="Account">List</div>
                  </a>
                </li>
                <li class="menu-item active">
                  <a href="<%=request.getContextPath()%>/patients/add" class="menu-link">
                    <div data-i18n="Notifications">add List</div>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Orders -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Orders</span></li>
            <!--------- Orders -------->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="User interface">Orders</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="<%=request.getContextPath()%>/orders/list" class="menu-link">
                    <div data-i18n="Accordion">List</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=request.getContextPath()%>/orders/add" class="menu-link">
                    <div data-i18n="Alerts">add List</div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar">
                      <img src="../assets/img/avatars/profile.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="../assets/img/avatars/profile.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">★name</span>
                            <small class="text-muted">★Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-basic.html">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
			<div class="container-xxl flex-grow-1 container-p-y">
                 <div class="card col-md-12 mb-4">
                     <h3 class="card-header" >Create a new patient</h3>
                          <div class="card-body demo-vertical-spacing demo-only-element">
                             <div class="row">
                                <div class="col-md">
                                   <div class="my-4">
                                   	  <label class="form-label">First Name</label>
                                      <input type="text" class="form-control"
                                         placeholder="First name *" />
                                   </div>
                                   <div class="my-4">
                                   	  <label class="form-label">ID</label>
                                      <input type="text" class="form-control" placeholder="ID *" />
                                   </div>
                                   <div class="my-4">
                                   	  <label class="form-label">Med rec #</label>
                                      <input type="text" class="form-control"
                                         placeholder="Med rec #" />
                                   </div>
                                   <div class="my-4">
                                      <label class="form-label">Address</label>
                                      <input type="text" class="form-control"
                                         placeholder="Address *" />
                                   </div>
                                </div>
                                <div class="col-md">
                                   <div class="my-4">
                                      <label class="form-label">Last Name</label>
                                      <input type="text" class="form-control"
                                         placeholder="Last name *" />
                                   </div>
                                   <div class="my-4">
                                      <label class="form-label">Date of birth</label>
                                      <input class="form-control" type="date"
                                         id="html5-date-input">
                                   </div>
                                   <div class="my-4">
                                      <label class="form-label">Expiration Date</label>
                                      <input class="form-control" type="date"
                                         id="html5-date-input">
                                   </div>
                                   <div class="my-4">
                                      <label class="form-label">City</label>
                                      <input type="text" class="form-control"
                                         placeholder="City *" />
                                   </div>
                                </div>
                                <div class="col-md">
                                   <div class="my-4">
                                      <label class="form-label">Expiration Date</label>
                                      <input class="form-control" type="date"
                                         id="html5-date-input">
                                   </div>
                                   <div class="my-4">
                                      <label class="form-label">&nbsp;</label>
                                      <div style="padding: 0.48rem 0.875rem; line-height: 1.53;">&nbsp;</div>
                                   </div>
                                   <div class="my-4">
                                      <label class="form-label">&nbsp;</label>
                                      <div style="padding: 0.48rem 0.875rem; line-height: 1.53;">&nbsp;</div>
                                   </div>
                                   <div class="my-4 d-flex">
                                      <div class="col-6">
                                         <label class="form-label">State</label>
                                         <input type="text" class="form-control"
                                            placeholder="State *" />
                                      </div>
                                      <div class="col-6">
                                         <label class="form-label" style="margin-left: 1rem">ZIP Code</label>
                                         <input type="text" class="form-control"
                                            placeholder="ZIP Code *" style="margin-left: 1rem" />
                                      </div>
                                   </div>
                                </div>
                             </div>
                          </div>
                          <div class="d-flex justify-content-between align-items-center p-sm-3">
                          	<div>
                          	&nbsp;
                          	</div>
							<div>
								<button type="button" class="btn"
								   style="border: 1px solid #696cff; color: #696cff;"
									onmouseover="this.style.backgroundColor='#696cff';this.style.color='#fff'"
									onmouseout="this.style.backgroundColor='#f5f5f9';this.style.color='#696cff'">Cancel</button>
								<button type="button" class="btn"
								   style="border: 1px solid #696cff; color: #fff; background-color: #696cff;margin-left: 10px;"
									onmouseover="this.style.backgroundColor='#f5f5f9';this.style.color='#696cff'"
									onmouseout="this.style.backgroundColor='#696cff';this.style.color='#fff'">Create</button>
							</div>
                      	 </div>
                   </div>
                 </div>
              </div>
         </div>
            <!-- / Content -->

          

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->


    <!-- Core JS -->
    <!-- build:js ../assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
