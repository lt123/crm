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
</head>
<body>

    <div id="tb">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">添加</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true">删除</a>
    </div>

    <table class="easyui-datagrid" data-options="url:'/user/list',fitColumns:true,pageSize:20,rownumbers:true,pagination:true,border:false,fit:true,toolbar:'#tb'">
        <thead>
            <tr>
                <th data-options="field:'id',width:100">编号</th>
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

</body>
</html>
