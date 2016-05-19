<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/5/18
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common.jsp"  %>
<html>
<head>
    <script type="text/javascript">

        function removeUser() {
            var rows = $("#userDataGrid").datagrid("getSelections");
                if(rows.length > 0) {
                    var ids = new Array();
                    $.each(rows,function(i,row){
                        ids[i] = row.id;
                    })
                    $.post("/user/delete",{"ids":ids.toString()},function(data) {
                        if(data.code == 100) {
                            $("#userDataGrid").datagrid("reload");
                        }
                    })
                }else{
                    $.alert("请至少选择一行");
                }
        }

        function addUser() {
            $("#userDialog").dialog("open");
        }

       $(function(){
           $("#dataForm").form({
               onSubmit:function(){
                   return $("#dataForm").form('validate');
               },
               success:function(data){
                   data = $.parseJSON(data);
                   if(data.code == "100") {
                       $("#userDialog").dialog("close");
                       $.alert(data.msg,function(){
                           $("#userDataGrid").datagrid("reload");
                       });
                   }
               }
           })
       })

    </script>
</head>
<body>

    <div id="tb">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="addUser()">添加</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" onclick="removeUser()">删除</a>
    </div>

    <div id="btn_form">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="$('#dataForm').submit()">保存</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="$('#dataForm').form('reset')">清空</a>
    </div>

    <table id="userDataGrid" class="easyui-datagrid" data-options="url:'/user/list',fitColumns:true,pageSize:20,rownumbers:true,pagination:true,border:false,fit:true,toolbar:'#tb'">
        <thead>
            <tr>
                <th field="id" width="100" data-options="checkbox:true"></th>
                <th data-options="field:'username',width:100">用户名</th>
                <th data-options="field:'email',width:100">邮箱</th>
                <th data-options="field:'age',width:100">年龄</th>
                <th data-options="field:'sex',width:100,formatter:formatUtil.sexFormat">性别</th>
                <th data-options="field:'loginIp',width:100">本次登录IP</th>
                <th data-options="field:'loginTime',width:100">本次登录时间</th>
                <th data-options="field:'lastLoginIp',width:100">上次登录IP</th>
                <th data-options="field:'lastLoginTime',width:100">上次登录时间</th>
                <th data-options="field:'inputTime',width:100">录入时间</th>
                <th data-options="field:'status',width:100">状态</th>
            </tr>
        </thead>
    </table>


    <div id="userDialog" class="easyui-dialog" style="width: 280px;height: 300px;" data-options="title:'添加用户',buttons:'#btn_form'">
        <!-- 用户表单 -->
        <form id="dataForm" action="/user/save" method="post">
            <table>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="username" class="easyui-validatebox" data-options="required:true"/></td>
                </tr>
                <tr>
                    <td>密&nbsp;码：</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td>邮&nbsp;箱：</td>
                    <td><input type="text" name="email" class="easyui-validatebox" data-options="required:true,validType:'email'" /></td>
                </tr>
                <tr>
                    <td>生&nbsp;日：</td>
                    <td><input name="birthday" type="text" class="easyui-datebox" required="required" /></td>
                </tr>
                <tr>
                    <td>性&nbsp;别：</td>
                    <td>
                        男：<input name="sex" type="radio" value="1" />
                        女：<input name="sex" type="radio" value="0" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
