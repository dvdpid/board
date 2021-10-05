let main = () => {
	
	 // 로고 클릭시 메인화면으로 이동
	$("#logo").on("click", function() {
		location.href="/"
	})
	$('#reset').on("click", function() {
		location.href="/"
	})
		
		
	// 회원가입
	$("#updateBtn").on("click", function() {
		
		
		const params = new URLSearchParams();
		
		params.append('USER_ID', $('#userId').val());
		params.append('USER_PWD', $('#userpwd1').val());
		params.append('USER_NICKNAME', $('#nickname').val());
		params.append('USER_PHONE', $('#phone').val());
		
		
		if( $('#userId').val() == ""){
			alert("아이디를 입력해주세요.");
			$('#userId').focus();
			return;
		}
		if( $('#userpwd1').val() == ""){
			alert("패스워드를 입력해주세요.");
			$('#userpwd1').focus();
			return;
		}
		if( $('#nickname').val() == ""){
			alert("닉네임을 입력해주세요.");
			$('#nickname').focus();
			return;
		}
		if($('#idCHK').val() == 0){
			alert('아이디 중복을 확인해주세요.');
			$('#userId').focus();
			return;
		}
		if($('#nickCHK').val() == 0){
			alert('닉네임 중복을 확인해주세요.');
			$('#nickname').focus();
			return;
		}
		
		
		axios.post("/user/signUp.do", params)
			.then( res => {
				if(res.data > 0){
					document.location.href="/user/loginPage.do";
				} else{
					alert("다시 시도해주세요.");
				}
			}).catch( err => {
				alert("서버 오류. 다시 시도해주세요");
			})
		})
	
	
	/* 아이디 충복 체크 */	
	$("#userId").on("keyup", function() {
		
		const userId = $(this).val().trim();
		if(userId.length < 3){
			$('.guide').hide();
			
			return;
		}
		
		
		$.ajax({
			url: 'checkId.do',
			data: {USER_ID: userId},
			success: function(data) {
				console.log(data);
				if(data == '0'){
					$('.guide.error').hide();
					$('.guide.ok').show();
					$('#idCHK').val(1);
				} else{
					$('.guide.error').show();
					$('.guide.ok').hide();
					$('#idCHK').val(0);
				}
			}
			
		});
		
	});
	
	/* 닉네임 중복 체크*/
	$('#nickname').on('keyup', function() {
		
		const nickname = $(this).val().trim();
		if(nickname.length < 1) {
			$('.guide2').hide();
			
			return;
		}
		
		$.ajax({
			url: 'checkNickname.do',
			data: {USER_NICKNAME: nickname},
			success: function(data){
				console.log(data);
				if(data == '0'){
					$('.guide2.error2').hide();
					$('.guide2.ok2').show();
					$('#nickCHK').val(1);
				} else{
					$('.guide2.error2').show();
					$('.guide2.ok2').hide();
					$('#nickCHK').val(0);
				}
			}
		});
		
	});
	
	/* 비밀번호 확인 */
	
}
main();

