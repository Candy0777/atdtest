<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	System.out.println("***Driver OK***");
	String s1="jdbc:mysql://localhost:3306/atdtest";
	String s2="root";
	String s3="root";
	Connection con=DriverManager.getConnection(s1,s2,s3);
	System.out.println("***Connection Established***");

	String SNo=request.getParameter("SNo");
	String SName=request.getParameter("SName");
	String DOB=request.getParameter("DOB");
	String DOJ=request.getParameter("DOJ");
		PreparedStatement stmt=con.prepareStatement("insert into STUDENT values(?,?,?,?)");
		stmt.setString(1,SNo);
		stmt.setString(2,SName);
		stmt.setString(3,DOB);
		stmt.setString(4,DOJ);
		
		stmt.executeUpdate();
		out.println(" \n\nStudent Registered Successfully<br/>");	

	


}

catch(Exception e)
{
	System.out.println("DB Error "+e);
}





%>
<br><br><a href="Home.jsp">Back To Homepage</a><br>
</body>
</html>