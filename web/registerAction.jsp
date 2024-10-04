<%-- 
    Document   : register
    Created on : Jun 26, 2024, 7:24:55 PM
    Author     : bikku
--%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String full_name=request.getParameter("fullname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String mobile=request.getParameter("mobile");
String security_question=request.getParameter("security_question");
String security_answer=request.getParameter("security_answer");
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now();  


try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
    Statement st=conn.createStatement();       
    int i=st.executeUpdate("insert into user(full_name,email,password,mobile,security_question,security_answer,registered_date) values('"+full_name+"','"+email+"','"+password+"','"+mobile+"','"+security_question+"','"+security_answer+"','"+dtf.format(now)+"')");
            System.out.println("Data is successfully inserted!");
            response.sendRedirect("register.jsp?msg=valid");
        %>
        <script> 
            window.location='login.html';
        </script>
        <%    
        }
        catch(Exception e)
        {
            response.sendRedirect("register.jsp?msg=invalid");
            
            System.out.println( e.getMessage());
        }
 %>
