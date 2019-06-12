/**
 * 公司发布职位
 */



/**
 * 职位类别验证
 * @returns {boolean}
 */
function verifyType() {
    var values = document.getElementById("positionType")[0].value;
    if(values==null || values==""){
        alert("未选择职位类别");
        return false;
    }else
        return true;
}

/**
 * 工作性质验证
 * @returns {boolean}
 */
function verifyWorkType() {
    var values = document.getElementById("worktype")[0].value;
    if(values==null || values==""){
        alert("未选择工作性质");
        return false;
    }else{
        return true;}
}
/**
 * 月薪范围验证
 * @returns {boolean}
 */
function verifySalary() {
    var min = document.getElementsById("salaryMin")[0].value;
    var max = document.getElementsById("salaryMax")[0].value;
    if(min==null || min==""||max==null || max==""){
        alert("未输入月薪范围")
        return false;
    }else
        return true;
}

/**
 * 城市验证
 * @returns {boolean}
 */
function verifyCity() {
    var values = document.getElementById("city")[0].value;
    if(values==null || values==""){
        alert("未输入城市")
        return false;
    }else
        return true;
}

/**
 * 工作经验验证
 * @returns {boolean}
 */
function verifyExperience() {
    var values = document.getElementById("experience")[0].value;
    if(values==null || values==""){
        alert("未选择工作经验")
        return false;
    }else
        return true;
}

/**
 * 学历验证
 * @returns {boolean}
 */
function verifyEducation() {
    var values = document.getElementById("education")[0].value;
    if(values==null || values==""){
        alert("未选择学历")
        return false;
    }else
        return true;
}

/**
 * 职位描述验证
 * @returns {boolean}
 */
function verifyDescription() {
    var values = document.getElementById("description1").value;
    if(values==null || values==""){
        alert("输入职位描述")
        return false;
    }else if(values.length < 20) {
        document.getElementById("description1")[0].innerText = "职位描述不能短于20字";
        return false;
    }else
        return true;
}

/**
 * 地址验证
 * @returns {boolean}
 */
function verifyAddress() {
    var values = document.getElementById("positionAddress")[0].value;
    if(values==null || values==""){
        alert("未输入公司地址")
        return false;
    }else
        return true;
}


/**
 * 所有信息的验证
 * @returns {boolean}
 */
function verifyAll() {
    if( verifyType() && verifyWorkType() && verifyCity() &&  verifyExperience() && verifyEducation() && verifyDescription() && verifyAddress()){
        return true;
    }else{
        return false;
    }
}



/**
 * 提交表单
 */
var xhr = null;
function submit() {
    if(verifyAll()) {
        /*
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
         */
        alert("success!")
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
        xhr.onreadystatechange = registerResponse;
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
            document.getElementById("registerMsg").innerText = "手机号/邮箱已被注册过";
        if(result == "2")
            document.getElementById("registerMsg").innerText = "短信验证码错误";
        if(result == "0")
            window.location = "/internshipElves/comRegister2.jsp";
    }
}
