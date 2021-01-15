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
	Statement stmt=con.createStatement();
	String SQL="select * From PROJECT";
	ResultSet rs = stmt.executeQuery(SQL);
	while(rs.next()){
        //Retrieve by column name
        int PNo  = rs.getInt("PNo");
       String PRJName = rs.getString("PRJName");
        String PRJDur = rs.getString("PRJDur");
        String PRJPlat= rs.getString("PRJPlat");

        //Display values
       out.print("Student No.:" + PNo);
      out.print(", Student Name: " +PRJName);
        out.print(", Date Of Birth: " + PRJDur);
        out.println(", Date Of Join: " + PRJPlat);
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