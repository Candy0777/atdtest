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
	out.println("***Driver OK***");
	String s1="jdbc:mysql://localhost:3306/atdtest";
	String s2="root";
	String s3="root";
	Connection con=DriverManager.getConnection(s1,s2,s3);
	out.println("***Connection Established***");
	Statement stmt=con.createStatement();
	String SQL="create table STUDENT(SNo varchar(3) primary key,StdName varchar(10),StdDOB date,StdDOJ date)";
	stmt.executeUpdate(SQL);
	out.println("Student Table Created<br/>");
	String SQL1="create table PROJECT(PNo varchar(3) primary key,PRJName varchar(10),PRJDur int,PRJPlat varchar(15))";
	stmt.executeUpdate(SQL1);
	out.println("Project Table Created<br/>");
	String SQL2="create table STUDENT_PROJECT(SNo varchar(3) references STUDENT(SNo),PNo varchar(10)references PROJECT(PNo),Designation varchar(15))";
	stmt.executeUpdate(SQL2);
	out.println("STUDENT_PROJECT Table Created<br/>");
	
}

catch(Exception e)
{
	System.out.println("DB Error "+e);
}


%>

</body>
</html>