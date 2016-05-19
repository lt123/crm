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