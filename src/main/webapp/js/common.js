// 方便快速测试
window.debug = function(msg){
    console.debug(msg)
}

//自定义验证规则 只能输入数字和字母
$.extend($.fn.validatebox.defaults.rules, {
    minLength: {
        validator: function(value, param){
            return value.length >= param[0];
        },
        message: 'Please enter at least {0} characters.'
    }
});
