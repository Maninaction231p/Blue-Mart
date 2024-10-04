<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
     <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="script.js"></script>
    <link rel="icon" type="image/x-icon" href="logo.png">
    <title>Cart</title>
    <style>
        body{
             font-family: "Poppins", sans-serif;
             font-weight: 400;
             font-style: normal;
        }
    </style>
 
</head>
<body class="bg-light ">
    
    <script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>
    
  <%
            String msg=request.getParameter("msg2312");
            if("invalid".equals(msg))
            {
                %>
                    
                <%
            }
            else if("valid".equals(msg))
            {
                %>
                   
                <%
            }
            
    %>   
        <% 
                      String email=(String)session.getAttribute("email");
                  %>
            
  <nav class="navbar justify-content-center navbar-light bg-light sticky-top navbar-expand-lg mx-4 mt-2" >
        <div class="container-fluid px-5"> 
            <a class="navbar-brand " href="adminHome.jsp">
                <img src="logo1.png" alt="" width="auto" height="60" class="pt-1">
            </a>          
            <button class="navbar-toggler col-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
          <div class="navbar-nav text-center w-75 " id="navbarSupportedContent">
            <form class="d-flex w-75 input-group me-4 " action="search.jsp">
                    <span class="input-group-text bg-light " id="basic-addon1">
                        <select class="form-select  form-select-sm dropdown-toggle " name="category" aria-label=".form-select-sm">
                        <option value="all" selected>All</option>
                        <option value="electronics">Electronics</option>
                        <option value="fashion">Fashion</option>
                        <option value="appliances">Appliances</option>
                    </select>
                </span>
                <input class="form-control bg-light" name="search" type="search" placeholder="Search..." aria-label="Search">
                <span class="input-group-text bg-light" id="basic-addon1">
                    <input  class="  my-2 my-sm-0 border-0 bg-transparent" type="submit" value="Search">
                </span>
                <input type="hidden" name="email" value="<%=email %>" />
            </form>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            
              <li class="nav-item dropdown ">
                <a class="btn text-dark nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  
                  <%=email %>
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="index.jsp">Logout</a></li>
                </ul>
              </li>

              <li class="nav-item mx-2">
                  <form action="cart.jsp" method="post">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <button type="submit" class="btn btn-transparent nav-link text-dark  ">Cart</button>
                   </form>
              </li>

            </ul>
          </div>
        </div>
        
    
  </nav>
    
                        <div class="mx-5 ">
       
        <br>
        <div class="mx-5">
            <div class="justify-content-center pt-2 mx-5 rounded-top" style="display: flex; background-color:#FE8E18;">
         <h2 class="  py-1 text-center rounded text-light ">CART</h2>
            </div>
            <div  class="mx-5 rounded-bottom p-4 py-3 justify-content-between" style="display: flex; flex-wrap: wrap; background-color: #FFE1C7;">
    <%
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
        Statement stmt= conn.createStatement(); 
        ResultSet rs = stmt.executeQuery("SELECT products.id,cart.id,cart.email, products.name,products.image, products.price, sum(cart.quantity) FROM cart JOIN products ON cart.product_id = products.id where cart.email='"+email+"' group by product_id,email");
        double ite =0;
        try {
              
            while(rs.next() ) {
                int id = rs.getInt("products.id");
                String name = rs.getString("name");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("sum(cart.quantity)");
    %>
    
    <div class=" rounded border bg-white mb-3" style="width:430px;" >
        <div style="display: flex;">
            <div class="img_top">
         <img src="<%= image%>" class="rounded-start" style="opacity:08;" width="auto" height="160px" >
        </div>
            <div class="px-3 w-100 p-2 " >
                <div class="" style="display: flex;">
                    <h4 class="w-50 text-truncate" data-toggle="tooltip" title="<%= name %>"><%= name %></h4>
                    
                </div>
                <div class="justify-content-between" style="">
                    <h4>₹<%= price %></h4>
                    <h5> <span class="text-secondary">Total:</span> ₹<%= price*quantity %></h5>
                    <div style="display: flex;">
                        
                    <div class="btn-group " role="group" aria-label="Basic example">
                        <form action="cartAddAction.jsp">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <input type="hidden" name="productId" value="<%= id %>" />
                        <input type="hidden" class="" name="quantity" value="1" />
                        <button type="submit" class="btn btn-outline-success">+</button>
                        </form>
                        <button type="button" class="btn btn-outline-secondary mx-2 rounded px-5" disabled><%= quantity %></button>
                        <form action="cartRemoveAction.jsp">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <input type="hidden" name="productId" value="<%= id %>" />
                        <input type="hidden" class="" name="quantity" value="1" />
                        <button type="submit" class="btn btn-outline-danger">-</button>
                        </form>
                        
                        
                    </div>
                        
                    </div>
                    
                    
                    <% ite= ite + price*quantity; %>
<!--                    <form action="adminHomeAction.jsp" method="post">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <input type="hidden" name="productId" value="<%= id %>" />
                        <input type="number" name="quantity" min="1" value="1" />
                        <input type="submit" value="Add to Cart" />
                    </form>-->
                        
                    </div>
                </div>
        </div>
    </div>
                        
            
    <%
            }
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            if(rs != null) try { rs.close(); } catch(SQLException e) {}
            if(stmt != null) try { stmt.close(); } catch(SQLException e) {}
            if(conn != null) try { conn.close(); } catch(SQLException e) {}
        }
    %>
        </div>
        <br>
        <br>
        <br>
        
        </div>
      </div>
        <br>
        <div class="fixed-bottom " >
      <div class="w-100  rounded mx-auto" >
          <form action="order.jsp" method='post'>
              <div class="mb-3 justify-content-end px-5 pt-2 " style="display:flex;">
                  <div class=" p-3 pb-0 border rounded" style="display:flex; background-color: #CBEFED;">
                       
                  <p class=" badge border   rounded fs-5 me-3 p-3 " style="background-color: #21C1AB;">Total Price: ₹<%= ite %></p>
                  <input type="hidden" name="email" value="<%=email %>" />
                  <input type="hidden" name="number" value="<%=ite %>" />
                  <p> <button type="submit" class=" badge border bg-primary rounded p-3 fs-5 ms-4 "  >Buy Now</button> </p>
                               
                  </div>
              </div>
                        </form>
                        </div>
        </div>
      
      
</body>
</html>