package com.Program.Jersey;
import java.sql.*;
public class Dbtest {
	public static void main(String[] args) throws ClassNotFoundException
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("***Driver OK***");
			String s1="jdbc:mysql://localhost:3306/atdtest";
			String s2="root";
			String s3="root";
			Connection con=DriverManager.getConnection(s1,s2,s3);
			System.out.println("***Connection Established***");
	/*		
			Statement stmt=con.createStatement();
			String SQL="create table Regis(mail varchar(40) primary key,name varchar(30),phno varchar(10),pass varchar(10))";
		//	stmt.executeUpdate(SQL);
		//	out.println("Table Created<br/>");
			
			PreparedStatement stmt=con.prepareStatement("insert into Regis values(?,?,?,?)");
			stmt.setString(1,mail);
			stmt.setString(2,name);
			stmt.setString(3,phno);
			stmt.setString(4,pass);
			
			stmt.executeUpdate();
			out.println(name+" Has Been Registered Successfully<br/>");
			*/
		}
		catch(SQLException e)
		{
			System.out.println("DB Error "+e);
		}
	}

}
