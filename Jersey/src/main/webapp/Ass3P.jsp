<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AtdAss3P.jsp" method="POST">
Enter Project Name<br><input type="text" name="Name"><br>
Which Field You Want To Update<br>
<input type="radio" name="choice" value="1">Project No<br>
<input type="radio" name="choice" value="2">Project Name<br>
<input type="radio" name="choice" value="3">Project Duration<br>
<input type="radio" name="choice" value="4">Project Platform<br>
Enter Value<br><input type="text" name="Update"><br>
<br><input type="submit" value="Update Project">
</body>
</html>