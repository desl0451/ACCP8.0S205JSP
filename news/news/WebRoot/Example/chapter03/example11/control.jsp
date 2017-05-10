<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="cn.news.chapter03.entity.NewsUser"%>
<%@ page import="cn.news.chapter03.dao.impl.NewsUserDaoImpl"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册处理页面</title>

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
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		String validatepwd = request.getParameter("validatepwd");
		if (name == null || name.equals("")) {
			request.setAttribute("message", "用户名不能为空");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else if (pwd == null || pwd.equals("")) {
			request.setAttribute("message", "密码不能为空");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else if (!validatepwd.equals(pwd)) {
			request.setAttribute("message", "两次输入的密码不致");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else {
			NewsUser newsUser = new NewsUser(name, pwd);
			int result = new NewsUserDaoImpl().insert(newsUser);
			if (result > 0) {
				response.sendRedirect("login.jsp");
			} else {
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
		}
	%>
</body>
</html>
