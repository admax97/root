<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<link>
    <title>test</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <link  rel="stylesheet" type="text/css" href="${ctx}/static/css/style.css"/>
    <!-- 参照 http://www.gulpjs.com.cn/-->
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top site-navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${ctx}/test/login">Test首页</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${ctx}/test/upload">文件上传Demo</a>
                </li>
                <li><a href="${ctx}/test/jsonDemo">返回Json数据Demo</a>
                </li>
                <li><a href="${ctx}/test/login">登录</a>
                </li>
                <%--<li><a href="docs/api/">API</a>--%>
                <%--</li>--%>
                <%--<li><a href="docs/writing-a-plugin/">插件开发</a>--%>
                <%--</li>--%>
                <%--<li><a href="docs/faq/">常见问题</a>--%>
                <%--</li>--%>
                <%--<li><a href="docs/recipes/">使用技巧</a>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>
<header class="jumbotron">
</header>
<main class="benefits container">
    <!-- Example row of columns -->
    <div class="row">
        <form class="form-horizontal" action="${ctx}/test/userRegProc" method="post" name="regForm" id="regForm">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" name="email" id="inputEmail3" placeholder="Email">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" name="passwd" class="form-control" id="inputPassword3" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Remember me
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Reg Member</button>
                </div>
            </div>
        </form>
    </div>
</main>
<footer class="footer">
    <div class="container">
        <p>© Gulp 中文网 2015</p>
        <p><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备11008151号</a> | 京公网安备11010802014853</p>
    </div>
</footer>
</body>
</html>
