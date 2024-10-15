<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 연습하기</title>
</head>
<body>
<script>
/* window.onload=function(){
	
	alert('모든 객체가 생성된후에 로딩됩니다.2');
} */

 function chk(){
	//alert("chk 함수안에 들어왔음"); //디버깅 코드
	let nm = document.getElementById("nm");
	//alert("nm객체 생성되었습"+nm); //디버깅 코드
	
	if(nm.value == ""){
		//alert("아무것도 입력하지 않았음. 포커스로 다시 입력하게 하겠음");
		nm.focus();
		return;
	}
	
	return;
} 

/* function chk() {
    alert("chk 함수에 들어왔음"); // 디버깅 코드
    let nm = document.getElementById("nm");
    alert("nm 객체 생성됨: " + nm); // 디버깅 코드

    if (nm.value.trim() === "") {
        alert("아무것도 입력하지 않았음. 포커스를 다시 입력하게 하겠음");
        
        // 포커스를 주기 전에 약간의 대기 시간을 줍니다.
        setTimeout(function() {
            nm.focus();
        }, 100); // 100ms 후 포커스

        return false; // 기본 제출 방지
    }

    // 입력값이 유효할 경우
    alert("입력값이 유효합니다: " + nm.value);
    return true; // 제출 가능
}

// 폼 제출 시 chk 함수 호출
document.getElementById("yourForm").onsubmit = function(event) {
    event.preventDefault(); // 기본 제출 방지
    if (chk()) {
        this.submit(); // 유효한 경우에만 제출
    }
};
 */




function calculate(){
	let exp = document.getElementById("exp");  // exp input 객체 찾기
	let result = document.getElementById("result"); // result input객체 찾기
	
	result.value = eval(exp.value);  // 계산해서 담기  보통안씀
	
	return;
}

function aaa(){
	
	alert("오른쪽 버튼은 사용금지입니다.");
	
	return false ;
}

document.oncontextmenu = aaa;


function changeImage(){
	//alert("함수에 들어왔나요?");
	let sel = document.getElementById("sel");  // select객체 찾기
	//alert("객체가 생성되었나요?"+sel);
	let img = document.getElementById("myImg");  // 이미지 객체 찾기
	//alert("객체가 생성되었나요?"+img);
	
	img.onload = function(){ // 이미지가 로딩이 되면 익명함수 동작
		let mySpan = document.getElementById("mySpan");
		mySpan.innerHTML = img.width +"X" + img.height;
	}
	let index = sel.selectedIndex;
	//alert(index);
	//alert(sel.optionsp[index].value);
	img.src = sel.options[index].value;
	//alert(img.src);
}


</script>


<form>

<input type ="text" id ="exp" value= "">
<br>
<input type="text" id = "result">
<br>
<input type = "button" value="계산하기" onclick = "calculate();">

<hr>

<p>
마우스 오른쪽버튼 클릭하기 해보는 테스트
</p>


<hr>

<form>

<select id = "sel" onchange = "changeImage();">
<option value = "../images/apple.png">사과</option>
<option value = "../images/banana.png">바나나</option>
<option value = "../images/strawberry.png">딸기</option>
</select>
</form>
<span id = "mySpan">이미지 크기</span>
<p>
<img id = "myImg" src = "../images/apple.png" title = "사과">
</p>

<input type = "text" name = "nm" id = "nm" onblur = "chk();"> <!-- 그위치를 떠날때 감지하는 이벤트 -->






</form>
</body>
</html>