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

    <title>add Menu Items</title>

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
            <li class="menu-item active open">
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
                <li class="menu-item active">
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
                <li class="menu-item">
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
            	<div>
                  <h3>Create a new menu item</h3>
                  <div class="nav-align-top mb-4">
                    <ul class="nav nav-pills mb-3" role="tablist">
                      <li class="nav-item">
                        <button  type="button" class="nav-link active" role="tab" data-bs-toggle="tab"
                          data-bs-target="#navs-pills-top-brand" aria-controls="navs-pills-top-brand" aria-selected="true">
                          Branded Product
                        </button>
                      </li>
                      <li class="nav-item">
                        <button  type="button" class="nav-link" role="tab" data-bs-toggle="tab"
                          data-bs-target="#navs-pills-top-custom" aria-controls="navs-pills-top-custom" aria-selected="false">
                          Custom Product
                        </button>
                      </li>
                    </ul>
                    <div class="tab-content">
                    <!-- ---------branded product------------- -->
                      <div class="tab-pane fade show active" id="navs-pills-top-brand" role="tabpanel">
                        <div class="mb-3">
	                        <label for="BrandDataList" class="form-label">Brand</label>
	                        <input class="form-control" list="Brand_datalistOptions" id="BrandDataList" placeholder="Brand."/>
	                        <datalist id="Brand_datalistOptions"><!-- ^brand list -->
	                          <option value="San Francisco"></option>
	                          <option value="New York"></option>
	                          <option value="Seattle"></option>
	                          <option value="Los Angeles"></option>
	                          <option value="Chicago"></option>
	                        </datalist>
                    	</div>
                    	<div class="mb-3">
	                        <label for="ProductDataList" class="form-label">Product</label>
	                        <input class="form-control" list="Product_datalistOptions" id="ProductDataList" placeholder="Product."/>
	                        <datalist id="Product_datalistOptions"><!-- ^Product list -->
	                          <option value="San Francisco"></option>
	                          <option value="New York"></option>
	                          <option value="Seattle"></option>
	                          <option value="Los Angeles"></option>
	                          <option value="Chicago"></option>
	                        </datalist>
                    	</div>
                       
                      </div>
                      <!-- -----------CustomProduct------------- -->
                      <div class="tab-pane fade" id="navs-pills-top-custom" role="tabpanel">
                        <div class="mb-3">
	                        <label for="CustomInput" class="form-label">Name</label>
	                        <input type="text" class="form-control" id="CustomInput" placeholder="Name" />
                     	</div>
                      	<div class="mb-3">
	                        <label for="CustomProductDecription" class="form-label">Description</label>
	                         <textarea class="form-control" id="CustomProductDecription" rows="4"></textarea>
                      	</div>
                      	<div class="mb-3">
	                        <label for="BrandCategory" class="form-label">Category</label>
	                         <input type="text" class="form-control" id="BrandCategory" placeholder="Category" />
                      	</div>
                      	<div class="row">
	               	  		<!-- --------------------Cannabinoids -------------------->
		               	  	<div class="card col-md-12 mb-4">
		           				<h5 class="card-header">Cannabinoids</h5>
		           				<div class="card-body demo-vertical-spacing demo-only-element">
		           					<div class="row">
		           						<div class="col-md">
		           							<div class="my-2">
						               	  		<label for="THC" class="form-label">THC %</label>
						                        <input type="text" class="form-control" id="THC" placeholder="THC %" />
						                    </div>
						                    <div class="my-2">
						                        <label for="mgTHC" class="form-label">THC milligrams</label>
						                        <input type="text" class="form-control" id="mgTHC" placeholder="THC milligrams" />
						                    </div>
				                        </div>
				                        <div class="col-md">
				                        	<div class="my-2">
						                        <label for="CBD" class="form-label">CBD %</label>
						                        <input type="text" class="form-control" id="CBD" placeholder="CBD %" />
					                        </div>
					                        <div class="my-2">
						                        <label for="mgCBD" class="form-label">CBD milligrams</label>
						                        <input type="text" class="form-control" id="mgCBD" placeholder="CBD milligrams" />
						                    </div>
				                        </div>
									</div>
		                        </div>
		               	  	</div>
		               	  	<!-- --------------------Discovery -------------------->
		               	  	<div class="card col-md-12 mb-4">
		           				<h5 class="card-header">Discovery</h5>
		           				<div class="card-body demo-vertical-spacing demo-only-element">
		           					<div class="mb-3">
				                        <label for="StainDataList" class="form-label">Stain</label>
				                        <input class="form-control" list="Stain_datalistOptions" id="StainDataList" placeholder="Stain."/>
				                        <datalist id="Stain_datalistOptions"><!-- ^Stain list -->
				                          <option value="San Francisco"></option>
				                          <option value="New York"></option>
				                          <option value="Seattle"></option>
				                          <option value="Los Angeles"></option>
				                          <option value="Chicago"></option>
				                        </datalist>
			                    	</div>
		                        </div>
		                        <h5 class="card-header">Genetis</h5>
		                        <div class="card-body demo-vertical-spacing demo-only-element">
		                        	<div class="row">
			                        	<div class="col-xl form-check">
			                   				<input name="Genetis" class="form-check-input" type="radio" value="indica" id="indica" checked>
			                  				<label class="form-check-label" for="radioIndica"> Indica </label>
			                  			</div>
			                  			<div class="col-xl form-check">
			                  				<input name="Genetis" class="form-check-input" type="radio" value="sativa" id="sativa" >
			                  				<label class="form-check-label" for="radioSativa"> Sativa </label>
			                  			</div>
			                  			<div class="col-xl form-check">
			                  				<input name="Genetis" class="form-check-input" type="radio" value="hybrid" id="hybrid" >
			                  				<label class="form-check-label" for="radioHybrid"> Hybrid </label>
			                 			</div>
		                 			</div>
	                 			</div>
		               	  	</div>
	               		  </div>
                      </div>
                    </div>  
               	  </div>
               	  <!-- ---------------------------pricing------------------ -->
               	  <div class="row">
               	 	<div class="card col-md-12 mb-4">
		           				<h5 class="card-header">Pricing</h5>
		                        <div class="card-body demo-vertical-spacing demo-only-element">
					                  <div class="nav-align-top mb-4">
					                    <ul class="nav nav-tabs" role="tablist">
					                      <li class="nav-item">
					                        <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" 
					                        	data-bs-target="#navs-top-weight" aria-controls="navs-top-weight" aria-selected="true">
					                          Price by weight
					                        </button>
					                      </li>
					                      <li class="nav-item">
					                        <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" data-bs-target="#navs-top-unit" 
					                        	aria-controls="navs-top-unit" aria-selected="false" >
					                          Price by unit
					                        </button>
					                      </li>
					                    </ul>
					                    <!-- ----------weight----------- -->
					                    <div class="tab-content">
					                      <div class="tab-pane fade show active" id="navs-top-weight" role="tabpanel">
										  	<div class="col-8">
						                      	<div class="row"><h6 class="col-3">Weight</h6><h6 class="col-3">Price</h6><h6 class="col-3">Cost</h6><h6 class="col-3">Count</h6></div>
						                      	<div class="input-group mb-4">
						                      		<span class="input-group-text col-3 bg-label-primary">1/2 gram</span>
							                        <input type="text" aria-label="g-half-price" class="form-control">
							                        <input type="text" aria-label="g-half-cost" class="form-control">
							                        <input type="text" aria-label="g-half-count" class="form-control">
						                        </div>
						                        <div class="input-group mb-4">
						                      		<span class="input-group-text col-3 bg-label-primary">1 gram</span>
							                        <input type="text" aria-label="g-1-price" class="form-control">
							                        <input type="text" aria-label="g-1-cost" class="form-control">
							                        <input type="text" aria-label="g-1-count" class="form-control">
						                        </div>
						                        <div class="input-group mb-4">
						                      		<span class="input-group-text col-3 bg-label-primary">2 gram</span>
							                        <input type="text" aria-label="g-2-price" class="form-control">
							                        <input type="text" aria-label="g-2-cost" class="form-control">
							                        <input type="text" aria-label="g-2-count" class="form-control">
						                        </div>
						                        <div class="input-group mb-4">
						                      		<span class="input-group-text col-3 bg-label-primary">1/8 ounce</span>
							                        <input type="text" aria-label="o-8-price" class="form-control">
							                        <input type="text" aria-label="o-8-cost" class="form-control">
							                        <input type="text" aria-label="o-8-count" class="form-control">
						                        </div>
						                        <div class="input-group mb-4">
						                      		<span class="input-group-text col-3 bg-label-primary">1/4 ounce</span>
							                        <input type="text" aria-label="o-4-price" class="form-control">
							                        <input type="text" aria-label="o-4-cost" class="form-control">
							                        <input type="text" aria-label="o-4-count" class="form-control">
						                        </div>
						                        <div class="input-group mb-4">
						                      		<span class="input-group-text col-3 bg-label-primary">1/2 ounce</span>
							                        <input type="text" aria-label="o-2-price" class="form-control">
							                        <input type="text" aria-label="o-2-cost" class="form-control">
							                        <input type="text" aria-label="o-2-count" class="form-control">
						                        </div>
						                        <div class="input-group mb-4">
						                      		<span class="input-group-text col-3 bg-label-primary">1 ounce</span>
							                        <input type="text" aria-label="o-1-price" class="form-control">
							                        <input type="text" aria-label="o-1-cost" class="form-control">
							                        <input type="text" aria-label="o-1-count" class="form-control">
						                        </div>
					                        </div>
					                      </div>
					                      <!-- ---------------unit--------------------- -->
					                      <div class="tab-pane fade" id="navs-top-unit" role="tabpanel">
						                      <div class="col-8">
						                      	<div class="row"><h6 class="col-3">Unit</h6><h6 class="col-3">Price</h6><h6 class="col-3">Cost</h6><h6 class="col-3">Count</h6></div>
						                      	<div class="input-group">
						                      		<span class="input-group-text col-3 bg-label-primary">1 unit</span>
							                        <input type="text" aria-label="u1-price" class="form-control">
							                        <input type="text" aria-label="u1-cost" class="form-control">
							                        <input type="text" aria-label="u1-count" class="form-control">
						                        </div>
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
