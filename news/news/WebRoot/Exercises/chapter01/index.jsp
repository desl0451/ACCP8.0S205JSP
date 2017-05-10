<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>使用JSP/Servlet技术开发新闻发布系统</title>

    <!-- Bootstrap core CSS -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">

  </head>

  <body>
    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="#">主页　</a></li>
            <li role="presentation"><a href="#">关于</a></li>
            <li role="presentation"><a href="#">内容</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">使用JSP/Servlet技术开发新闻发布系统</h3>
      </div>

      <div class="jumbotron">
        <h1>ACCP8.0</h1>
        <p class="lead">在本课中,我们学习了使用HTML、CSS、JavaScript和jQuery制作静态网页的技术,JSP是由这静态页面元素和JSP元素组合而成的动态页面.</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Sign up today</a></p>
      </div>

      <div class="row marketing">
        <div class="col-lg-6">
          <h2>第一章  动态网页开发基础</h2>
          <p>
          	   <a href="exercise2.jsp">求2000-2013之间闰年个数</a>
          	   <br/>
          	   <a href="exercise3.jsp">求1-100之间质数</a><br/>
          </p>

          <h2>第二章  动态网页开发基础</h2>
          <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

          <h2>第三章  动态网页开发基础</h2>
          <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>

        <div class="col-lg-6">
          <h2>第一章  动态网页开发基础</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

          <h2>第一章  动态网页开发基础</h2>
          <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

          <h2>第一章  动态网页开发基础</h2>
          <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>
          <div class="col-lg-6">
          <h2>第一章  动态网页开发基础</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

          <h2>第一章  动态网页开发基础</h2>
          <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

          <h2>第一章  动态网页开发基础</h2>
          <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>
          <div class="col-lg-6">
          <h2>第一章  动态网页开发基础</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

          <h2>第一章  动态网页开发基础</h2>
          <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

          <h2>第一章  动态网页开发基础</h2>
          <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>
      </div>

      <footer class="footer">
        <p>&copy; 2016 Company, Inc.</p>
      </footer>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
