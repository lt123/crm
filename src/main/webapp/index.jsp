<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/js/common/common.jsp"%>

<script type="text/javascript">
    $(function(){
        var mainTabs = $("#mainTabs");
        var menuTree = $("#menuTree");
        menuTree.tree({
            onClick:function(node) {
                var title,url;
                if(node.attributes != null) {
                    url = node.attributes.url;
                    title = node.text;
                    if(title != null && url != null) {

                        if(mainTabs.tabs('exists',title)){
                            mainTabs.tabs('select',title)
                        }else{
                            mainTabs.tabs('add',{
                                title:title,
                                selected:true,
                                href:url,
                                closable:true
                            })
                        }
                    }
                }
            }
        })
    })
</script>

<html>
    <body class="easyui-layout">
           <!-- 头部 -->
           <div data-options="region:'north',border:false" style="height: 60px">
               <h1>CRM管理系统</h1>
           </div>

           <!-- 侧边栏 -->
           <div data-options="region:'west',title:'系统菜单',iconCls:'icon-ok'" style="width:200px">
                <ul id="menuTree" class="easyui-tree" data-options="url:'/demo/menu.json'">

                </ul>
           </div>

           <!-- 内容 -->
           <div data-options="region:'center'">
                <div id="mainTabs" class="easyui-tabs" data-options="border:false,fit:true">
                    <div title="欢迎界面"  style="margin-top: 20px;">
                        欢迎使用CRM管理系统<br/>
                        当前用户：root<br />
                        上次登录时间：xxxx-xx-xx<br />
                        上次登录IP：192.168.1.1<br />
                    </div>
                </div>
           </div>

           <!-- 版权相关 -->
           <div data-options="region:'south',border:false" style="height: 60px;text-align: center">
                 <h1>Copyright © 2013-2016</h1>
           </div>
    </body>
</html>
