<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/5/16
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>
<html>
<head>
    <title>Title</title>
    <script>
        debug("aaaaa")
    </script>
</head>
<body>
验证码：<img src="<%=path%>/verificationCode/kaptcha.jpg" alt="验证码" style="height: 30px; width: 120px" />
</body>
</html>
