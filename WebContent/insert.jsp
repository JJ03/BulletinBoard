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
	
	if(title == "" ||title == null) out.println("title�� null�Դϴ�.");
	 
	if(writer == "" ||writer == null)
	    out.println("writer�� null�Դϴ�.");   
	else if(!Pattern.matches("^[_0-9a-zA-Z-]+@[0-9a-zA-Z-]+(.[_0-9a-zA-Z-]+)*$", writer))
	    out.println("�̸��� ������ �ƴմϴ�.");
	 
	if(regdate == "" ||regdate == null)
	    out.println("regdate�� null�Դϴ�.");
	else if(!Pattern.matches("^[0-9]*$", regdate))
	    out.println("���������� �ƴմϴ�.");
	 
	if(content == "" ||content == null) out.println("content�� null�Դϴ�.");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "user", "4321");
		out.println("�����ͺ��̽� ���� ����");
		
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO board (title, writer, regdate, count, content) VALUES ('"+title+"','"+writer+"', '"+regdate+"', '1', '"+content+"');";
		stmt.executeUpdate(sql);
		con.close();
	} catch (Exception e) {
		out.println("�����ͺ��̽� ���� ����");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>

<body>
	
</body>
</html>