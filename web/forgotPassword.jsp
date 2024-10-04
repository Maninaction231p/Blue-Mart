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
    <title>ForgotPassword</title>
</head>
<body class="bg-light">
    
    <%
            String msg=request.getParameter("msg1");
            if("done".equals(msg))
            {
                %>
                    <script> 
                        window.alert("Password Changed Successfully...");
                    </script>
                <%
            }
            else
            {
                %>
                    <script>
                        window.alert("Password Not Changed..");
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
    <div class="d-flex row justify-content-center mx-auto  ">
        <div class="form col-xl-4 py-2 px-4 rounded shadow-sm border " style="background-color: #C8E1FF;">
            <p class="heading fw-bold text-primary" style="font-size: 28px;">Forgot Password</p>
            
            <form action="forgotpasswordAction.jsp" method='post'>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email</label>
                <input type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Mobile</label>
                <input type="number" name="mobile" class="form-control" min="1000000000" max="9999999999" id="exampleFormControlInput1" placeholder="+91" required>
            </div>
                 
        
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Security Question</label>
                <select class="form-select" name="security_question" aria-label="Default select example">
  					<option value="Who was your childhood hero?" selected>Who was your childhood hero?</option>
                    <option value="What was the name of your first crush?">What was the name of your first crush?</option>
  					<option value="What was the first film you saw in a theater?">What was the first film you saw in a theater?</option>
  					<option value="What was the name of your first pet?">What was the name of your first pet?</option>
				</select>
            </div>
            <div class="mb-3">
                <input type="text" name="security_answer" class="form-control" id="exampleFormControlInput1" placeholder="Enter (Your Secret) Answer..." required>
            </div>
                
            <div class="mb-3">
                <label for="inputPassword" class="form-label">New Password</label>
                <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Atleast 8 characters" required>
            </div>
            
            <div class="mb-3">
                <button type="submit" class="btn btn-primary w-100" >Save</button>
            </div>
            <div class="text-center mb-3 text-secondary">
                    <span>Or</span>
            </div>
        <div class="mb-3">
            <button type="button" onclick="window.location='login.jsp';" class="btn btn-outline-dark w-100" style="">Sign In</button>
            </div>
        </form>
        </div>
         </div> 
    <br>
    <br>
     <!-- Footer -->
<footer class="pb-3 text-center">
    Copyrights are reserved by Blue Mart Inc
    <!-- Copyright -->
     
  </footer>
  <!-- Footer -->

</body>
</html>