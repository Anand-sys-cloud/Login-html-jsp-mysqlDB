<%@page import="java.sql.*"%>

<%
String name=request.getParameter("name");
String mobileNo=request.getParameter("mobileNo");
String email=request.getParameter("email");
String password=request.getParameter("password");
String url="jdbc:mysql://localhost:3306/";
String dbname="emp";
String uname="root";
String pwd="root";

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","root");
	System.out.println("Connection established anand");
	String insert ="insert into emp.user values (?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(insert);
	ps.setString(1,name );
	ps.setString(2, mobileNo);
	ps.setString(3, email);
	ps.setString(4,password);
	ps.executeUpdate();
	System.out.println("one record inserted anand");
	response.sendRedirect("save.html");
	}
	catch(Exception e)
	{
	    e.printStackTrace();//sendRedirect("error.html");
	}



	%>