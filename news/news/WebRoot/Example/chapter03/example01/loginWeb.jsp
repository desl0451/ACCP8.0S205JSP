<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginWeb.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
<%
	  Integer count = (Integer) application.getAttribute("count");
	  if(count !=  null){
		  count = 1 + count;
	  }else{
		  count = 1;	 	
	  }
	  application.setAttribute("count", count);
%>
  
  
  <body>
    <form name="loginForm" method="post" action="Example/chapter03/example1/showCount.jsp">
			用户名：<input type="text" name="userName" />
			密码：<input type="password" name="pwd" />
			<input type="submit" value="登录">
		</form>
  </body>
</html>

  </body>
</html>
