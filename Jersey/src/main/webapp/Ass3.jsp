<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AtdAss3.jsp" method="POST">
Enter Student Name<br><input type="text" name="Name"><br>
Which Field You Want To Update<br>
<input type="radio" name="choice" value="1">Student No<br>
<input type="radio" name="choice" value="2">Student Name<br>
<input type="radio" name="choice" value="3">Student Date Of Birth<br>
<input type="radio" name="choice" value="4">Student Date Of Joining<br>
Enter Value<br><input type="text" name="Update"><br>
<br><input type="submit" value="Update Student">
</body>
</html>