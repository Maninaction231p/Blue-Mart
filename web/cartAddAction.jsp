<%-- 
    Document   : cartAction
    Created on : Jul 6, 2024, 5:25:02 PM
    Author     : bikku
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String productId=request.getParameter("productId");
String email=request.getParameter("email");
String quantity=request.getParameter("quantity");
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now();  


try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
    Statement st=conn.createStatement();       
    int i=st.executeUpdate("insert into cart(email,product_id,quantity,addedtime) values('"+email+"','"+productId+"','"+quantity+"','"+now+"')");
            System.out.println("Data is successfully inserted!");
            
            response.sendRedirect("cart.jsp?msg212=valid");
          
        }
        catch(Exception e)
        {
            response.sendRedirect("cart.jsp?msg212=invalid");
            
            System.out.println( e.getMessage());
        }
 %>

