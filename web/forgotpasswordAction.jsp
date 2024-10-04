

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email"); 
String mobile=request.getParameter("mobile"); 
String security_question=request.getParameter("security_question");
String security_answer=request.getParameter("security_answer"); 
String password=request.getParameter("password"); 
int check=0;
try{
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/leggero", "root", "root");
    Statement st= conn.createStatement(); 
    ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and mobile='"+mobile+"' and security_question='"+security_question+"' and security_answer='"+security_answer+"' "); 

	while(rs.next())
        {
            check=1;
            st.executeUpdate("update user set password = '"+password+"' where email = '"+email+"' ");
        }
        rs.close();
        response.sendRedirect("forgotPassword.jsp?msg1=done");

	if(check==0)
        { 
            response.sendRedirect("forgotPassword.jsp?msg1=invalid");
        } 
}
catch (Exception e) {
e.printStackTrace();
        response.sendRedirect("forgotPassword.jsp?msg1=done");
}
%>
