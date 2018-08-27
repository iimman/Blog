$(function () {
    $("#id_user_login_submit").bind("click", function () {
        var loginForm = document.forms[0];
        loginForm.action = "/adminlogin/login.f";
        loginForm.method = "post";
        loginForm.submit();
    });
    
    
    var msg = getQueryString("msg");
    
    if(msg != null){
    	alert(msg);
    }   
});


function getQueryString(name) {  
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");  
    var r = window.location.search.substr(1).match(reg);  
    if (r != null) return unescape(r[2]);  
    return null;  
}



