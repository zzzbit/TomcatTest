<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">

<script type="text/javascript">
function checkForm(form){
if (form.username.value == ""){
alert("�û�������Ϊ�գ�");
form.username.focus();
return false;
}
else{
return true;}
}
</script>
  </head>
  
  <body>
    ���¼.<br><form method="post" action="login_action.jsp" onsubmit="return checkForm(this)">
		<table width="100%" border="0"><tr><td>�û�����</td>
				<td style="width: 144px; "><input name="username"></td>
			</tr>
			<tr>
				<td style="width: 285px; ">���룺</td>
				<td><input name="password" type="password" style="width: 154px; "></td>
			</tr>
			<tr>
				<td><input type="submit" value="��¼"></td>
				<td><input type="reset" value="����"></td>
			</tr>
		</table>
	</form>
	<a href ="index.jsp">������ҳ</a>
	<br>
  </body>
</html>
