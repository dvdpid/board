
// 글쓰기 버튼 누르면
 $("#InsertBoard").on("click", function() {
	location.href="/insertPage.bo"
});
//// 게시글 상세 보기
//$(".bDetail").on("click", function() {
//	
//	const currentRow = $(this).closest('tr');
//	const BOARD_NO = currentRow.find('td:eq(1)').text();
//	
//	
//	const params = new URLSearchParams();
//	params.append("BOARD_NO",BOARD_NO);
//	params.append("page", $('#page').val());
//	
//	
//	axios.post("/boardDetail.bo", params)
//	}.then( res => {
//		if(res.data){
//			location.href=""
//		}else{
//			alert("게시물 조회에 실패했습니다. 다시 시도해주세요.");
//		}
//	})
//	
//	
//});