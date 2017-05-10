<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>方法声明</title>
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
			<%!
				String formatDate(Date d){
					SimpleDateFormat formater=new SimpleDateFormat("yyyy年MM月dd日");
					return formater.format(d);
			    }
			%>
			第一次调用, 今天是<%=formatDate(new Date()) %>
			<br/>
			第二次调用, 今天是<%=formatDate(new Date()) %>
			
</body>
</html>
