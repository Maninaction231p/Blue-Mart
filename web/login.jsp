<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/styles.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" type="image/x-icon" href="logo.png">
    <title>Login</title>
</head>
<body class="bg-light" style="">
    
    <%
            String msg=request.getParameter("msg");
            if("valid".equals(msg))
            {
                
            }
            else
            {
                %>
                    <script>
                        window.alert("Invalid Email or Password");
                    </script>
                <%
            }
            
        %>
    
    <br>
    <div class="logo sticky-top d-flex justify-content-center z-n1">  
            <div>
            <img src="logo.png" alt="" height="160px" class="d-inline-block align-text-top">   
            </div>
        </div>
    
    <br>
    <div class=" justify-content-around mx-auto  " style="display: flex;">
        <div class="form col-xl-4 py-2 px-4 rounded shadow-sm border " style="background-color: #C8E1FF;">
            <p class="heading fw-bold text-primary" style="font-size: 28px;">Sign In</p>
            
            <form action="loginAction.jsp" method='post'>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email</label>
                <input type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="">
            </div>
            <div class="mb-3">
                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                <input type="password" name="password" class="form-control " id="inputPassword">
                <a class="link text-primary " href="forgotPassword.jsp">Forgot Password?</a>
            </div>

            <div class="mb-3">
                <button type="submit" class="btn btn-primary w-100" >Login</button>
            </div>
            

        
   
    <div class="text-center mb-3 text-secondary">
        <span>New to Blue Mart?</span>
    </div>
        <div class="mb-3">
            <button type="button" onclick="window.location='register.jsp';" class="btn btn-outline-dark w-100" style="">Create your Blue Mart Account</button>
            </div>
      
    </form>
            </div>
         
        
    </div> 
    <br>
   <hr>
    
    
    <!-- Footer -->
<footer class="pb-3 text-center">
    Copyrights are reserved by Blue Mart Inc
    <!-- Copyright -->
     
  </footer>
  <!-- Footer -->
</body>
</html>