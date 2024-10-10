<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 테스트</title>
</head>
<body>

	<%-- 
		request.getParameter("key") === ${param.key}
		{requestScope} -> {sessinScope} -> {applicationScope}
		{param}
	 
	
	<h1>${name}</h1>



		if문
		<c:if text="${조건식}"></c:if>

	
		<c:if test="${name != '홍길동'}">
			${name}
		</c:if>
		
		<c:if test="${empty param.name}">
			<h1>값을 입력하세요</h1>
		</c:if>
	
		<c:choose>
			<c:when test="${name == '홍길동'}">
				<h1>동해번쩍 서해번쩍 홍길동</h1>
			</c:when>
			<c:when test="${name == '류재은'}">
				깜지 마스터 류재은
			</c:when>
			<c:when test="${name == '최도윤'}">
				아무나 거려라 내가 마피아 최도윤
			</c:when>
			<c:otherwise>
				위에 모두 해당되지 않을 때 실행할 문장
			</c:otherwise>
		</c:choose>
		
		<c:forEach var="data" begin="0" end="10">
			${data}
		</c:forEach>
		--%>

	<table border = "1">
		<tr>
			<th>게시글 번호</th>
			<th>게시글 제목</th>
			<th>게시글 내용</th>
		</tr>
		<c:forEach var="post" items="${posts}">
			<tr>
				<td><c:out value="${post.id}" escapeXml="true" /></td>
				<td>${post.postTitle}</td>
				<td>${post.postContent}</td>
			</tr>
		</c:forEach>
	</table>
	
<%-- 	
	<c:forEach var="data" items="${datas}">
			<c:out value="${data}" escapeXml="true" />
	</c:forEach>
--%>	
<div id="result"></div>
</body>
<script>
	const datas = JSON.parse(`${datas}`)
	console.log(`${datas}`)
	const result = document.getElementById("result");
	
	// JSTL과 ES6 템플릿리터널 충돌
/*	datas.forEach((data) => {
		result.innerHTML += `
		<h1>${param.data.id}</h1>
		<h1>${data.postTitle}</h1>
		<h1>${data.postContent}</h1>
		`
	}) */

		datas.forEach((data) => {
		result.innerHTML += (
			"<h1>" + data.id + "</h1>" +
			"<h1>" + data.postTitle + "</h1>" +
			"<h1>" + data.postContent + "</h1>" 
		)
	})
	
	
	
</script>
</html>









