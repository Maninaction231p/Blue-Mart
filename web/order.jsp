<%-- 
    Document   : order
    Created on : Jul 5, 2024, 8:59:38 PM
    Author     : bikku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <title>Order</title>
</head>
<body class="bg-light">
    
    <br>
        <%
            String msg=request.getParameter("msg");
            if("invalid".equals(msg))
            {
                %>
                    <script>
                        window.alert("Something Went Wrong! Try again!");
                    </script>
                <%
            }
            else if("valid".equals(msg))
            {
                %>
                    <script>
                        window.alert("Successfully Created...");
                    </script>
                <%
            }
            
        %>
        <% 
                      String email=(String)session.getAttribute("email");
                      String totalspen=request.getParameter("number");
                  %>
        
  
    <div class=" ps-lg-5 z-1 "  >
    <div class="d-flex row  mx-auto justify-content-center">
        <div class="form col-xl-4 py-2 px-4 rounded shadow-sm border " style="background-color: #C8E1FF;">
            <p class="heading fw-bold text-primary" style="font-size: 28px;">Address Details</p>
            
            <form action="orderAction.jsp" method="post">
            
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Street</label>
                <input type="text" name="street" class="form-control" id="exampleFormControlInput1"  required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Land Mark</label>
                <input type="text" name="land_mark" class="form-control" id="exampleFormControlInput1"  required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">City</label>
                <input type="text" name="city" class="form-control" id="exampleFormControlInput1"  required>
            </div>
            <div class="mb-3">
           
            
        
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">State</label>
                <select class="form-select" name="state" aria-label="Default select example">
  					<option value="telangana" selected>Telangana</option>
                    <option value="andhra_pradesh">Andhra Pradesh</option>
  					<option value="kerla">Kerla</option>
  					<option value="tamil_nadu">Tamil Nadu</option>
				</select>
            </div>
            
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="mb-2">Address</label>
               <textarea class="form-control" name="address" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
                <input type="hidden" name="email" value="<%=email %>" />
                <input type="hidden" name="totalmoney" value="<%=totalspen %>" />
            <div class="mb-3">
                <button type="submit" class="btn btn-primary w-100" >Order</button>
            </div>
            <div class="text-center mb-3 text-secondary">
                    <span>Or</span>
            </div>
        <div class="mb-3">
            <button type="button" onclick="window.location='cart.jsp';" class="btn btn-outline-dark w-100" style="">Cancel</button>
            </div>
        </form>
        </div>
    </div>
        
        
    </div>
    <br>
    <br>
    <hr>
    
    
    <!-- Footer -->
<footer class="pb-3 text-center">
    Copyrights are reserved by Mint Inc
    <!-- Copyright -->
     
  </footer>
  <!-- Footer -->
</body>
</html>
