<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>»¶Ó­¹âÁÙ</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
    This is my JSP page. <br>
    <big><i><strong>Hello</strong></i></big>,${user.username }.

	<br>
	<a title="Hello" href="login.jsp">µÇÂ½</a>
	<a title="Hello" href="logout.jsp">ÍË³ö</a>
</body>
</html>
