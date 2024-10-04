
<%-- 
    Document   : allOrders
    Created on : Jul 5, 2024, 9:37:01 PM
    Author     : bikku
--%>

<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.io.*"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
        <title>Success</title>
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
                  <li><a class="dropdown-item" href="#">Orders</a></li>
                  <li><hr class="dropdown-divider"></li>
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
     
           
                        <div class="mx-5 p-3 rounded" style="background-color: #CCEEED; display: flex;">
                            <div>
                                <img src="success.png" width="200px">
                            </div>
                            
                            <div class="px-4">
                            <h1 style="color: #22BFAA; font-size: 72px;">Success</h1>
                            <h3 class=" bg-light text-secondary p-2 rounded"  >Your Order will be at your Doorsteps</h3>
                            </div>
                            
                            
                        </div>
                        
                        <br>
                        
                        <button class="btn mx-5 btn-outline-success" onclick="location.href ='adminHome.jsp'">Home</button>
                    
                        
                        
                        
   
    </body>
</html>
