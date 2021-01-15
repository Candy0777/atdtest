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

	int choice=Integer.parseInt(request.getParameter("choice"));
	String update=request.getParameter("Update");
	String Name=request.getParameter("Name");
	//out.println(Name+choice+update);
	switch(choice)
	{
	case 1: PreparedStatement stmt=con.prepareStatement("UPDATE PROJECT SET PNo= ? Where PRJName=? ");	
					stmt.setString(1,update); 
					stmt.setString(2,Name);
					if(stmt.executeUpdate()==1)
					{
					out.println("Project Data Updated Succesfully<br/>");
					}
					else
					{
					out.println("Value Mismatch");
					}
					break;
	case 2 : PreparedStatement stmt3=con.prepareStatement("UPDATE PROJECT SET PRJName= ? Where PRJName=? ");	
	stmt3.setString(1,update); 
	stmt3.setString(2,Name);
	if(stmt3.executeUpdate()==1)
	{
	out.println("Project Data Updated Succesfully<br/>");
	}
	else
	{
	out.println("Value Mismatch");
	}
	break;
	case 3: PreparedStatement stmt2=con.prepareStatement("UPDATE PROJECTSET PRJDur= ? Where PRJName=? ");	
	stmt2.setString(1,update); 
	stmt2.setString(2,Name);
	if(stmt2.executeUpdate()==1)
	{
	out.println("ProjectData Updated Succesfully<br/>");
	}
	else
	{
	out.println("Value Mismatch");
	}
	break;
	case 4: PreparedStatement stmt1=con.prepareStatement("UPDATE PROJECT SET PRJPlat= ? Where PRJName=? ");	
	stmt1.setString(1,update); 
	stmt1.setString(2,Name);
	if(stmt1.executeUpdate()==1)
	{
	out.println("Project Data Updated Succesfully<br/>");
	}
	else
	{
	out.println("Value Mismatch");
	}
	break;
		
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