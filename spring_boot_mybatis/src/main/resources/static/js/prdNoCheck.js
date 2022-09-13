/**
 * prdNoCheck.js
 */
 
 $(document).ready(function(){
 	$('#prdNoCheckBtn').on('click', function(){
 		event.preventDefault();
 		
 		if($('#prdNo').val() == "") {
 			alert("상품 번호를 입력해주세요");
 			return false;
 		} else {
 		
	 		$.ajax({
	 			type: "post",
	 			url: "/product/prdNoCheck",
	 			data: {"prdNo": $('#prdNo').val()},
	 			dataType: "text",
	 			success: function(result){
	 				if(result == "") {
	 					alert("사용 가능한 상품번호입니다.");
	 				} else { 
	 					alert("사용할 수 없는 상품번호입니다.");
	 				}	
	 			},
	 			error: function(){
	 				alert("전송 실패");
	 			},
	 			complete: function(){
	 			}
	 		});
	 	}
 	});
 });