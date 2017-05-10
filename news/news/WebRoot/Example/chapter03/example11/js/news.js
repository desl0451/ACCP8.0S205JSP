/**
 * @author 王涛
 * 2017-05-10
 */
function checkAll() {
	var userName = $("userName").val();
	var pwd = $("pwd").val();
	var validatepwd = $("validatepwd").val();
	var mess = $("mess");
	mess.innerHTML = "";
	if (userName == "") {
		mess.innerHTML = "用户名不能为空!";
		return false;
	} else if (pwd == "") {
		mess.innerHTML = "密码不能为空!";
		return false;
	} else if (validatepwd != pwd) {
		mess.innerHTML = "两次输入的密码不一致!";
		return false;
	}
	return true;
}