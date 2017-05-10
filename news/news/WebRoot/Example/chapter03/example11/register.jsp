<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/news.js"></script>
</head>
<%
	//获取验证消息
	request.setCharacterEncoding("UTF-8");
	String message = (String) request.getAttribute("message");
%>
<body>
	<div id="mess" style="color:red;">
		<%=message != null && !message.equals("") ? message : ""%>
	</div>
	<form action="Example/chapter03/example11/control.jsp" method="post"
		name="form1" onsubmit="return checkAll()">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input onblur="checkAll()" type="text" name="userName"
					value='<%=request.getParameter("userName") == null ? "" : request.getParameter("userName")%>' /></td>
			</tr>
			<tr>
				<td>输入登录密码:</td>
				<td><input type="password" name="pwd" 
				value='<%=request.getParameter("pwd") == null ? "" : request.getParameter("pwd")%>' /></td>
			</tr>
			<tr>
				<td>再次登录密码:</td>
				<td><input type="password" name="validatepwd" 
				value='<%=request.getParameter("validatepwd") == null ? "" : request.getParameter("validatepwd")%>'/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="注册" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
