
// 수정 버튼 클릭시 수정 페이지로
$("#boardUpdate").on("click", function(){
	
	let bNo = $("#boardNo").val();
	let page = $("#page").val();
	
	location.href="/updatePage.bo?bNo="+bNo+'&page='+page
});

// 삭제 버튼
$("#boardDelete").on("click", function() {
	
	if(confirm("정말로 삭제하시겠습니까?")){
		
		let bNo = $("#boardNo").val();
		
		const params = new URLSearchParams();
		
		params.append("BOARD_NO", bNo);
		
		
		
		axios.post("/deleteBoard.bo", params)
			.then( res => {
				if(res.data > 0){
					alert("삭제 성공!.");
					document.location.href="/"
				} else{
					alert("다시 시도해주세요.");
				}
			}).catch(err => {
				alert("서버 오류 다시 ");
			})
		
		
		
	}
	
	
});
