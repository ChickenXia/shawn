function logon(){
	 	var userName = $('#userName').val();
	 
	   var password=$('#password').val();
	   
	   
//		alert(userName+password);
//	   var url="userController/login?userName="+userName+"&password="+password;
//		console.log(url);
		$.post("userController/login.do",
				{
				userName:userName,
				password:password
				},
				function(data){
			if(data=='0'){
				location.href='main.jsp?userName='+userName;
			}else if(data=='1'){
				$('#msg').html('用户名或者密码错误,请重新输入');
			}
		});	   
	 }