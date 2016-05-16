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

        $(function(){
            $("#loginForm").form({
                onSubmit:function(){
                  var valid = $("#loginForm").form("validate");
                    console.debug("valid>>" + valid);
                    if(valid) {
                        return true;
                    }else{
                        return false;
                    }
                },
                success:function(data){
                    data = $.parseJSON(data);
                    console.debug(data)
                }
            })
        })

        function refreshCaptcha(){
            $("#img_captcha").attr("src","<%=path%>/verificationCode/kaptcha.jpg?t=" + Math.random());
        }

    </script>
</head>
<body style="width:100%;height:100%;">

    <div id="btn">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="$('#loginForm').form('submit')">登录</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="$('#loginForm').form('reset')">重置</a>
    </div>

    <div class="easyui-dialog" style="width:300px;height:230px;padding: 15px;" data-options="title:'用户登录',buttons:'#btn',modal:true">
        <form action="/user/login" method="post" id="loginForm">
            <table>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="username" class="easyui-validatebox" data-options="required:true"/></td>
                </tr>
                <tr>
                    <td>密&nbsp;码：</td>
                    <td><input type="password" name="password"  class="easyui-validatebox" data-options="required:true"/></td>
                </tr>
                <tr>
                    <td>
                        <img id="img_captcha" src="<%=path%>/verificationCode/kaptcha.jpg" style="width: 70px;height: 31px;" onclick="refreshCaptcha();" />
                    </td>
                </tr>
                <tr>
                    <td>验证码：</td>
                    <td>
                        <input type="text" name="securityCode" id="securityCode" size="3" class="easyui-validatebox"  data-options="required:true" onkeyup="value=value.replace(/[^\w\\/]/ig,'')" />
                    </td>
                </tr>
            </table>
        </form>

    </div>
</body>
</html>