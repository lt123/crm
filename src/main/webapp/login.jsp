<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/5/3
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CRM系统登录</title>

    <script type="text/javascript">

    </script>
</head>
<body>

    <div id="btn">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="$('#')">重置</a>
    </div>

    <div class="easyui-dialog" style="width:300px;height:200px;padding: 15px;" data-options="title:'用户登录',buttons:'#btn',modal:true">
        <form action="/user/login" >
            <table>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>密&nbsp;码：</td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td>验证码：</td>
                    <td><input type="password" name="password"/></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>