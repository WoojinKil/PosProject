<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Login</title>

  <!-- Custom fonts for this template-->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">


<!-- Alertify -->
   <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>



</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
                  <form class="user">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    
                    

                    
                    
                    <hr>
                    
                    <a href="index" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    
                    <a href="index" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>	
                    
                    
                  </form>
                  <button class="btn btn-primary btn-user btn-block" id= "btn_login">
                      Login
                  </button>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="login/register">Create an Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/resources/js/sb-admin-2.min.js"></script>



<script>
   (function(document, window, $) {
 
      $(document).ready(function() {
     

         $("#btn_login").click(function(){
            
            if( validate() ){
               login();
            }
         });

      });
   })(document, window, jQuery);
   
   function validate(){
      var isUserEmailValid = false;
      var isUserPasswordValid = false;
   
      var userEmailValue = $("#exampleInputEmail").val();
      var userEmailLength = userEmailValue.length;
      
      if( userEmailLength > 0 ){
         isUserEmailValid = true;
      }
      
      var userPasswordValue = $("#exampleInputPassword").val();
      var userPasswordLength = userPasswordValue.length;
      
      if( userPasswordLength > 0 ){
         isUserPasswordValid = true;
      }

      if(   isUserEmailValid && isUserPasswordValid ){
         return true;
      }else{
         return false;
      }
   }
   
   function login(){
      $.ajax(
      {
           type : 'post',
           url : '/login',
           dataType : 'json',
           data : 
         {
            userEmail: $("#exampleInputEmail").val(),
            userPassword: $("#exampleInputPassword").val(),
         },
           beforeSend : function(xhr){
               //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
               xhr.setRequestHeader("AJAX", true);
           },
           success : function(data, status, xhr) { // alertify or another welcome page 이동
              console.log(data);
              console.log(status);
              
              if( data ){
                 window.location.href="/main_card";
                 
              }else{
                 alertify.notify(
                     'Opps!! 이메일 또는 비밀번호가 올바르지 않습니다.', 
                     'error', //'error','warning','message'
                     3
                  );
              }
           }, 
           error: function(jqXHR, textStatus, errorThrown) 
           { 
             
        	   console.log(jqXHR);
              console.log(textStatus);
              console.log(errorThrown);
              alertify.notify(
                 'Opps!! 로그인 과정에 문제가 생겼습니다.', 
                 'error', //'error','warning','message'
                 3, //-1
                 function(){
                    console.log(jqXHR.responseText); 
                 }
              );
           }
       });
   }
   </script>




</body>

</html>
