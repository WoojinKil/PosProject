<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- <%@ tablib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ page import = "java.util.ArrayList, com.wjkil.myapp.dto.*" %>

<%
	UserDto userDto = (UserDto) session.getAttribute("userDto");
	if(userDto !=null){
		System.out.println(userDto.getUserSeq());
	}
int a=0;
	
	OrderDto orderDto;
	

%>

<head>

  <!-- Custom fonts for this template-->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
	<title> main_page</title>
  <link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">





<!--   <link rel="stylesheet" href="/resources/css/sb-admin-2.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="/resources/js/util.js"></script>
<link rel="stylesheet" href="/resources/css/common.css">
<!-- JQuery -->
  
   <!-- Alertify -->
   <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>



</head>
<body> 


<!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>


          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>
<%-- 
            <!-- 예약 알림 -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <%int count=1; %>
                <span class="badge badge-danger badge-counter">+<%=count %></span>
              </a>
              <!-- 예약알림창 -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header"> <!-- 알림제목 -->
                  	예약 알림목록
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>
 --%>
           
           
            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">wjkil</span>
                <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item btnInsertMenuFrom " href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  	메뉴추가
                </a>
                <a class="dropdown-item btn btnMenuUpdateDeleteForm" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                   	메뉴 상세/삭제
                </a>
                <a class="dropdown-item btnTodayList" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                 	당일매출내역확인
                </a>
                <div class="dropdown-divider"></div>
	                <a class="dropdown-item" href="finallist" >
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                   	전체매출 확인
                </a> 
              </div>
            </li>

          </ul>

        </nav>
<!-- End of Topbar -->




<!-- table -->

	<div class="container" >
		<div class="row" id="TableTbody"></div>
 	</div>
		
<!-- end of table -->



	<!-- 테이블 modal 팝업창 -->

	<!-- Modal 주문용 detail-->
	<div class="modal fade" id="TableModal" aria-hidden="false"
		aria-labelledby="boardDetailModalTitle" role="dialog" tabindex="-1">
		<div class="modal-dialog modal-simple">
			<form class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body">

					<div class="example table-responsive">
						<table class="table table-hover">
							<tbody>
								<tr>
									<td>테이블 번호</td>
									<td id="data-tableNumber">#</td>
								<tr>
								<tr>
									<td>수용인원</td>
									<td id="tableCapDetail">#</td>
								<tr>
								<tr>
									<td>가격</td>
									<td id="tablePrice">#</td>
								<tr>
							</tbody>

						</table>
						<table class="table table-hover">
							<thead>
								<tr>

									<th>메뉴</th>
									<th>메뉴설명</th>
									<th>가격</th>

								</tr>
							</thead>
							<tbody id="menuTbody">


							</tbody>
						</table>
					</div>
					<div class="modal-footer">

						<button type="button" class="btnCash btn btn-success"
							data-dismiss="modal">결제</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>


					</div>
				</div>
			</form>
		</div>
	</div>




	<!-- end of 테이블 modal 팝업창 -->

<!--  버튼 눌렀을때 -->

<!-- Modal todayList-->
	<div class="modal fade" id="todayModal" aria-hidden="false"
		aria-labelledby="boardDetailModalTitle" role="dialog" tabindex="-1">
		<div class="modal-dialog modal-simple" style="width: 80% !important; max-width:1200px;">
			<form class="modal-content">
				<div class="modal-header">
					Today List
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body">


					<table class="table table-hover">
						<thead>
							<tr>

								<th>주문번호</th>
								<th>메뉴명</th>
								<th>테이블번호</th>
								<th>가격</th>
								<th>상태</th>
								<th>주문날짜</th>
								<th>처리날짜</th>
							</tr>
						</thead>
						<tbody id="todayListTbody">


						</tbody>
					</table>
					
				</div>
					 <div class="col-sm-12 col-md-12" id="paginationWrapper"></div> 
							
			</form>
		
		</div>
	</div>

			<!-- mordal 메뉴 추가 insert-->

	<div class="modal fade" id="MenuInsert">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">Menu Insert</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>


				<div class="modal-body">
					<div class="row">
						<div class="col-xl-12 form-group">
							<input id="MenuNameInsert" type="text" class="form-control"
								name="title" placeholder="메뉴이름">
						</div>
						<div class="col-xl-12 form-group">
							<input id="MenuPriceInsert" type="number" class="form-control"
								name="title" placeholder="가격">
						</div>
						<div class="col-xl-12 form-group">
							<textarea id="MemuExplainInsert" class="form-control" rows="5"
								name="title" placeholder="메뉴설명"></textarea>

						</div>



					</div>
				</div>


				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button id="btnMenuInsert" class="btn btn-primary btn-outline"
						data-dismiss="modal" type="button">등록</button>


				</div>
			</div>
		</div>
	</div>



		<!-- mordal 메뉴 수정 update-->

	<div class="modal fade" id="MenuUpdate">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">Menu Update</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>


				<div class="modal-body">
					<div class="row">
						<div class="col-xl-12 form-group">
							<input id="MenuNameUpdate" type="text" class="form-control"
								name="title" placeholder="메뉴이름">
						</div>
						<div class="col-xl-12 form-group">
							<input id="MenuPriceUpdate" type="number" class="form-control"
								name="title" placeholder="가격">
						</div>
						<div class="col-xl-12 form-group">
							<textarea id="MemuExplainUpdate" class="form-control" rows="5"
								name="title" placeholder="메뉴설명"></textarea>

						</div>



					</div>
				</div>


				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button id="btnMenuUpdate" class="btn btn-primary btn-outline"
						data-dismiss="modal" type="button">수정</button>


				</div>
			</div>
		</div>
	</div>






	<!-- Modal 메뉴 수정/삭제 창 detail-->
	<div class="modal fade" id="MenuUpdateDelteModal" aria-hidden="false"
		aria-labelledby="boardDetailModalTitle" role="dialog" tabindex="-1">
		<div class="modal-dialog modal-simple">
			<form class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body">

					<div class="example table-responsive">

						<table class="table table-hover">
							<thead>
								<tr>
									
									<th>삭제</th>
									<th>메뉴</th>
									<th>메뉴설명</th>
									<th>가격</th>
									
								</tr>
							</thead>
							<tbody id="menuUpdateDeleteTbody">


							</tbody>
						</table>
					</div>
					<div class="modal-footer">

						
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>


					</div>
				</div>
			</form>
		</div>
	</div>



			<!-- mordal 상세 detail-->

	<div class="modal fade" id="MenuDetailModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">Menu Update</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<table class="table table-hover">
					<tbody>
						<tr>
							<td>메뉴번호</td>
							<td id="menuId">#</td>
						</tr>
						<tr>
							<td>메뉴이름</td>
							<td id="menuNameDetail">#</td>
						</tr>
						<tr>
							<td>가격</td>
							<td id="menuPriceDetail">#</td>
						</tr>
						<tr>
							<td>설명</td>
							<td id="menuExplainDetail">#</td>
						</tr>

					</tbody>
				</table>


				<a class="btn btnMenuUpdateForm btn-warning btn-circle btn-lg"> <i
					class="fas fa-exclamation-triangle"></i>
				</a>
				 <a class="btn btnMenuDelete btn-danger btn-circle btn-lg"> <i
					class="fas fa-trash"></i>

				</a>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>


				</div>
			</div>
		</div>
	</div>





	<script>
	

		var TABLE_NUMBER;
		var ORDER_ID;
		var MENU_ID;

		$(document).ready(function() {
			//orderFirstList();

			tableList(); //1번 , 테이블 그린다.

			menuList(); //2번, 메뉴 리스트 작성 아직 보여지지 않음

			$("#btnTable").click(function() {
				console.log("버튼 눌러짐");
				//menuList();

			});

			$(".btnTodayList").click(function() {
				console.log("당일매출내역");
				todayList();
				$("#todayModal").modal("show");

			});
			$(".btnInsertMenuFrom").click(function() {
				console.log("메뉴 삽입");
				$("#MenuNameInsert").val("");
				$("#MenuPriceInsert").val("");
				$("#MenuExplainInsert").val("");

				$("#MenuInsert").modal("show");
			});

			$("#btnMenuInsert").click(function() {

				if (MenuInsertValidate()) {
					insertMenu();
					menuList();
				}

			});

			$(".btnMenuUpdateDeleteForm").click(function() {
				$("#MenuUpdateDelteModal").modal("show");
			});

		});

		function MenuInsertValidate() {
			var isMenuNameValid = false;
			var isMenuPriceValid = false;
			var NameValue = $("#MenuNameInsert").val();
			var NameLength = NameValue.length;

			var PriceValue = $("#MenuPriceInsert").val();
			var PriceLength = PriceValue.length;

			if (PriceValue > 0) {
				isMenuNameValid = true;
			}
			if (PriceLength > 0) {
				isMenuPriceValid = true;
			}
			if (isMenuNameValid) {
				$("#MenuNameInsert").removeClass("is-invalid");
			} else {
				$("#MenuNameInsert").addClass("is-invalid");
			}

			if (isMenuPriceValid) {
				$("#MenuPriceInsert").removeClass("is-invalid");
			} else {
				$("#MenuPriceInsert").addClass("is-invalid");
			}

			if (isMenuPriceValid && isMenuNameValid) {
				return true;
			} else {
				return false;
			}
		}

		function insertMenu() {
			console.log("insertmenu");
			var formData = new FormData();
			formData.append("menu_name", $("#MenuNameInsert").val());
			formData.append("menu_price", $("#MenuPriceInsert").val());
			formData.append("menu_explain", $("#MemuExplainInsert").val());
			console.log(formData);
			$.ajax({
				type : 'post',
				url : '/table/insertMenu',
				dataType : 'json',
				data : {
					menuName : $("#MenuNameInsert").val(),
					menuPrice : $("#MenuPriceInsert").val(),
					menuExplain : $("#MemuExplainInsert").val(),

				},
				beforeSend : function(xhr) {
					//xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {

					if (data) {
						alertify.success('새 메뉴가 등록되었습니다.');
						menuList();
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						//window.location.href = "/login"
					} else {
						alertify.notify('Opps!! 글 등록 과정에 문제가 생겼습니다.', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}

				}
			});

		}

		function todayList() {
			$.ajax({
				type : 'get',
				url : '/table/todayList',
				dataType : 'json',

				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					//console.log("테이블생성시도");
					maketodayListHtml(data);
				
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 매출리스트 문제가 생겼습니다..', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}
		function maketodayListHtml(data) {
			$("#todayListTbody").html("");

			for (var i = 0; i < data.length; i++) {
				//console.log("메뉴 루프 들어감");

				var finalId = data[i].finalId;
				var orderId = data[i].orderId;
				var menuName = data[i].menuName;
				var tableNumber = data[i].tableNumber;
				var menuPrice = data[i].menuPrice;
				var status = data[i].status;
				var orderDate = data[i].orderDate;
				var cashDate = data[i].cashDate;

				var todayListHtml = '<tr style="cursor:pointer" data-finalId=' + finalId +'><td>'
						+ orderId
						+ '</td><td>'
						+ menuName
						+ '</td><td>'
						+ tableNumber
						+ '</td><td>'
						+ menuPrice
						+ '</td><td>'
						+ status
						+ '</td><td>'
						+ orderDate
						+ '</td><td>'
						+ cashDate + '</td></tr>';
				$("#todayListTbody").append(todayListHtml);

			}
			//makeMenuListHtmlEventHandler();
			//todayListTotalCnt()
		}

		function tableList() {
			$.ajax({
				type : 'get',
				url : '/table/list',
				dataType : 'json',

				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					//console.log("테이블생성시도");
					makeTableListHtml(data);

				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 테이블리스트에 문제가 생겼습니다..', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}

		function makeTableListHtml(list) {
			console.log("html시도");
			$("#TableTbody").html("");

			var listHtml1 = "";
			orderFirstList();
			for (var i = 0; i < list.length; i++) {
				console.log("루프 들어감");
				var tableNumber = list[i].tableNumber;

				listHtml1 += '<div class="col-md-4" style="margin-bottom: 10px;">'
						+ '<div  class="btn-block card mb-4 btnTable" data-tableNumber="'+tableNumber+'"  style="min-height: 200px;">'
						+ '<div class="card-header">'
						+ '<span class="badge badge-light">'
						+ tableNumber
						+ '</span>'
						+ '</div>'
						+ '<div class="card-body">'
						+ '<table class="table table-hover">'
						+

						'<tbody class="orderTbody" data-tableNumber="'+tableNumber+'">'
						+

						'</tbody>' + '</table>' +

						'</div>' + '</div>' + '</div>';

			}

			$("#TableTbody").append(listHtml1);

			//NowOrderList(tableNumber);
			makeListHtmlEventHandler();
			//NowOrderList(tableNumber);
		}

		function makeListHtmlEventHandler() {

			$("#TableTbody").find(".btnTable").click(
					function() {

						TABLE_NUMBER = $(this).attr("data-tableNumber")
						console.log("makeListHtmlEventHandler TABEL_NUMBER"
								+ TABLE_NUMBER);
						orderList(TABLE_NUMBER);
						tableDetail(TABLE_NUMBER);
						priceDetail(TABLE_NUMBER);
						$("#TableModal").modal("show");
						console.log("핸들러 바깥" + TABLE_NUMBER);
					})
			//NowOrderList(tableNumber); //현재 버튼에 띄워질 주문 리스트

		}
		function priceDetail(tableNumber) {
			$.ajax({
				type : 'get',
				url : '/table/priceDetail',
				dataType : 'json',
				data : {
					tableNumber : tableNumber
				},
				beforeSend : function(xhr) {
					console.log(tableNumber);
					xhr.setRequestHeader("AJAX", true);

				},
				success : function(data, status, xhr) {
					console.log('success조회시작')
					console.log(tableNumber + "success");
					makePriceDetailHtml(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 가격 조회과정에서 문제가 생겼어요.', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}

		function makePriceDetailHtml(detail) {
			var tableNumber = detail.tableNumber;
			var sumPrice = detail.sumPrice;
			console.log(tableNumber);
			$("#TableModal").attr("data-tableNumber", tableNumber);
			//$("#data-tableNumber").html(tableNumber);
			$("#tablePrice").html(sumPrice);
			console.log(sumPrice);

		}
		function tableDetail(tableNumber) {
			$.ajax({
				type : 'get',
				url : '/table/detail',
				dataType : 'json',
				data : {
					tableNumber : tableNumber
				},
				beforeSend : function(xhr) {
					console.log(tableNumber);
					xhr.setRequestHeader("AJAX", true);

				},
				success : function(data, status, xhr) {
					console.log('success조회시작')
					console.log(tableNumber + "success");
					makeDetailHtml(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 테이블 조회과정에서 문제가 생겼어요.', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}

		function makeDetailHtml(detail) {
			console.log('makeDetail 통과');

			var tableNumber = detail.tableNumber;
			var tableCap = detail.tableCap;

			console.log(tableNumber);

			$("#TableModal").attr("data-tableNumber", tableNumber);
			$("#tableCapDetail").html(tableCap);
			$("#data-tableNumber").html(tableNumber);

			console.log(tableNumber);
			console.log(tableCap);

			//makeDetailHtmlEventHandler();
		}
		function menuList() {
			$.ajax({
				type : 'get',
				url : '/table/menulist',
				dataType : 'json',

				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					console.log("메뉴생성시도");
					makeMenuListHtml(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {

					} else {
						alertify.notify('Opps!! 메뉴리스트에 문제가 생겼습니다..', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}
		function makeMenuListHtml(menulist) {
			console.log("menuListHtml 들어감");
			$("#menuTbody").html("");
			$("#menuUpdateDeleteTbody").html("");
			for (var i = 0; i < menulist.length; i++) {
				//console.log("메뉴 루프 들어감");
				var menuId = menulist[i].menuId;
				var menuName = menulist[i].menuName;
				var menuExplain = menulist[i].menuExplain;
				var menuPrice = menulist[i].menuPrice;
				var menuCount = menulist[i].menuCount;

				var count = 0;
				var menuListHtml1 = '<tr style="cursor:pointer" data-menuId=' + menuId +'><td>'
						+ menuName
						+ '</td><td>'
						+ menuExplain
						+ '</td><td>'
						+ menuPrice + '</td></tr>';

				var menuListHtml2 = '<tr style="cursor:pointer" class="menuDetail" data-menuId=' + menuId +'>'
					
						+ '<td>'
						+ '<a data-menuId="' + menuId +'" class="btn btnMenuDelete btn-danger btn-circle btn-lg">'
						+ '<i class="fas fa-trash"></i>'
						+ '</a>'
						+ '</td>'
						+ '<td>'
						+ menuName
						+ '</td><td>'
						+ menuExplain
						+ '</td><td>' + menuPrice + '</td></tr>';

				$("#menuTbody").append(menuListHtml1);
				$("#menuUpdateDeleteTbody").append(menuListHtml2);
			}
			makeMenuListHtmlEventHandler();
		}
		function makeMenuListHtmlEventHandler() {
			 $("#menuTbody tr")
					.click(
							function() {
								var menuId = $(this).attr("data-menuId");

								console
										.log('makeMenuListHtmlEventHandler TABLE_NUMBER ='
												+ TABLE_NUMBER);

								order(TABLE_NUMBER, menuId);

							}); 

			$(".menuDetail").find(".btnMenuDelete").click(function(){
				MENU_ID = $(this).attr("data-menuId");
				console.log(MENU_ID);
				menuDelete(MENU_ID);
			});
			
			$(".btnCash").click(function() { //결제버튼 누르면 테이블 번호에 있는 주문리스트 삭제
				completeCash(TABLE_NUMBER);
			});
			
/* 			$("#menuUpdateDeleteTbody tr").click(function() {
				MENU_ID = $(this).attr("date-menuId");
				menuDetail(MENU_ID);
			}) */
			
/* 			$("#menuUpdateDeleteTbody").find(".btnMenuUpdate").click(
					function() {
						MENU_ID = $(this).attr("data-menuId");
						$("#MenuUpdate").click(function() {

						});

					}); */
		}
		
		function menuDelete(menuId){
			$.ajax({
				type : 'get',
				url : '/table/menuDelete',
				dataType : 'json',
				data : {
					menuId : menuId
				},
				beforeSend : function(xhr) {
					console.log(menuId);
					xhr.setRequestHeader("AJAX", true);

				},
				success : function(data, status, xhr) {
					console.log(menuId + "success");
					menuList();
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
					//	window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 글조회 과정에서 문제가 생겼어요.', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}
		function menuDetail(menuId) {
			$.ajax({
				type : 'get',
				url : '/table/menuDetail',
				dataType : 'json',
				data : {
					menuId : menuId
				},
				beforeSend : function(xhr) {
					console.log(menuId);
					xhr.setRequestHeader("AJAX", true);

				},
				success : function(data, status, xhr) {
					console.log(menuId + "success");
					makeMenuDetailHtml(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
					//	window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 글조회 과정에서 문제가 생겼어요.', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}
		function makeMenuDetailHtml(detail) {
			var menuId = detail.menuId;
			var menuPrice = detail.menuPrice;
			var menuExplain = detail.menuExplain;
			var menuName = detail.menuName;
			$("#MenuDetailModal").attr("data-menuId", menuId);
			$("#menuId").html(menuId);
			$("#menuNameDetail").html(menuName);
			$("#menuPriceDetail").html(menuPrice);
			$("#menuExplainDetail").html(menuExplain);

		}
		function completeCash(tableNumber) {
			$.ajax({
				type : 'post',
				url : '/table/completeCash',
				dataType : 'json',
				data : {
					tableNumber : tableNumber,

				},
				beforeSend : function(xhr) {
					//xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {

					if (data) {
						alertify.success('주문이 모두 처리되었습니다.');
						tableList();
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"
					} else {
						alertify.notify('Opps!! 지우는 과정에 문제가 생겼습니다.', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}
			});
		}
		function order(tableNumber, menuId) {
			$.ajax({
				type : 'post',
				url : '/table/order',
				dataType : 'json',
				data : {
					tableNumber : tableNumber,
					menuId : menuId
				},
				beforeSend : function(xhr) {
					//xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {

					if (data) {
						alertify.success('메뉴가 추가.');
						orderForFinal(tableNumber, menuId); //2번째 테이블에 삽입

					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"
					} else {
						alertify.notify('Opps!! 모달 업데이트 과정에 문제가 생겼습니다.',
								'error', //'error','warning','message'
								3, //-1
								function() {
									console.log(jqXHR.responseText);
								});
					}
				}
			});
		}
		function orderForFinal(tableNumber, menuId) {
			$.ajax({
				type : 'post',
				url : '/table/orderForFinal',
				dataType : 'json',
				data : {
					tableNumber : tableNumber,
					menuId : menuId
				},
				beforeSend : function(xhr) {
					//xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {

					if (data) {
						alertify.success('2테이블에 추가.');

						orderList(tableNumber);
						priceDetail(tableNumber);
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"
					} else {
						alertify.notify('Opps!! 2테이블에 문제가 생겼습니다.', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}
			});
		}
		function orderList(tableNumber) {
			$.ajax({
				type : 'get',
				url : '/table/orderList',
				dataType : 'json',
				data : {
					tableNumber : tableNumber
				},
				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					//console.log("주문리스트 생성시도");
					makeOrderListHtml(data);
					tableList();
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 주문리스트에 문제가 생겼습니다..', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}
		function makeOrderListHtml(data) {
			//console.log("html시도");
			var orderTbody = $(".orderTbody[data-tableNumber='" + TABLE_NUMBER
					+ "']");
			orderTbody.html("");
			//var listHtml1= '<div class="card-columns">';

			for (var i = 0; i < data.length; i++) {
				//console.log("주문루프 들어감");
				var tableNumber = data[i].tableNumber;
				var orderId = data[i].orderId;
				var menuId = data[i].menuId;
				var menuName = data[i].menuName;
				var status = data[i].status;

				var html = +'<tr class="orderDetail"  height="0.4" data-orderId ="'+orderId+'"><td style=" font-size :small">'
						+ menuName
						+ '</td><td style=" font-size :small">'
						+ status
						+ '</td><td><span data-orderId ="'+orderId+'" class="badge badge-pill badge-success btnOrderComplete">c</span><span  data-status="'+status+'"  data-orderId ="'+orderId+'" class="badge badge-pill badge-danger btnOrderCancel">x</span></td></tr>';

			}
			orderTbody.append(html);

			makeOrderListHtmlHandler();
		}
		function makeOrderListHtmlHandler() {
			$(".orderDetail").find(".btnOrderComplete").click(function(e) {

				ORDER_ID = $(this).attr("data-orderId");
				//var orderTbodyTr = $(".orderDetail").attr("data-orderId");
				//$("#TableModal").modal('hide');
				var status = $(this).attr("data-status");
				if (statusValidate(status)) {
					statusUpdate(ORDER_ID);
					finalInsert(ORDER_ID, "결제됨");
				}
				//console.log(this);
				//var orderStatusValue = $()
				//	console.log('orderId = ' +ORDER_ID);
				//	
				console.log("클릭했을때 상태 " + ORDER_ID + " " + status);
				e.stopPropagation();
				e.preventDefault();

			});

			$(".orderDetail").find(".btnOrderCancel").click(function(e) {
				e.stopPropagation();
				e.preventDefault();
				ORDER_ID = $(this).attr("data-orderId");
				//var orderTbodyTr = $(".orderDetail").attr("data-orderId");
				//$("#TableModal").modal('hide');
				var status = $(this).attr("data-status");
				if (Refund(status)) {
					var result = confirm("환불하시겠습니까?");
					if (result) {
						finalInsert(ORDER_ID, "환불됨");
						orderDelete(ORDER_ID);

						e.stopPropagation();
						e.preventDefault();
					}

				} else {

					var result = confirm("취소하시겠습니까?");
					if (result) {
						orderDelete(ORDER_ID);

						e.stopPropagation();
						e.preventDefault();
					}

				}

			});

		}

		function Refund(status) {
			var isRefund = false;
			if (status == "완료") {
				isRefund = true;
			}
			if (isRefund) {
				return true;

			} else {
				return false;
			}

		}
		function statusValidate(status) {
			var isStatusValid = false;
			if (status == "준비중") {
				isStatusValid = true;
			}
			console.log(status);
			console.log(" 유효성 검사할 떄 isStatusValid 의 값" + isStatusValid);
			if (isStatusValid) {
				return true;

			} else {
				alert("이미 완료됬습니다.");
				return false;
			}
		}
		function statusUpdate(orderId) {
			$.ajax({
				type : 'post',
				url : '/table/statusUpdate',
				dataType : 'json',
				data : {
					orderId : orderId
				},
				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					console.log("메뉴 나왔습니다~");

					tableList();

				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 주문리스트에 문제가 생겼습니다..', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}

		function finalInsert(orderId, status) {
			$.ajax({
				type : 'post',
				url : '/table/finalInsert',
				dataType : 'json',
				data : {
					orderId : orderId,
					status : status
				},
				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					console.log("최종 판매내역 들어갑니다~");

				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 최종 판매내역 삽입에 문제가 생겼습니다..',
								'error', //'error','warning','message'
								3, //-1
								function() {
									console.log(jqXHR.responseText);
								});
					}
				}

			});
		}
		function orderDelete(orderId) {
			$.ajax({
				type : 'post',
				url : '/table/orderDelete',
				dataType : 'json',
				data : {
					orderId : orderId
				},
				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					console.log("메뉴 취소");
					tableList();
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 주문리스트에 문제가 생겼습니다..', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});
		}
		function orderFirstList() {
			$.ajax({
				type : 'get',
				url : '/table/orderFirstList',
				dataType : 'json',

				beforesend : function(xhr) {
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					console.log("주문리스트 생성시도");
					makeOrderFirstListHtml(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"

					} else {
						alertify.notify('Opps!! 주문리스트에 문제가 생겼습니다..', 'error', //'error','warning','message'
						3, //-1
						function() {
							console.log(jqXHR.responseText);
						});
					}
				}

			});

		}
		function makeOrderFirstListHtml(data) {
			console.log("html시도2" + data);

			var orderTbody = $(".orderTbody[data-tableNumber='" + TABLE_NUMBER
					+ "']"); //ordertbody에 넣어야될것

			orderTbody.html("");
			//var listHtml1= '<div class="card-columns">';

			for (var i = 0; i < data.length; i++) {

				var tableNumber = data[i].tableNumber;
				//console.log(tableNumber);
				var orderId = data[i].orderId;
				//console.log(orderId);
				var menuId = data[i].menuId;
				//console.log(menuId);
				var menuName = data[i].menuName;
				//console.log(menuName);
				var status = data[i].status;
				//console.log(status);
				var html = '<tr class="orderDetail"  height="0.4" data-orderId ="'+orderId+'"><td style=" font-size :small">'
						+ menuName
						+ '</td><td  style=" font-size :small">'
						+ status
						+ '</td><td><span  data-status="'+status+'"  data-orderId ="'+orderId+'"  class="badge badge-pill badge-success btnOrderComplete">c</span><span data-status="'+status+'" data-orderId ="'+orderId+'" class="badge badge-pill badge-danger btnOrderCancel">x</span></td></tr>';
				//console.log("btn테이블의 길이"+$(".btnTable[data-tableNumber='"+tableNumber+"']").length);

				//	console.log("btn테이블의 orderTbody 길이 "+$(".btnTable[data-tableNumber='"+tableNumber+"']").find(".orderTbody").length);
				//console.log("html "+html);

				$(".btnTable[data-tableNumber='" + tableNumber + "']").find(
						".orderTbody").append(html);

				// orderTbody.append(html);

			}
			makeOrderListHtmlHandler();
		}
		
		
/* 		
		function addPagination(){

		    makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", todayList );
		 }
		  
		function movePage(pageIndex){
		    OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
		    CURRENT_PAGE_INDEX = pageIndex;
		    todayList();
		 }
 		function todayListTotalCnt(){
		    
		    $.ajax(
		    {
		         type : 'get',
		         url : '/table/todayListTotalCnt',
		         dataType : 'json',
		         data : 
		       {


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
		 } */
		 
	</script>

</body>
</html>
