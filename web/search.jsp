<%-- 
    Document   : search
    Created on : Jul 5, 2024, 8:06:04 PM
    Author     : bikku
--%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
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
  <link rel="icon" type="image/x-icon" href="logo.png">
        <title>Search</title>
        <style>
            body{
             font-family: "Poppins", sans-serif;
             font-weight: 400;
             font-style: normal;
        }
        </style>
    </head>
    <body class="bg-light">
        
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
    
        
        
       
        <% 
                      String search=request.getParameter("search");
                      String category=request.getParameter("category");
                      String all="all";
                  %>        
        <div class="rounded mx-4" style="background-color:#C8E1FF; ">
            <div class="justify-content-center mb-3  " style="display: flex; ">
                <h2 class=" w-100 py-1 text-center rounded-top text-light fw-light" style="background-color:#1984EA;">Search Results For <span class="fw-bold" > <%=search %> </span> in  <span class="fw-bold" > <%=category %> </span></h2>
            </div>
     <div  class="mx-3 my-0 pro1" style="display: flex; flex-wrap: wrap;">     
         
    <%
        
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
        Statement stmt= conn.createStatement(); 
        ResultSet rs = stmt.executeQuery("SELECT * FROM products WHERE name LIKE '%"+search+"%';");

        if(category.equals(all) )
        {         
            rs = stmt.executeQuery("SELECT * FROM products WHERE name LIKE '%"+search+"%';");
        }
        else{
           rs = stmt.executeQuery("SELECT * FROM products WHERE (category='"+category+"') and (name LIKE '%"+search+"%')  ");
        }
        try {
              
            while(rs.next()) {
                String img = rs.getString("image");
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String description = rs.getString("description");
                // display the image
    
    %>
    
    <div class="cards rounded border text-dark bg-white" style="width:260px; margin-right:1rem; ">
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
      
    </body>
</html>
