<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>write</title>
</head>
<body>
	<form action="insert.jsp" method="post" onsubmit="return formCheck();">
		���� : <input type="text" name="title" /> <br>
		�ۼ��� : <input type="text" name="writer" /> <br> 
		��¥ : <input type="text" name="regdate" /> <br>
		���� : <textarea rows="10" cols="20" name="content"></textarea> <br>  
		��ȸ�� : <br> <input type="submit" /> 
	</form>
	<script> 
			function formCheck() {
				/* for(var i=0; i<document.forms[0].length-1; i++) {
					if(!document.forms[0][i].value) {
						alert(document.forms[0][i].name + '��(��) �Է����ּ���');
						document.forms[0][i].focus();
						return false;
					}  
				}*/
				var title = document.forms[0].title.value;
				var writer = document.forms[0].writer.value;
				var content = document.forms[0].content.value;
				var regdate = document.forms[0].regdate.value;
			
				if(!title) {
					alert('������ �Է��ϼ���');
					document.forms[0].title.focus();
					return false;
				}

				if(!writer) {
					alert('�ۼ��ڸ� �Է��ϼ���');
					document.forms[0].writer.focus();
					return false;
				} else if(writer.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null) {
					alert('�̸��� �������� �Է��ϼ���');
					document.forms[0].writer.focus();
					return false;
				}	
				
				if(!content) {
					alert('������ �Է��ϼ���');
					document.forms[0].content.focus();
					return false;
				}
				
				if(!regdate) {
					alert('��¥�� �Է��ϼ���');
					document.forms[0].regdate.focus();
					return false;
				} else if(!regdate.match(/^(\d\d\d\d\d\d)$/ig)) {
					alert('6�ڸ� ���ڷ� �Է��ϼ���');
					document.forms[0].regdate.focus();
					return false;
				}
			}
		</script>
</body>
</html>