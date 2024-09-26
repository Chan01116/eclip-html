<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록보기</title>
<style>
table{
	border : 1px solid blue;
	border-collapse : collapse;
}

th,td{
	border : 1px dotted green;
	padding : 10px;
}

th {
	width : 100px;
	height : 40px;
}
td{
	width : 100px;
	height : 20px;
	text-align : right;
}
thead{
	background : violet;
	color : white;
}
tfoot{
	border-bottom : 1px solid gray;
}


</style>
</head>
<body>
<h3>회원목록</h3>
<hr>

<table>
	<thead><tr>
		<th>회원번호</th>
		<th>회원아이디</th>
		<th>회원이름</th>
		<th>성별</th>
		<th>가입일</th>
	</tr></thead>
	<tbody><tr>
		<td>3</td>
		<td>test</td>
		<td>홍길동</td>
		<td>남</td>
		<td>2024-07-06</td>
	</tr>
	<tr>
		<td>4</td>
		<td>test2</td>
		<td>강감찬</td>
		<td>남</td>
		<td>2024-07-06</td>
	</tr><tr>
		<td>5</td>
		<td>test3</td>
		<td>유관순</td>
		<td>여</td>
		<td>2024-07-06</td>
		</tr>
	</tbody>
	<tfoot>
	<tr><td colspan = '5'>총 3명입니다.</td></tr>
	</tfoot>
</table>


</body>
</html>