<%-- 
    Document   : orderAction
    Created on : Jul 5, 2024, 9:21:28 PM
    Author     : bikku
--%>

<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String totalmoney=request.getParameter("totalmoney");
String street=request.getParameter("street");
String land_mark=request.getParameter("land_mark");
String city=request.getParameter("city");
String state=request.getParameter("state");
String address=request.getParameter("address");
String email=(String)session.getAttribute("email");

DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now(); 
PreparedStatement  st=null;

PreparedStatement  st3=null;
 
try
{
      Class.forName("com.mysql.jdbc.Driver");   
    
    
    Connection conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");         
    st3 = conn3.prepareStatement("DELETE FROM cart WHERE email = '"+email+"'"); 
    int cou = st3.executeUpdate();
    
    
  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");    
   
    
           
    st = conn.prepareStatement("insert into address(email, street, land_mark, city, state, address, added_date) " + "values(?,?,?,?,?,?,'"+now+"')"); 
    st.setString(1, email); 
    st.setString(2, street); 
    st.setString(3, land_mark); 
    st.setString(4, city);
    st.setString(5, state); 
    st.setString(6, address); 
    int count = st.executeUpdate(); 
		      
    
    session.setAttribute("email",email);
    response.sendRedirect("success.jsp?msg=valid");
        %>
        <script> 
            window.location='login.html';
        </script>
        <%    
        }
        catch(Exception e)
        {
//            response.sendRedirect("admin.jsp?msg=invalid");
            
            out.println( e.getMessage());

        }
 %>


