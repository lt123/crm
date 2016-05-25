/**
 * 为整个界面增加回车提交form事件（ps：表单id必须为dataForm）
 */
$(document).bind('keydown',function(e){
    if(e.keyCode == 13) {
        $("#dataForm").form('submit');
    }
})

// 方便快速测试
window.debug = function(msg){
    console.debug(msg)
}


// jquery 相关js

// jquery中可以获取一个"表单"中所有的参数,并且转换为数组,其中包含name,value。 $("#formId").serializeArray()
$.fn.arrayToJson = function(){
	var paramJson = {};
	var paramArray = $(this).serializeArray();
	$.each(paramArray,function(index,item){
		paramJson[item.name] = item.value; 
	});
	return paramJson;
}


// easyui 相关js
$.alert = function(msg,callback) {
    $.messager.alert("温馨提示",msg,"info",callback);
}

$.error = function(msg,callback) {
    $.messager.alert("温馨提示",msg,"error",callback);
}

window.formatUtil = {
    sexFormat:function(value,rowData,rowIndex){
        return value == 0 ? "女" : "男";
    }
}

$.extend($.fn.dialog.defaults, {
    modal:true,
    closed:true
});

$.extend($.fn.datebox.defaults, {
	editable:false
});

$.extend($.fn.validatebox.defaults.rules, {
    equals: {
        validator: function(value,param){
            return value == $(param[0]).val();
        },
        message: '两次密码输入不一致'
    }
});