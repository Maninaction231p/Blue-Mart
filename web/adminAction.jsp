<%-- 
    Document   : adminAction
    Created on : Jul 4, 2024, 10:42:29 AM
    Author     : bikku
--%>
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name=request.getParameter("name");
String price=request.getParameter("price");
String description=request.getParameter("description");
String img=request.getParameter("image");
String quantity=request.getParameter("quantity");
String category=request.getParameter("category");
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now(); 
PreparedStatement  st=null;


try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");    
    
           
    st = conn.prepareStatement("insert into products(name, price, description, image, category, quantity, timeadded) " + "values(?,?,?,?,?,?,'"+now+"')"); 
    st.setString(1, name); 
    st.setString(2, price); 
    st.setString(3, description); 
    st.setString(4, img);
    st.setString(5, category); 
    st.setString(6, quantity); 
    int count = st.executeUpdate(); 
		      
    
    
    response.sendRedirect("admin.jsp?msg=valid");
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

