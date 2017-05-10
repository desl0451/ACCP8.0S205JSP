<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
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
       Integer count=(Integer)application.getAttribute("count");
    if(count!=null){
    	count=count+1;	
    }else{
    	count=1;
    }
    application.setAttribute("count", count);
    %>
    <form action="Exercises/chapter03/showCount.jsp" method="post" name="">
    	用户名:<input type="text" name="username"/>
    	密&nbsp;&nbsp;&nbsp;码:<input type="text" name="password"/>
    	<input type="submit" value="登录"/>
    	<input type="reset" value="重置"/>
    </form>
  </body>
</html>
