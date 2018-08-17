
function register(){
	
	var userType=$('#userType option:selected') .val();
	alert(userType)
	var userName = $('#userName').val();
	 
	var password=$('#password').val();
	   
	$.post("userController/insert.do",
			{
			userType:userType,
			userName:userName,
			password:password
			},
			function(data){
	});	   
	
}

