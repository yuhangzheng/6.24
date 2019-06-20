/**
 * 手机号码验证
 * @returns {boolean}
 */
function registerTel() {
    document.getElementById("registerMsg").innerText = "";
    var values = document.getElementsByClassName("registerTelAndPwd")[0].value;
    var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
    if(values==null || values==""){
        document.getElementsByClassName("registerTelMsg")[0].innerText = "请输入常用手机号";
        return false;
    }else{
        if(!reg.test(values)){
            document.getElementsByClassName("registerTelMsg")[0].innerText = "请输入11位手机号";
            return false;
        }else{
            document.getElementsByClassName("registerTelMsg")[0].innerText = null;
            return true;
        }
    }
}

/**
 * 邮箱格式验证
 * @returns {boolean}
 */
function registerMail() {
    var values = document.getElementsByClassName("registerMailAndPwd")[0].value;
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
    if(values==null || values==""){
        document.getElementsByClassName("registerMailMsg")[0].innerText = "请输入常用邮箱";
        return false;
    }else{
        if(!reg.test(values)){
            document.getElementsByClassName("registerMailMsg")[0].innerText = "请输入正确的邮箱";
            return false;
        }else{
            document.getElementsByClassName("registerMailMsg")[0].innerText = null;
            return true;
        }
    }
}


/**
 * 密码验证
 * @returns {boolean}
 */
function registerPassword(){
    document.getElementById("registerMsg").innerText = "";
    var values = document.getElementById("registerPwd").value;
    var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
    var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
    if (values==null || values=="") {
        document.getElementsByClassName("registerPwdMsg")[0].innerText = "密码不能为空";
         return false;
    }else if(values.length < 8){
        document.getElementsByClassName("registerPwdMsg")[0].innerText = "密码长度不能小于8位";
        return false;
    }else if (!reg1.test(values)) {
        document.getElementsByClassName("registerPwdMsg")[0].innerText = "密码必须由字母和数字组成";
        return false;
    }else if (reg.test(values)) {
        document.getElementsByClassName("registerPwdMsg")[0].innerText = "";
        return true;
    } else {
        document.getElementsByClassName("registerPwdMsg")[0].innerText = "密码必须由字母和数字混合组成";
        return false;
    }
}

/**
 * 短信验证码验证
 * @returns {boolean}
 */
function registerIdentifyingCode() {
    document.getElementById("registerMsg").innerText = "";
    var values = document.getElementsByClassName("identifyingCode")[0].value;
    if(values == null || values == ""){
        document.getElementsByClassName("registerIdentifyingCodeMsg")[0].innerText= "请输入短信验证码";
        return false;
    }else {
        return true;
    }
}

/**
 * 按钮选中验证
 * @returns {boolean}
 */
function stuCheckBox() {
    document.getElementById("registerMsg").innerText = "";
    if(!document.getElementsByClassName("agreement_agree")[0].checked){
        document.getElementsByClassName("agreementMsg")[0].innerText = "请接受就业服务中心协议";
        return false;
    }else{
        document.getElementsByClassName("agreementMsg")[0].innerText = "";
        return true;
    }
}

/**
 * 学生端表单所有信息的验证
 * @returns {boolean}
 */
function registerAll() {
    document.getElementById("registerMsg").innerText = "";
    if(registerTel() && registerPassword() && registerIdentifyingCode() && stuCheckBox() ){
        return true;
    }else{
        return false;
    }
}

/**
 * 公司端表单所有信息的验证
 * @returns {boolean}
 */
function comRegisterAll() {
    document.getElementById("registerMsg").innerText = "";
    if(registerMail() && registerPassword() && stuCheckBox() ){
        return true;
    }else{
        return false;
    }
}

/**
 * 验证学生端注册
 */
var xhr = null;
function register() {
    if(registerAll()) {
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else {
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }
        var url = "/stuRegister/register";
        var stuPhone = document.getElementById("registerId").value;
        var stuPwd = document.getElementById("registerPwd").value;
        var stuIdentifyingCode = document.getElementById("registerIdentifyingCode").value;

        var formData = "stuPhone=" + stuPhone + "&stuPwd=" + stuPwd + "&stuIdentifyingCode=" + stuIdentifyingCode;
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded; charset=UTF-8");
        xhr.onreadystatechange = registerResponse;
        xhr.send(formData);
    }
}

/**
 * 验证公司端注册
 */
var xhr = null;
function comRegister() {
    if(comRegisterAll()) {
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else {
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }
        var url = "/comRegister/register";
        var comMail = document.getElementById("registerId").value;
        var comPwd = document.getElementById("registerPwd").value;
        //var comIdentifyingCode = document.getElementById("registerIdentifyingCode").value;

        var formData = "comMail=" + comMail + "&comPwd=" + comPwd ;
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded; charset=UTF-8");
        xhr.onreadystatechange = comRegisterResponse;
        xhr.send(formData);
    }
}

/**
 * 注册响应
 */
function registerResponse(){
    if(xhr.readyState == 4 && xhr.status == 200){
        document.getElementById("registerMsg").innerText = "";
        var result = JSON.parse(xhr.responseText);
        if(result == "1")
            document.getElementById("registerMsg").innerText = "手机号已被注册过";
        if(result == "2")
            document.getElementById("registerMsg").innerText = "短信验证码错误";
        if(result == "0")
            window.location = "/jobcenter/login.jsp";
    }
}

/**
 * 公司注册响应
 */
function comRegisterResponse(){
    if(xhr.readyState == 4 && xhr.status == 200){
        document.getElementById("registerMsg").innerText = "";
        var result = JSON.parse(xhr.responseText);
        if(result == "1")
            document.getElementById("registerMsg").innerText = "手机号已被注册过";
        if(result == "2")
            document.getElementById("registerMsg").innerText = "短信验证码错误";
        if(result == "0")
            window.location = "/jobcenter/index01.jsp";
    }
}






