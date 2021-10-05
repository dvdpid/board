let main = () =>{
	
	
	$("#logo").on("click", function() {
		location.href="/"
	})
	
	
	$("#loginBtn").on("click", function() {
		
		const params = new URLSearchParams();
		
		params.append("USER_ID", $('#userId').val());
		params.append("USER_PWD", $('#userPwd').val());
		
		axios.post("/user/login.do", params)
			.then( res => {
				if(res.data == true){
					document.location.href="/";
				} else{
					alert("아이디와 비밀번호가 일치하지 않습니다.");
				}
			}).catch( err =>{
				alert("다시 시도해주세요.");
			})
		
	})

}
main();