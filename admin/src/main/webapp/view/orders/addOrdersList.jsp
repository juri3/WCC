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

    <title>add Orders</title>

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
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    
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
            <li class="menu-item">
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
                <li class="menu-item ">
                  <a href="<%=request.getContextPath()%>/patients/add" class="menu-link">
                    <div data-i18n="Notifications">add List</div>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Orders -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Orders</span></li>
            <!--------- Orders -------->
            <li class="menu-item active open">
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
                <li class="menu-item active">
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
            	<h3>Create a new order</h3>
				<div class="row">
	                <!-- Patient Information -->
	                <div class="col-md-6">
	                  <div class="card mb-4">
	                    <h5 class="card-header">Patient Information</h5>
	
	                    <div class="card-body">
	                    	<div class="row mb-3">
	                      		<div class="my-4">
                                      <label class="form-label">Order Date</label>
                                      <input class="form-control" type="date"
                                         id="html5-date-input">
                                   </div>
	                     	</div>
	                      	<div class="row mb-3">
	                      		<div class="col-9">
	                      			<label for="PatientsDataList" class="form-label">Patient</label>
			                        <input class="form-control" list="Patients_datalistOptions" id="PatientsDataList" placeholder="Patient"/>
			                        <datalist id="Patients_datalistOptions"><!-- ^Product list -->
			                          <option value="San Francisco"></option>
			                          <option value="New York"></option>
			                          <option value="Seattle"></option>
			                          <option value="Los Angeles"></option>
			                          <option value="Chicago"></option>
			                        </datalist>
	                      		</div>
			                    <div class="col-3">
			                    	<label for="" class="form-label"></label>
			                    	<a href="<%=request.getContextPath()%>/patients/add" class="menu-link">
				              		<button type="button" class="btn rounded-pill btn-outline-primary mt-2">&nbsp; Add &nbsp;</button>
				              		</a>
		                        </div>
	                     	</div>
	                      	<div class="row mb-3">
		                        <div class="col-4">
	                      			<label for="CustomInput" class="form-label">Date of Birth</label>
	                        		<input type="text" class="form-control" id="CustomInput" placeholder="Date of Birth" />
	                      		</div>
			                    <div class="col-8">
			                    	<label for="CustomInput" class="form-label">Address</label>
	                        		<input type="text" class="form-control" id="CustomInput" placeholder="Address" />
	                        	</div>
	                      	</div>
	                    </div>
	                  </div>
	                  <div class="card mb-4">
	                    <h5 class="card-header">Payment Details</h5>
	                    <div class="card-body">
	                    	<div class="row mb-2">
	                      		<div class="mt-4 col-4">
                                      <h6>Subtotal</h6>
                                </div>
                                <div class="mt-4 col-4">
                                      <span id="paymentSub">-</span>
                                </div>
	                     	</div>
	                     	<div class="row mb-2">
	                      		<div class="col-4">
                                      <h6>Excise Tax</h6>
                                </div>
                                <div class="col-4">
                                      <span id="paymentExciseTax">-</span>
                                </div>
	                     	</div>
	                     	<div class="row mb-2">
	                      		<div class="col-4">
                                      <h6>City Tax</h6>
                                </div>
                                <div class="col-4">
                                      <span id="paymentCityTax">-</span>
                                </div>
	                     	</div>
	                     	<div class="row mb-2">
	                      		<div class="col-4">
                                      <h6>Sales Tax</h6>
                                </div>
                                <div class="col-4">
                                      <span id="paymentSalesTax">-</span>
                                </div>
	                     	</div>
	                     	<hr class="m-0">
	                     	<div class="row my-3">
	                      		<div class="col-4">
                                      <h6>Total</h6>
                                </div>
                                <div class="col-4">
                                      <span id="paymentTotals">-</span>
                                </div>
	                     	</div>
	                    </div>
	                  </div>
	                </div>
	                <!-- Items -->
	                <div class="col-md-6">
	                  <div class="card mb-4">
	                    <h5 class="card-header">Items</h5>
	                    <div class="card-body orderbox">
	                    	<div class="orderItem">
		                      	<div class="row mb-3">
		                      		<div class="col-9">
		                      			<label for="itemsDataList" class="form-label">Item Name</label>
				                        <input class="form-control" list="Items_datalistOptions" id="itemsDataList" placeholder="Item Name"/>
				                        <datalist id="Items_datalistOptions"><!-- ^Product list -->
				                          <option value="San Francisco"></option>
				                          <option value="New York"></option>
				                          <option value="Seattle"></option>
				                          <option value="Los Angeles"></option>
				                          <option value="Chicago"></option>
				                        </datalist>
		                      		</div>
				                    <div class="col-3">
				                    	<label for="itemWeightDataList" class="form-label">Weight</label>
				                        <input class="form-control" list="itemWeight_datalistOptions" id="itemWeightDataList" placeholder="Weight"/>
				                        <datalist id="itemWeight_datalistOptions"><!-- ^Product list -->
				                          <option value="San Francisco"></option>
				                          <option value="New York"></option>
				                          <option value="Seattle"></option>
				                          <option value="Los Angeles"></option>
				                          <option value="Chicago"></option>
				                        </datalist>
			                        </div>
		                     	</div>
		                      	<div class="row mb-3">
			                        <div class="col-4">
		                      			<label for="CustomInput" class="form-label">Quantity</label>
		                        		<input type="text" class="form-control" id="CustomInput" placeholder="Quantity" />
		                      		</div>
				                    <div class="col-4">
				                    	<label for="CustomInput" class="form-label">In stock</label>
		                        		<label for="CustomInput" class="form-label" id="itemsinfo"></label>
		                        	</div>
		                        	<div class="col-4">
			                        	<i class="removeorder bx bx-trash bx-sm me-1 mt-4"></i><!--REMOVE-->
		                        	</div>
	                      		</div>
	                      		<hr class="m-0 mb-3">
	                      	</div>
	                      	
	                      	
	                    </div>
	                    <div class="row mb-3">
	                      		<div class="col-3 mx-4">
		                        	<button type="button" class="btn btn-outline-primary" id="addorder" style="font-size:0.7rem">Add Item</button>
	                        	</div>
	                      	</div>
	                  </div>
	                </div>
	              </div>
	              <div class="d-flex justify-content-center">
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
	<script>
		$( document ).ready( function() {
			var cnt = 0;
			var ItemElement = $('.orderbox');
            $('#addorder').click(function() {
            	//alert(cnt+", "+oEl.find(".orderItem").length)
            	ItemElement.find(".orderItem").last().clone().appendTo(ItemElement);
            	var name = 'orderItem'+(++cnt);
            	ItemElement.find(".orderItem").last().attr('id', name);
            	var name1 = 'removeItem'+(cnt);
            	ItemElement.find(".orderItem").last().find("i").attr('id', name1);
            	return false;
            })
			$(document).on("click", ".removeorder", function(e) {
			
				e.preventDefault();
				
				if (ItemElement.find(".orderItem").length > 1) {
	            	var removeItem = $(this).attr('id').replace("removeItem","orderItem")
	                ItemElement.find("#"+removeItem).remove();
	                //--cnt;
	            } else {
	                alert('At least one menu is required.');
	            }
	            return false;
			
			});
            
        });
    </script>

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
