let main = () => {
	
	// 로그인 버튼 클릭시 로그인 페이지로 이동
	$("#login").on("click", function() {
		location.href="/user/loginPage.do"
	});
	// 회원 가입 버튼
	$("#signUp").on("click", function() {
		location.href="/user/signUpPage.do"
	});
	// 로고 클릭시 메인화면 이동
	$("#logo").on("click", function() {
		location.href="/"
	});
//	// 로그아웃 버튼
//	$("#logout").on("click", function() {
//		location.href="/user/logout.do"
//	});
}

main();

