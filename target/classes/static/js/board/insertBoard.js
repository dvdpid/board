
// 작성하기 버튼
$("#singlebutton").on("click", function() {
	
	const params = new URLSearchParams();
	
	params.append("BOARD_TITLE", $('#txtTitle').val());
	params.append("BOARD_CONTENTS", $('#txtPost').val());
	
	if($('#txtTitle').val() == ""){
		alert("제목을 입력해주세요.");
		$('#txtTitle').focus();
		return;
	}
	if($('#txtPost').val() == ""){
		alert("제목을 입력해주세요.");
		$('#txtPost').focus();
		return;
	}
	
	
	axios.post("/insertBoard.bo", params)
		.then( res => {
			if(res.data > 0){
				alert("글 작성에 성공하셨습니다.");
				document.location.href="/";
			} else{
				alert("다시 시도해주세요.");
			}
		}).catch(err =>{
			alert("서버 오류. 다시 시도해주세요.")
		})
	
})