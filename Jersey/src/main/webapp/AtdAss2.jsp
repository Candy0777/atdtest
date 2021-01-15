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

	
	String Name=request.getParameter("Name");
		PreparedStatement stmt=con.prepareStatement("DELETE FROM STUDENT WHERE StdName=?");	
		stmt.setString(1,Name);
		if(stmt.executeUpdate()==1)
		{
		out.println("Record Deleted Succesfully<br/>");
		}
		else
		{
			out.println("Value Mismatch");
	}
}
catch(Exception e)
{
	System.out.println("DB Error "+e);
}





%>
<br><br><a href="Home.jsp">Back To Homepage</a><br>
</body>
</html>