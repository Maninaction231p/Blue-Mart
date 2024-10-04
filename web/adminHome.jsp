<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.io.*"%>
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
    <style>
        .img_top{
            overflow: hidden;
        }
        .img_top img{
            transition: all .2s ease-in-out;
        }
        .img_top img:hover{
            transform: scale(1.2);
        }
            /* Hide scrollbar for Chrome, Safari and Opera */
        
        .pro1{
        scrollbar-color: #ffffff99 #ffffff25;
        scrollbar-width: thin;
        }
       
        body{
             font-family: "Poppins", sans-serif;
             font-weight: 400;
             font-style: normal;
        }

    </style>
    <link rel="icon" type="image/x-icon" href="logo.png">
    <title>Home</title>
</head>
<body class="bg-light ">
  <%
            String msg=request.getParameter("msg21");
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
                    
                <%
            }
            
    %><% 
                      String email=(String)session.getAttribute("email");
                  %>
                  <script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>
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
     <div class="px-4">
        <br>
        <div id="carouselExampleIndicators" class="carousel slide">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner rounded">
            <div class="carousel-item active">
              <img src="https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1720178886/Croma%20Assets/CMS/Homepage%20Banners/HP%20Rotating/2024/July/06072024/Desktop/HP_Rotating_AC_6july24_si6ap4.jpg" height="240px" class="img-fluid d-block rounded w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1720178935/Croma%20Assets/CMS/Homepage%20Banners/HP%20Rotating/2024/July/06072024/Desktop/HP_Rotating_TV_6Jjuly24_ahz1mr.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1720178937/Croma%20Assets/CMS/Homepage%20Banners/HP%20Rotating/2024/July/06072024/Desktop/HP_Rotating_WM_6july24_glhowh.jpg" class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
        </div>
        <br>
        <div class="rounded mx-4" style="background-color:#C8E1FF; ">
            <div class="justify-content-center mb-3  " style="display: flex; ">
         <h2 class=" w-100 py-1 text-center rounded-top text-light" style="background-color:#1984EA;">Products</h2>
            </div>
     <div  class="mx-3 my-0 pro1" style="display: flex; overflow-x: scroll;">     
         
    <%
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
        Statement stmt= conn.createStatement(); 
        ResultSet rs = stmt.executeQuery("SELECT * FROM products");
        
        try {
              
            while(rs.next()) {
                String img = rs.getString("image");
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String description = rs.getString("description");
                // display the image
    
    %>
    
    <div class="cards col-lg-3 rounded border text-dark bg-white" style="width:260px; margin-right:2rem; ">
        <div class="img_top">
         <img src= "<%= img %>" class="rounded-top w-100" style="opacity:08;" width="100%" >
        </div>
        <div class="px-lg-2 pb-lg-2 mt-lg-1">
                    <h5 class="text-truncate text-secondary mb-1" data-toggle="tooltip" title="<%= name %>"><%= name %></h5>            
                    <h4 class="text-center">₹<%= price %></h4>
                    
                    <form action="adminHomeAction.jsp" method="post">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <input type="hidden" name="productId" value="<%= id %>" />
                        <input type="hidden" class="" name="quantity" value="1" />
                        <div class="d-flex w-100 justify-content-between ">
                            
                            <input type="submit" class="btn btn-primary w-100" value="Add to Cart"/>
                            
                        </div>
                        
                    </form>
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
        </div>
      
      <br>
      
     <div class="rounded mx-4" style="background-color:#C9F1ED; ">
        <div class="justify-content-center  mb-3  " style="display: flex; ">
         <h2 class=" w-100 py-1 text-center rounded-top text-light" style="background-color:#1EC4AB;">Electronics</h2>
            </div> 
     <div  class="mx-3 my-0 pro1" style="display: flex; overflow-x: scroll;">     
         
    <%
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
        Statement stmt1= conn1.createStatement(); 
        ResultSet rs1 = stmt1.executeQuery("SELECT * FROM products where category = 'electronics'");
        
        try {
              
            while(rs1.next()) {
                String img = rs1.getString("image");
                int id = rs1.getInt("id");
                String name = rs1.getString("name");
                double price = rs1.getDouble("price");
                String description = rs1.getString("description");
                // display the image
    
    %>
    
    <div class="cards col-lg-3 rounded border text-dark bg-white" style="width:260px; margin-right:2rem; ">
        <div class="img_top">
         <img src= "<%= img %>" class="rounded-top w-100" style="opacity:08;" width="100%" >
        </div>
        <div class="px-lg-2 pb-lg-2 mt-lg-1">
                    <h5 class="text-truncate text-secondary mb-1" data-toggle="tooltip" title="<%= name %>"><%= name %></h5>            
                    <h4 class="text-center">₹<%= price %></h4>
                    
                    <form action="adminHomeAction.jsp" method="post">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <input type="hidden" name="productId" value="<%= id %>" />
                        <input type="hidden" class="" name="quantity" value="1" />
                        <div class="d-flex w-100 justify-content-between ">
                            
                            <input type="submit" class="btn btn-primary w-100" value="Add to Cart"/>
                            
                        </div>
                        
                    </form>
                    </div>
                </div>
    <%
            }
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            if(rs1 != null) try { rs1.close(); } catch(SQLException e) {}
            if(stmt1 != null) try { stmt1.close(); } catch(SQLException e) {}
            if(conn1 != null) try { conn1.close(); } catch(SQLException e) {}
        }
    %>
    </div>
     </div>
         
            <br>
                   
     <div class="rounded mx-4" style="background-color:#FFD0E2; ">
        <div class="justify-content-center mb-3 " style="display: flex; ">
         <h2 class=" w-100 py-1 text-center rounded-top text-light" style="background-color:#F44381;">Fashion</h2>
            </div> 
     <div  class="mx-3 my-0 pro1" style="display: flex; overflow-x: scroll;">     
         
    <%
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
        Statement stmt2= conn2.createStatement(); 
        ResultSet rs2 = stmt2.executeQuery("SELECT * FROM products where category ='fashion'");
        
        try {
              
            while(rs2.next()) {
                String img = rs2.getString("image");
                int id = rs2.getInt("id");
                String name = rs2.getString("name");
                double price = rs2.getDouble("price");
                String description = rs2.getString("description");
                // display the image
    
    %>
    
    
    
    <div class="cards col-lg-3 rounded border text-dark bg-white" style="width:260px; margin-right:2rem; ">
        <div class="img_top">
         <img src= "<%= img %>" class="rounded-top w-100" style="opacity:08;" width="100%" >
        </div>
        <div class="px-lg-2 pb-lg-2 mt-lg-1">
                    <h5 class="text-truncate text-secondary mb-1" data-toggle="tooltip" title="<%= name %>"><%= name %></h5>            
                    <h4 class="text-center">₹<%= price %></h4>
                    
                    <form action="adminHomeAction.jsp" method="post">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <input type="hidden" name="productId" value="<%= id %>" />
                        <input type="hidden" class="" name="quantity" value="1" />
                        <div class="d-flex w-100 justify-content-between ">
                            
                            <input type="submit" class="btn btn-primary w-100" value="Add to Cart"/>
                            
                        </div>
                        
                    </form>
                    </div>
                </div>
    <%
            }
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            if(rs2 != null) try { rs2.close(); } catch(SQLException e) {}
            if(stmt2 != null) try { stmt2.close(); } catch(SQLException e) {}
            if(conn2 != null) try { conn2.close(); } catch(SQLException e) {}
        }
    %>
            </div>
     </div>

      
            <br>
            
                            
     <div class="rounded mx-4" style="background-color:#EDCAF4; ">
            <div class="justify-content-center  mb-3 " style="display: flex; ">
         <h2 class=" w-100 py-1 text-center rounded-top text-light" style="background-color:#A72DCC;">Appliances</h2>
            </div> 
     <div  class="mx-3 my-0 pro1" style="display: flex; overflow-x: scroll;">     
         
    <%
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
        Statement stmt3= conn3.createStatement(); 
        ResultSet rs3 = stmt3.executeQuery("SELECT * FROM products where category = 'appliances'");
        
        try {
              
            while(rs3.next()) {
                String img = rs3.getString("image");
                int id = rs3.getInt("id");
                String name = rs3.getString("name");
                double price = rs3.getDouble("price");
                String description = rs3.getString("description");
                // display the image
    
    %>
    
    
    
    <div class="cards col-lg-3 rounded border text-dark bg-white" style="width:260px; margin-right:2rem; ">
        <div class="img_top">
         <img src= "<%= img %>" class="rounded-top w-100" style="opacity:08;" width="100%" >
        </div>
        <div class="px-lg-2 pb-lg-2 mt-lg-1">
                    <h5 class="text-truncate text-secondary mb-1" data-toggle="tooltip" title="<%= name %>"><%= name %></h5>            
                    <h4 class="text-center">₹<%= price %></h4>
                    
                    <form action="adminHomeAction.jsp" method="post">
                        <input type="hidden" name="email" value="<%=email %>" />
                        <input type="hidden" name="productId" value="<%= id %>" />
                        <input type="hidden" class="" name="quantity" value="1" />
                        <div class="d-flex w-100 justify-content-between ">
                            
                            <input type="submit" class="btn btn-primary w-100" value="Add to Cart"/>
                            
                        </div>
                        
                    </form>
                    </div>
                </div>
    <%
            }
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            if(rs3 != null) try { rs3.close(); } catch(SQLException e) {}
            if(stmt3 != null) try { stmt3.close(); } catch(SQLException e) {}
            if(conn3 != null) try { conn3.close(); } catch(SQLException e) {}
        }
    %>
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