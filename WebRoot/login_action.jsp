<%@ page language="java" import="java.util.*,user.entity.*,user.biz.*" pageEncoding="GBK"%>
<%
request.setCharacterEncoding("GBK");
String username = request.getParameter("username");
String password = request.getParameter("password");
String message = "";
if(!"".equals(username)){//username != null && username.length > 0
	message += "�û�������Ϊ��<br>";
}
if (!"".equals(password)){
	message += "���벻��Ϊ��<br>";
}
if (!"".equals(message)){
	UserManager manager = new UserManager();
	User user = new User();
	user.setUsername(username);
	user.setPassword(password);
	boolean result = manager.login(user);
	if (result){
	message = "��¼�ɹ�";
	user = manager.fineUserByUsernamePassword(user);
	session.setAttribute("user", user);
	}
	else{
	message = "��¼ʧ��";
}
request.setAttribute("message", message);
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>��¼���</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">


  </head>
  
  <body>
    ${message}<br>
    
	<a href="index.jsp">������ҳ<br/></a><a href="logout.jsp">�ǳ�</a>
	
  </body>
</html>
