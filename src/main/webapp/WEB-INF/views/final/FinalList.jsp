<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- <%@ tablib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ page import = "java.util.ArrayList, com.wjkil.myapp.dto.*" %>

<%-- <%
	UserDto userDto = (UserDto) session.getAttribute("userDto");
	if(userDto !=null){
		System.out.println(userDto.getUserSeq());
	}
int a=0;
	
	OrderDto orderDto;
	

%> --%>

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

                <div class="dropdown-divider"></div>
	                <a class="dropdown-item" href="/" >
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                	   영업창으로 가기
                </a> 
              </div>
            </li>

          </ul>

        </nav>
<!-- End of Topbar -->




<!-- table -->

			<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"></h1>


					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">전체 매출 리스트</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">



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
									<tbody id="FinalListTbody">
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


				</div>
				<!-- /.container-fluid -->
		
<!-- end of table -->





<script>
var LIST_ROW_COUNT = 10;   //limit

var OFFSET = 0;
var PAGE_COUNT_PER_BLOCK = 10;   // pagination link 갯수
var TOTAL_LIST_ITEM_COUNT = 0;
var CURRENT_PAGE_INDEX = 1;
	$(document).ready(function(){
		finalList();
		
		
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
	
	
	
	
	
	
	function finalList() {
		$.ajax({
			type : 'get',
			url : '/finallist/list',
			dataType : 'json',

			data :{
	            limit: LIST_ROW_COUNT,
	            offset: OFFSET,
			},
			beforesend : function(xhr) {
				xhr.setRequestHeader("AJAX", true);
			},
			success : function(data, status, xhr) {
				//console.log("테이블생성시도");
				makefinalListHtml(data);
				
			
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
	function makefinalListHtml(data) {
		$("#FinalListTbody").html("");

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
			$("#FinalListTbody").append(todayListHtml);

		}
		//makeMenuListHtmlEventHandler();
		finalListTotalCnt()
	}

	function addPagination(){

	    makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", finalList );
	 }
	  
	 
	function movePage(pageIndex){
	    OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
	    CURRENT_PAGE_INDEX = pageIndex;
	    finalList();
	 }

	function finalListTotalCnt(){
	    
	    $.ajax(
	    {
	         type : 'get',
	         url : '/finallist/finalListTotalCnt',
	         dataType : 'json',

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
	
	
</script>

</body>
</html>
