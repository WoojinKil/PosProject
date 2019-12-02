<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Register</title>

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

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              <form class="user">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="exampleName" placeholder="Name">
                    <div class="invalid-feedback">이름을 입력해주세요.</div>
                  </div>

                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email Address">
                  <div class="invalid-feedback">정확한 이메일을 기재해 주세요.</div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                    <div class="invalid-feedback">유효한 비밀번호를 입력해주세요.</div>
                   
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password">
                     <div class="invalid-feedback">비밀번호가 일치하지 않습니다..</div>
                  </div>
                </div>
                
                <hr>
                <a href="index.html" class="btn btn-google btn-user btn-block">
                  <i class="fab fa-google fa-fw"></i> Register with Google
                </a>
                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                  <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                </a>
              </form>
              <button class="btn btn-primary btn-user btn-block" id="btn_register" >
                  Register Account
                </button>
              <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="login.html">Already have an account? Login!</a>
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

       
         $(document).ready(function() {
           
            

            $("#btn_register").click(function(){
               
               if( validate() ){
                  sendReqeust();
               }
            });

         });
    
      
      function validate(){
         
         var isUserNameValid = false;
         var isUserEmailValid = false;
         var isUserPasswordValid = false;
         var isUserPassword2Valid = false;

         var patternEng = new RegExp(/[a-zA-Z]/);   // all english

         var patternEmail = new RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
         
         var patternEngAtListOne = new RegExp(/[a-zA-Z]+/);// + for at least one
         var patternSpeAtListOne = new RegExp(/[~!@#$%^&*()_+|<>?:{}]+/);// + for at least one
         var patternNumAtListOne = new RegExp(/[0-9]+/);// + for at least one
         
         //userName
         var userNameValue = $("#exampleName").val();
         var userNameLength = userNameValue.length;
         
         if( userNameLength > 0 ){
            isUserNameValid = true;
         }
         
         if( isUserNameValid ){
            $("#exampleName").removeClass("is-invalid");
         }else{
            $("#exampleName").addClass("is-invalid");
         }
         
         //userEmail
         var userEmailValue = $("#exampleInputEmail").val();
         var userEmailLength = userEmailValue.length;
         
         if( patternEmail.test( userEmailValue ) ){
            isUserEmailValid = true;
         }
         
         if( isUserEmailValid ){
            $("#exampleInputEmail").removeClass("is-invalid");
         }else{
            $("#exampleInputEmail").addClass("is-invalid");
         }
         
         //password
         
         var userPasswordValue = $("#exampleInputPassword").val();
         var userPasswordLength = userPasswordValue.length;
         
         var userPassword2Value = $("#exampleRepeatPassword").val();
         //var password2Length = password2Value.length; // no need
         
         if( patternEngAtListOne.test( userPasswordValue ) 
               && patternSpeAtListOne.test( userPasswordValue )  
               && patternNumAtListOne.test( userPasswordValue )){
            isUserPasswordValid = true;
         }else if( userPasswordLength >= 10 ){
            isUserPasswordValid = true;
         }
         
         if( isUserPasswordValid ){
            $("#exampleInputPassword").removeClass("is-invalid");
         }else{
            $("#exampleInputPassword").addClass("is-invalid");
         }
         
         //password confirm
         console.log(userNameValue);
         console.log(userEmailValue);
         console.log(userPasswordValue);
         console.log(userPassword2Value);
         if( userPasswordValue == userPassword2Value){
            isUserPassword2Valid = true;
         }
         
         if( isUserPassword2Valid ){
            $("#exampleRepeatPassword").removeClass("is-invalid");
         }else{
            $("#exampleRepeatPassword").addClass("is-invalid");
         }
         
         
         if(   isUserNameValid && isUserEmailValid && isUserPasswordValid && isUserPassword2Valid ){
            return true;
         }else{
            return false;
         }
      }
      
      function sendReqeust(){
          $.ajax(
          {
               type : 'post',
               url : '/user',
               dataType : 'json',
               data : 
             {
                userName: $("#exampleName").val(),
                userEmail: $("#exampleInputEmail").val(),
                userPassword: $("#exampleInputPassword").val(),
             },
               beforeSend : function(xhr){
                   //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
                   xhr.setRequestHeader("AJAX", true);
               },
               success : function(data, status, xhr) { // alertify or another welcome page 이동
                  alertify.alert(
                        'wjkil', 
                        '회원가입을 축하합니다. 로그인 페이지로 이동합니다')
               }, 
               error: function(jqXHR, textStatus, errorThrown) 
               { 
                  alertify.notify(
                        'Opps!! 회원가입에 문제가 생겼습니다.', 
                        'error', //'error','warning','message'
                        3, //-1
                        function(){
                           console.log(jqXHR.responseText); 
                        }
                     );
               }
           });
         
//            $.post("/user",
//            {
//               userName: $("#userName").val(),
//               userEmail: $("#userEmail").val(),
//               userPassword: $("#userPassword").val(),
//            },
//            function(data, status){
//               console.log("Data: " + data + "\nStatus: " + status);
//            });
      }
   </script>



</body>

</html>
