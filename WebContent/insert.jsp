<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset="EUC-KR">
</head>
<% 
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String regdate = request.getParameter("regdate");
	String content = request.getParameter("content");
	
	if(title == "" ||title == null) out.println("title이 null입니다.");
	 
	if(writer == "" ||writer == null)
	    out.println("writer가 null입니다.");   
	else if(!Pattern.matches("^[_0-9a-zA-Z-]+@[0-9a-zA-Z-]+(.[_0-9a-zA-Z-]+)*$", writer))
	    out.println("이메일 형식이 아닙니다.");
	 
	if(regdate == "" ||regdate == null)
	    out.println("regdate가 null입니다.");
	else if(!Pattern.matches("^[0-9]*$", regdate))
	    out.println("숫자형식이 아닙니다.");
	 
	if(content == "" ||content == null) out.println("content가 null입니다.");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "user", "4321");
		out.println("데이터베이스 접속 성공");
		
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO board (title, writer, regdate, count, content) VALUES ('"+title+"','"+writer+"', '"+regdate+"', '1', '"+content+"');";
		stmt.executeUpdate(sql);
		con.close();
	} catch (Exception e) {
		out.println("데이터베이스 접속 실패");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>

<body>
	
</body>
</html>