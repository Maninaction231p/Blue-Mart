

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email"); 
String password=request.getParameter("password"); 
Class.forName("com.mysql.jdbc.Driver"); 
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
Statement st= conn.createStatement(); 
ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'"); 
try{
	rs.next();
	        if(rs.getString("password").equals(password)&&rs.getString("email").equals(email)) 
			{ 
                            session.setAttribute("email",email);
                            response.sendRedirect("adminHome.jsp");
                            
                            
			} 
		else{
			 System.out.println("Invalid password or email.");
                         response.sendRedirect("login.jsp?msg=invalid");
                     %>
                     <script> 
                         window.alert("Invalid password or email");
                    </script>
                     <%

		    }
}
catch (Exception e) {
e.printStackTrace();
            response.sendRedirect("login.jsp?msg=failed");

}
%>
