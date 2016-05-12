<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/5/3
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CRM系统登录</title>

    <script type="text/javascript">
        /**
         每一个页面中都有一个window对象，和一个top对象。
         window对象：当前窗口。
         top:永远指向浏览器地址栏打开的那个窗口（顶级窗口）。
         **/
        //console.debug(top==window);//如果相等，当前窗口就是顶级窗口。
        if(top!=window){
            top.location.href=window.location.href;
        }
    </script>


    <%@include file="/WEB-INF/views/common.jsp" %>
    <script type="text/javascript">

        $(function(){
            //easyui form组件：采用ajax方式进行表单提交。
            //使普通表单成为ajax提交方式的表单。
            $("#loginForm").form({
                //表单提交之前,但是一旦写了该方法，表单就不会自动验证了。
                onSubmit:function(param){//param 额外参数。
                    //添加属性就是添加额外参数
                    //param.xxx = "yyy";

                    //验证表单
                    var valid = $(this).form("validate");

                    if(valid){
                        $.messager.progress({
                            title:"温馨提示",
                            msg:"正在登录中。。。。"
                        });
                        return true;
                    }else{
                        return false;
                    }
                },
                success:function(data){//data 是一个json字符串。
                    data = $.parseJSON(data);

                    if(data.success){

                        $("#loginDlalog").dialog("close");

                        $.messager.alert("温馨提示","登录成功","info",function(){
                            //ajax请求后，如果需要重定向,只能在客户端完成。
                            //location:浏览器地址栏对象
                            location.href="/main.action";
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"error");
                    }

                    //定时器，让代码延迟N毫秒后执行
                    setTimeout(function(){
                        $.messager.progress("close");
                    },500);
                }
            });

            //整个页面注册“回车”事件
            $(document).bind("keydown",function(event){
                //event ： 事件对象，描述本次触发事件的所有信息。
                if(event.keyCode==13){//13回车
                    $("#loginForm").submit();
                }
            });
        });
    </script>
</head>
<body>
<div id="bs">
    <a class="easyui-linkbutton" iconCls="icon-ok" onclick="$('#loginForm').submit();">登录</a>
    <a class="easyui-linkbutton" iconCls="icon-cancel" onclick="$('#loginForm').form('reset')">重置</a>
</div>

<div id="loginDlalog" class="easyui-dialog" title="用户登录"
     style="width: 250px;height: 160px;padding: 10px;"
     data-options="closable:false,buttons:'#bs',closed:false">
    <form id="loginForm" action="/login.action" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td><input type="text" value="admin" name="username" class="easyui-validatebox" data-options="required:true,validType:'length[5,12]'"/></td>
            </tr>
            <tr>
                <td>密&emsp;码</td>
                <td><input type="password" value="admin" name="password" class="easyui-validatebox" data-options="required:true,validType:'length[5,18]'"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
