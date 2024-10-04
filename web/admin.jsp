<%-- 
    Document   : admin
    Created on : Jul 4, 2024, 10:12:10 AM
    Author     : bikku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/styles.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" type="image/x-icon" href="logo.png">
    <title>Admin</title>
</head>
<body class="bg-black">
    <br>
    
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
        
  
    <div class=" ps-lg-5 z-1 "  >
    <div class="d-flex row  mx-auto justify-content-center">
        <div class="form col-xl-4 py-2 px-4 rounded shadow-sm border bg-black">
            <p class="heading fw-bold" style="font-size: 28px;">Add A Product</p>
            
            <form action="adminAction.jsp" method="post">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Product Name</label>
                <input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="" required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Price</label>
                <input type="number" name="price" class="form-control" id="exampleFormControlInput1" required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="mb-2">Description</label>
               <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="mb-3">
                <label for="image" class="col-sm-2 col-form-label">Image</label>
                <input type="text" name="image" class="form-control" id="image" >
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Quantity</label>
                <input type="number" name="quantity" class="form-control" id="exampleFormControlInput1" required>
            </div>
            
        
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Category</label>
                <select class="form-select" name="category" aria-label="Default select example">
  					<option value="electronics" selected>Electronics</option>
                                        <option value="fashion">Fashion</option>
  					<option value="appliances">Appliances</option>
  					
				</select>
            </div>
            
            
            <div class="mb-3">
                <button type="submit" class="btn btn-primary w-100" >Add</button>
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

