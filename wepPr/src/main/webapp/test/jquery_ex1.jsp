<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제이쿼리 연습하기</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<script>
$(document).ready(function(){
	//alert("hello world");
	$("button").click(function(){ //클릭하면 사라지고  btn3로 바꾼다
		$("p").hide();		
	});
	// 태그를 부를때 태그 셀렉터 호출
	$("button").dblclick(function(){ //더블클릭하면 나타남
		$("p").show();		
	});
	//아이디를 부를때는 #표시를 한다
	$("#btn").click(function(){
		$("#divid").html("");
		
	});
		
	//$("셀렉터").메소드(function(){alert("ddddddd");});		
	
	$("#btn3").click(function(){
		//alert("버튼이 먹히나요");
		
		$("#div1").fadeIn();
		$("#div2").fadeIn("slow");
		$("#div3").fadeIn(3000);
	});
	
	
	
	
	
});
</script>


<p>저는 홍길동입니다.</p>
<button id = "btn2">클릭하면 글이 사라집니다.</button>
<div id = "divid">
안녕하세요
</div>
<button id = "btn">클릭해보세요.</button>
<br>
<button id = "btn3">서서히 나타나다</button>
<br>
<div id = "div1" style = "width : 80px; height:80px; background-color:red; display : none;"></div>
<br>
<div id = "div2" style = "width : 80px; height:80px; background-color:green; display : none;"></div>
<br>
<div id = "div3" style = "width : 80px; height:80px; background-color:blue; display : none;"></div>
<br>




</body>
</html>