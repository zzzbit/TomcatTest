<%@ page language="java" import="java.util.*,user.entity.*,user.biz.*" pageEncoding="GBK"%>
<%
request.setCharacterEncoding("GBK");
String username = request.getParameter("username");
String password = request.getParameter("password");
String message = "";
if(!"".equals(username)){//username != null && username.length > 0
	message += "用户名不能为空<br>";
}
if (!"".equals(password)){
	message += "密码不能为空<br>";
}
if (!"".equals(message)){
	UserManager manager = new UserManager();
	User user = new User();
	user.setUsername(username);
	user.setPassword(password);
	boolean result = manager.login(user);
	if (result){
	message = "登录成功";
	user = manager.fineUserByUsernamePassword(user);
	session.setAttribute("user", user);
	}
	else{
	message = "登录失败";
}
request.setAttribute("message", message);
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>登录结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">


  </head>
  
  <body>
    ${message}<br>
    
	<a href="index.jsp">返回首页<br/></a><a href="logout.jsp">登出</a>
	
  </body>
</html>
