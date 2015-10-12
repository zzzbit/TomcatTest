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
alert("用户名不能为空！");
form.username.focus();
return false;
}
else{
return true;}
}
</script>
  </head>
  
  <body>
    请登录.<br><form method="post" action="login_action.jsp" onsubmit="return checkForm(this)">
		<table width="100%" border="0"><tr><td>用户名：</td>
				<td style="width: 144px; "><input name="username"></td>
			</tr>
			<tr>
				<td style="width: 285px; ">密码：</td>
				<td><input name="password" type="password" style="width: 154px; "></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
	<a href ="index.jsp">返回首页</a>
	<br>
  </body>
</html>
