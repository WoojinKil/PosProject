<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.wjkil.myapp.dto.*"%>

<%
	UserDto userDto = (UserDto) session.getAttribute("userDto");
	if(userDto !=null){
		System.out.println(userDto.getUserSeq());
	}

%>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>BoardFile</title>

<!-- Custom fonts for this template -->
<link href="/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">


<!-- JQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Alertify -->
<script
	src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css" />
<link rel="stylesheet" href="/resources/css/common.css">
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					SB Admin <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item"><a class="nav-link" href="index.html">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>Components</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Components:</h6>
						<a class="collapse-item" href="buttons.html">Buttons</a> <a
							class="collapse-item" href="cards.html">Cards</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a> <a
							class="collapse-item" href="utilities-border.html">Borders</a> <a
							class="collapse-item" href="utilities-animation.html">Animations</a>
						<a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Addons</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>Pages</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.html">Login</a> <a
							class="collapse-item" href="register.html">Register</a> <a
							class="collapse-item" href="forgot-password.html">Forgot
							Password</a>
						<div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a
							class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link"
				href="tables.html"> <i class="fas fa-fw fa-table"></i> <span>Tables</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler Â· 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun Â· 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog Â· 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie
									Luna</span> <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Tables</h1>
					<p class="mb-4">
						DataTables is a third party plugin that is used to generate the
						demo table below. For more information about DataTables, please
						visit the <a target="_blank" href="https://datatables.net">official
							DataTables documentation</a>.
					</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">게시판 테이블 예제</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">


								<form
									class="mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
									<div class="input-group">
										<input type="text" id ="inputSearchWord"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button" id="btnSearchWord">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>#</th>
											<th>아이디</th>
											<th>제목</th>
											<th>작성일자</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody id="boardTbody">
										<!-- <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr> -->


									</tbody>
								</table>




							</div>
						</div>
					</div>




					<div class="col-sm-12 col-md-12" id="paginationWrapper"></div>


					<button type="button" class="btn btn-primary"
						id="btnBoardInsertForm" data-toggle="modal" data-target="#myModal">글쓰기</button>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->


			<!-- mordal insert-->

			<div class="modal fade" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">

						<div class="modal-header">
							<h4 class="modal-title">Modal Heading</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>


						<div class="modal-body">
							<div class="row">
								<div class="col-xl-12 form-group">
									<input id="titleInsert" type="text" class="form-control"
										name="title" placeholder="제목">
								</div>

								<div class="col-xl-12 form-group">
									<textarea id="contentInsert" class="form-control" rows="5"
										name="title" placeholder="내용"></textarea>

								</div>

								<div class="col-xl-12 form-group">
									<div class="custom-control custom-checkbox small">
										<input type="checkbox" class="custom-control-input"
											id="chkFileUploadInsert"> <label
											class="custom-control-label" for="chkFileUploadInsert">파일추가
										</label>
									</div>
								</div>

								<div class="col-xl-12 form-group" style="display: none;"
									id="imgFileUploadInsertWrapper">
									<input type="file" id="inputFileUploadInsert">
									<div class="thumbnail-wrapper">
										<img id="imgFileUploadInsert">
									</div>
								</div>

							</div>
						</div>


						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
							<button id="btnBoardInsert" class="btn btn-primary btn-outline"
								data-dismiss="modal" type="button">등록</button>


						</div>
					</div>
				</div>
			</div>



			<!-- Modal detail-->
			<div class="modal fade" id="boardDetailModal" aria-hidden="false"
				aria-labelledby="boardDetailModalTitle" role="dialog" tabindex="-1">
				<div class="modal-dialog modal-simple">
					<form class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							<h4 class="modal-title" id="boardDetailModalTitle" id="">글
								상세</h4>
						</div>
						<div class="modal-body">

							<div class="example table-responsive">
								<table class="table table-hover">
									<tbody>
										<tr>
											<td>글번호</td>
											<td id="boardId">#</td>
										</tr>
										<tr>
											<td>제목</td>
											<td id="titleDetail">#</td>
										</tr>
										<tr>
											<td>내용</td>
											<td id="contentDetail">#</td>
										</tr>
										<tr>
											<td>작성자</td>
											<td id="userNameDetail">#</td>
										</tr>
										<tr>
											<td>작성일시</td>
											<td id="regDtDetail">#</td>
										</tr>
										<tr>
											<td>조회수</td>
											<td id="readCountDetail">#</td>
										</tr>
										<tr>
											<td>첨부파일</td>
											<td id="fileListDetail">#</td>
										</tr>

									</tbody>
								</table>
							</div>
							<button id="btnBoardUpdateForm"
								class="btn btn-sm btn-primary btn-outline" data-dismiss="modal"
								type="button" data-target="boardUpdate">글 수정하기</button>
							<button id="btnBoardDeleteConfirm"
								class="btn btn-sm btn-warning btn-outline" data-dismiss="modal"
								type="button">글 삭제하기</button>
							<button id="btnBoardCommentForm" class="btn btn-sm btn-info"
								type="button">덧글 쓰기</button>
						</div>
					</form>
				</div>
			</div>




			<!-- mordal update-->

			<div class="modal fade" id="boardUpdate">
				<div class="modal-dialog">
					<div class="modal-content">

						Modal Header
						<div class="modal-header">
							<h4 class="modal-title">Modal Heading</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						Modal body
						<div class="modal-body">
							<div class="row">
								<div class="col-xl-12 form-group">
									<input id="titleUpdate" type="text" class="form-control"
										name="title" placeholder="제목">
								</div>
								<div class="col-xl-12 form-group">
									<textarea id="contentUpdate" class="form-control" rows="5"
										name="title" placeholder="내용"></textarea>
								</div>

								<div class="col-xl-12 form-group">
									첨부파일 : <span id="fileListUpdate"></span>
								</div>
								<div class="col-xl-12 form-group">
									<div class="checkbox-custom checkbox-primary">
										<input type="checkbox" id="chkFileUploadUpdate" /> <label
											for="chkFileUploadUpdate">파일 변경</label>
									</div>
								</div>

								<div class="col-xl-12 form-group" style="display: none;"
									id="imgFileUploadUpdateWrapper">
									<input type="file" id="inputFileUploadUpdate">
									<div class="thumbnail-wrapper">
										<img id="imgFileUploadUpdate">
									</div>
								</div>


							</div>
						</div>

						Modal footer
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
							<button id="btnBoardUpdate" class="btn btn-primary btn-outline"
								data-dismiss="modal" type="button">수정</button>


						</div>
					</div>
				</div>
			</div>


			<!-- End Modal -->




		</div>
		<!-- End of Content Wrapper -->

	</div>


	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/resources/js/demo/datatables-demo.js"></script>



	<script src="/resources/js/util.js"></script>

	<script>
  
  

var LIST_ROW_COUNT = 10;   //limit
var OFFSET = 0;
var PAGE_COUNT_PER_BLOCK = 10;   // pagination link 갯수
var TOTAL_LIST_ITEM_COUNT = 0;
var CURRENT_PAGE_INDEX = 1;
var SEARCH_WORD = ""

  $(document).ready(function(){
	  boardList();
	  $("#btnBoardInsert").click(function(){
		 
		  if(validate()){

			  boardInsert();
			  boardList();
		  }
		  
	  });
	  
	  $("#btnBoardInsertForm").click(function(){
	         $("#titleInsert").val("");
	         $("#contentInsert").val("");
	         $("#chkFileUploadInsert").prop("checked", false);
	         $("#inputFileUploadInsert").val("");
	         $("#imgFileUploadInsert").removeAttr("src");
	         //$("#imgFileUploadInsert").attr("src", "");
	         $("#imgFileUploadInsertWrapper").hide();
	         
	         $("#boardInsertModal").modal("show");
	      });
	  
	  
	  $("#btnBoardUpdateForm").click(function(){
		  var boardId = $("#boardDetailModal").attr("data-boardId");
		  $("#boardUpdate").attr("data-boardId",boardId);
		  $("#titleUpdate").val($("#titleDetail").html());
		  $("#contentUpdate").val($("#contentDetail").html());
			
		  var fileName = $("#fileListDetail").find(".fileName").html();
	      $("#fileListUpdate").html( '<span class="fileName">' + fileName + '</span>');
		  
	      $("#chkFileUploadUpdate").prop("checked", false);
	      $("#inputFileUploadUpdate").val("");
	      $("#imgFileUploadUpdate").attr("src", "");
	    //$("#imgFileUploadUpdate").removeAttr("src");
	      $("#imgFileUploadUpdateWrapper").hide();
	      
		  $("#boardDetailModal").modal("hide");
		  $("#boardUpdate").modal("show");
			 
	  });
	  
	  $("#btnBoardUpdate").click(function(){
		  console.log("유효성 검사");
		  if(validate){
			  console.log("유효함, 수정시도");
			  boardUpdate();
			  boardList();
		  }
	  });
	  
	  $("#btnBoardDeleteConfirm").click(function(){
		  console.log("삭제시도");
		  alertify.confirm('wjkil','이 글을 삭제하시겠습니까?',
				  function(){
			  boardDelete();
		  },
		  function(){
			  console.log('cancel');
		  });
		  boardList();
	  });
	  
	  
	  $("#chkFileUploadInsert").change(function(){
		  	console.log("항목변경");
	         if( $(this).prop("checked")){
	            $("#imgFileUploadInsertWrapper").show();
	         }else{
	            $("#inputFileUploadInsert").val("");
	            $("#imgFileUploadInsert").attr("src", "");
	            $("#imgFileUploadInsertWrapper").hide();
	         }
	      });	
	  
	  $("#inputFileUploadInsert").change(function(e){

	         if( this.files && this.files[0] ){
	            var reader = new FileReader();
	            reader.onload = function(e){
	               $("#imgFileUploadInsert").attr("src", e.target.result);
	            }
	            reader.readAsDataURL(this.files[0]);
	         }
	      });
	  
	//Update
      $("#chkFileUploadUpdate").change(function(){
         if( $(this).prop("checked")){
            $("#imgFileUploadUpdateWrapper").show();
         }else{
            $("#inputFileUploadUpdate").val("");
            $("#imgFileUploadUpdate").attr("src", "");
            $("#imgFileUploadUpdateWrapper").hide();
         }
      });
      
      $("#inputFileUploadUpdate").change(function(e){

         if( this.files && this.files[0] ){
            var reader = new FileReader();
            reader.onload = function(e){
               $("#imgFileUploadUpdate").attr("src", e.target.result);
            }
            reader.readAsDataURL(this.files[0]);
         }
      });
	  
    //Search
      $("#btnSearchWord").click(function(e){
         var searchWord = $("#inputSearchWord").val();
         
         if( searchWord != "" ){
            SEARCH_WORD = searchWord;
         }else{
            SEARCH_WORD = "";
         }
         
         boardList();
      });
	  
  });



  function validate(){
      var isTitleValid = false;
      var isContentValid = false;
      
   
      var userTitleValue = $("#titleInsert").val();
      var userTitleLength = userTitleValue.length;
      
      if( userTitleLength > 0 ){
         isTitleValid = true;
      }
      
      var userContentValue = $("#contentInsert").val();
      var userContentLength = userContentValue.length;
      
      if( userContentLength > 0 ){
         isContentValid = true;
      }

      if( isTitleValid ){
          $("#titleInsert").removeClass("is-invalid");
       }else{
          $("#titleInsert").addClass("is-invalid");
       }
       
      if( isContentValid ){
          $("#contentInsert").removeClass("is-invalid");
       }else{
          $("#contentInsert").addClass("is-invalid");
       }      
      
      if(   isTitleValid && isContentValid ){
         return true;
      }else{
         return false;
      }
   }

  function validateUpdate(){
      var isTitleValid = false;
      var isContentValid = false;
      
   
      var userTitleValue = $("#titleUpdate").val();
      var userTitleLength = userTitleValue.length;
      
      if( userTitleLength > 0 ){
         isTitleValid = true;
      }
      
      var userContentValue = $("#contentUpdate").val();
      var userContentLength = userContentValue.length;
      
      if( userContentLength > 0 ){
         isContentValid = true;
      }

      if( isTitleValid ){
          $("#titleUpdate").removeClass("is-invalid");
       }else{
          $("#titleUpdate").addClass("is-invalid");
       }
       
      if( isContentValid ){
          $("#contentUpdate").removeClass("is-invalid");
       }else{
          $("#contentUpdate").addClass("is-invalid");
       }      
      
      if(   isTitleValid && isContentValid ){
         return true;
      }else{
         return false;
      }
 
  }
  
  
function boardInsert(){
      
      var formData = new FormData();
      formData.append("userSeq", '<%=userDto.getUserSeq()%>');
      formData.append("title", $("#titleInsert").val());
      formData.append("content", $("#contentInsert").val());
      formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
      
      $.ajax(
      {
           type : 'post',
           url : '/board/insertFile',
           dataType : 'json',
           data : formData,
           contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
           processData: false, // otherwise, jQuery will try to convert your FormData into a string, which will fail.
           beforeSend : function(xhr){
               //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
               xhr.setRequestHeader("AJAX", true);
           },
           success : function(data, status, xhr) { 
         
              if( data ){
                 alertify.success('글이 등록되었습니다.');
                 boardList();
              }
           }, 
           error: function(jqXHR, textStatus, errorThrown) 
           { 
              if( jqXHR.responseText == "timeout" ){
                 window.location.href = "/login"
              }else{
                 alertify.notify(
                        'Opps!! 글 등록 과정에 문제가 생겼습니다.', 
                        'error', //'error','warning','message'
                        3, //-1
                        function(){
                           console.log(jqXHR.responseText); 
                        }
                     );
              }
              
           }
       });
   }

function boardList(){
    $.ajax(
    {
         type : 'get',
         url : '/board/list',
         dataType : 'json',
         data : 
       {
            limit: LIST_ROW_COUNT,
          offset: OFFSET,
          searchWord: SEARCH_WORD
       },
         beforeSend : function(xhr){
             //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
             xhr.setRequestHeader("AJAX", true);
         },
         success : function(data, status, xhr) { 

            makeListHtml(data);
         }, 
         error: function(jqXHR, textStatus, errorThrown) 
         { 
            if( jqXHR.responseText == "timeout" ){
               window.location.href = "/login"
            }else{
               alertify.notify(
                   'Opps!! 글 조회 과정에 문제가 생겼습니다.', 
                   'error', //'error','warning','message'
                   3, //-1
                   function(){
                      console.log(jqXHR.responseText); 
                   }
                );
            }
         }
     });
 }
  
function boardListTotalCnt(){
    
    $.ajax(
    {
         type : 'get',
         url : '/board/list/totalCnt',
         dataType : 'json',
         data : 
       {
          searchWord: SEARCH_WORD
       },
         beforeSend : function(xhr){
             //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
             xhr.setRequestHeader("AJAX", true);
         },
         success : function(data, status, xhr) {
            TOTAL_LIST_ITEM_COUNT = data;
            addPagination();
         }, 
         error: function(jqXHR, textStatus, errorThrown) 
         { 
            if( jqXHR.responseText == "timeout" ){
               window.location.href = "/login"
            }else{
               alertify.notify(
                   'Opps!! 글 전체 갯수 조회 과정에 문제가 생겼습니다.', 
                   'error', //'error','warning','message'
                   3, //-1
                   function(){
                      console.log(jqXHR.responseText); 
                   }
                );
            }
         }
     });
 }
  
function addPagination(){

    makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", boardList );
 }
  
 
function movePage(pageIndex){
    OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
    CURRENT_PAGE_INDEX = pageIndex;
    boardList();
 }


function boardUpdate(){
    
	console.log();
    var formData = new FormData();
    formData.append("boardId", $("#boardUpdate").attr("data-boardId"));
    formData.append("userSeq", '<%=userDto.getUserSeq()%>');
    formData.append("title", $("#titleUpdate").val());
    formData.append("content", $("#contentUpdate").val());
    formData.append("file", $("#inputFileUploadUpdate")[0].files[0]);
    
    $.ajax(
    {
         type : 'post',
         url : '/board/updateFile',
         dataType : 'json',
         data : formData,
         contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
         processData: false, // otherwise, jQuery will try to convert your FormData into a string, which will fail.
         beforeSend : function(xhr){
             //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
             xhr.setRequestHeader("AJAX", true);
         },
         success : function(data, status, xhr) { 
       
            if( data ){
               alertify.success('글이 수정되었습니다.');
               boardList();
            }
         }, 
         error: function(jqXHR, textStatus, errorThrown) 
         {
            if( jqXHR.responseText == "timeout" ){
               window.location.href = "/login"
            }else{
               alertify.notify(
                  'Opps!! 글 수정 과정에 문제가 생겼습니다.', 
                  'error', //'error','warning','message'
                  3, //-1
                  function(){
                     console.log(jqXHR.responseText); 
                  }
               );
            }
         }
     });
 }
  function boardDelete(){
	  $.ajax(
		{
			type: 'post',
			url: '/board/delete',
			dataType: 'json',
			data :
				{
				boardId: $("#boardDetailModal").attr("data-boardId")
				},
				  beforeSend : function(xhr){
					  xhr.setRequestHeader("AJAX",true);
				  },
				  success: function(data,status,xhr){
					
					  console.log(boardId+"삭제완료");
					  if(data){
						  alertify.success('삭제되었습니다.');
						  boardList();
					  }
				  }
				  
			  });
			}
  
  function makeListHtml(list){
	  $("#boardTbody").html("");
	  for(var i=0;i<list.length;i++){
		  var boardId= list[i].boardId;
		  var userName= list[i].userName;
		  var title = list[i].title;
		  var content = list[i].content;
		  var regDt = list[i].regDt;
		  var readCount = list[i].readCount;
		  var listHtml = 
	            '<tr style="cursor:pointer" data-boardId=' + boardId +'><td>' + boardId + '</td><td>'+ userName +  '</td><td>' + title + '</td><td>' + regDt + '</td><td>' + readCount + '</td></tr>';
		   $("#boardTbody").append(listHtml);

		   
	  }
	  
      makeListHtmlEventHandler();

      boardListTotalCnt();
      
  }

  
   function makeListHtmlEventHandler(){
	  $("#boardTbody tr").click(function(){
		  var boardId = $(this).attr("data-boardId")
	  	boardDetail(boardId);
		 
	  })
	  
  }
   
   function boardDetail(boardId){
	//   $("#boardDetailModal").modal("show")
	  $.ajax({
		  type: 'get',
		  url: '/board/detail',
		  dataType: 'json',
		  data:{
			  boardId: boardId
		  },
		  beforeSend : function(xhr){
			   console.log(boardId);
			  xhr.setRequestHeader("AJAX",true);
			  
		  },
		  success: function(data, status, xhr){
			  console.log('success조회시작')
			  console.log(boardId+"success");
			  makeDetailHtml(data);
		  },
		  error : function(jqXHR, textStatus, errorThrown){
				if(jqXHR.responseText == "timeout"){
					window.location.href = "/login"
					
				}else{
					alertify.notify(
							 'Opps!! 글조회 과정에서 문제가 생겼어요.', 
			                 'error', //'error','warning','message'
			                 3, //-1
			                 function(){
			                    console.log(jqXHR.responseText); 
			                 }
					);
				}
			}
		  
	  });
}
   function makeDetailHtml(detail){
	      console.log('makeDetail 통과');
       var boardId = detail.boardId;
       var userSeq = detail.userSeq;
       var userName = detail.userName;
       var title = detail.title;
       var content = detail.content;
       var regDt = detail.regDt;
       var readCount = detail.readCount;
       var fileList = detail.fileList;
       console.log(fileList);
       
       $("#boardDetailModal").attr("data-boardId", boardId);
       $("#titleDetail").html(title);
       $("#contentDetail").html(content);
       $("#userNameDetail").html(userName);
       $("#regDtDetail").html(regDt);
       $("#readCountDetail").html(readCount);
       
       //FileList
       $("#fileListDetail").html("");
       
       if( fileList.length > 0 ){
          for(var i=0; i<fileList.length; i++){
             var fileId = fileList[i].fileId;
             var fileName = fileList[i].fileName;
             var fileUrl = fileList[i].fileUrl;
             
             $("#fileListDetail").append(
                   '<span class="fileName">' + fileName + '</span>');
             $("#fileListDetail").append(
                   '&nbsp;&nbsp;<a type="button" class="btn btn-outline btn-default btn-xs" ' +
                   'data-fileId="' + fileId + '" ' +
                   'href="' + fileUrl + '" ' +
                   'download="' + fileName + '">내려받기</a>');
          }
       }
       
       if( userSeq != '<%=userDto.getUserSeq()%>' ){
          $("#btnBoardUpdateForm").hide();
          $("#btnBoardDeleteConfirm").hide();
       }else{
          $("#btnBoardUpdateForm").show();
          $("#btnBoardDeleteConfirm").show();
       }
       
       $("#boardDetailModal").modal("show");
       
   // makeDetailHtmlEventHandler();
   
   

 }

  
  </script>

</body>

</html>
