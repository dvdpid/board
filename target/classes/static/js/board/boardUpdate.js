


// 수정하기 버튼
$("#UpdateBtn").on("click", function() {
	
	const params = new URLSearchParams();
	let bNo = $("#boardNo").val();
	let page = $('#page').val();
	
	console.log(page);
	
	params.append("BOARD_TITLE", $('#txtTitle').val());
	params.append("BOARD_CONTENTS", $('#txtPost').val());
	params.append("BOARD_NO", bNo);
	params.append("page", page);
	
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
	
	
	axios.post("/updateBoard.bo", params)
		.then( res => {
			if(res.data > 0){
				alert("수정성공!.");
				document.location.href="/boardDetail.bo?BOARD_NO="+bNo+'&page='+page
			} else{
				alert("다시 시도해주세요.");
			}
		}).catch(err =>{
			alert("서버 오류. 다시 시도해주세요.")
		})
	
})