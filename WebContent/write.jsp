<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>write</title>
</head>
<body>
	<form action="insert.jsp" method="post" onsubmit="return formCheck();">
		제목 : <input type="text" name="title" /> <br>
		작성자 : <input type="text" name="writer" /> <br> 
		날짜 : <input type="text" name="regdate" /> <br>
		내용 : <textarea rows="10" cols="20" name="content"></textarea> <br>  
		조회수 : <br> <input type="submit" /> 
	</form>
	<script> 
			function formCheck() {
				/* for(var i=0; i<document.forms[0].length-1; i++) {
					if(!document.forms[0][i].value) {
						alert(document.forms[0][i].name + '을(를) 입력해주세요');
						document.forms[0][i].focus();
						return false;
					}  
				}*/
				var title = document.forms[0].title.value;
				var writer = document.forms[0].writer.value;
				var content = document.forms[0].content.value;
				var regdate = document.forms[0].regdate.value;
			
				if(!title) {
					alert('제목을 입력하세요');
					document.forms[0].title.focus();
					return false;
				}

				if(!writer) {
					alert('작성자를 입력하세요');
					document.forms[0].writer.focus();
					return false;
				} else if(writer.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null) {
					alert('이메일 형식으로 입력하세요');
					document.forms[0].writer.focus();
					return false;
				}	
				
				if(!content) {
					alert('내용을 입력하세요');
					document.forms[0].content.focus();
					return false;
				}
				
				if(!regdate) {
					alert('날짜를 입력하세요');
					document.forms[0].regdate.focus();
					return false;
				} else if(!regdate.match(/^(\d\d\d\d\d\d)$/ig)) {
					alert('6자리 숫자로 입력하세요');
					document.forms[0].regdate.focus();
					return false;
				}
			}
		</script>
</body>
</html>