<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Bulletin Board List</title>
	</head>
	
	<% 
		int idx = 1;
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String regdate = request.getParameter("regdate");
		String content = request.getParameter("content");
		int count = 10000;
	%>
	<body>
		<h1>게시글 리스트</h1>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td><%=idx %></td>
				<td><%=title %></td>
				<td><%=writer %></td>
				<td><%=regdate %></td>
				<td><%=count %></td>
			</tr>
		</table> <br>
		
		<a href="write.jsp">Write</a>
	</body>
</html>