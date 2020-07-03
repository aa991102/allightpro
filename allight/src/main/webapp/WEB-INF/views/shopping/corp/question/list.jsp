<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div class="container">
		<table class="table">
			<tr>
				<th>NO</th>
				<th width="70%">제목</th>
				<th>작성일</th>
			</tr>
			<c:forEach items="${LIST}" var="list">
				<tr>
					<td>${list.qno}</td>
					<td>${list.qtitle}</td>
					<td>20200703</td>
				</tr>
			</c:forEach>
		</table>
		<div class="right">
			<a class="btn">글쓰기</a>
		</div>
		<div class="center">
			<ul class="pagination">
				<li>
					<c:if test="${PINFO.nowPage >= 3}">
						<a href="${pageContext.request.contextPath}/question/list/corp.com?nowPage=${PINFO.nowPage-3}">«</a>
					</c:if>
					<c:if test="${PINFO.nowPage < 3}">
						<a href="${pageContext.request.contextPath}/question/list/corp.com?nowPage=1">«</a>
					</c:if>
				</li>
				<!-- 현재 페이지일때 active --> 
				<c:forEach begin="${PINFO.startPage}" end="${PINFO.endPage}" var="i">
					<li id="li${i}"><!-- 스크립트 적용해야 할것같아요 -->
						<a href="${pageContext.request.contextPath}/question/list/corp.com?nowPage=${i}">${i}</a>
					</li>
				</c:forEach>
				
				<c:set var="now" value="${PINFO.nowPage}"/>
				
				<li>
					<c:if test="${PINFO.nowPage < PAGEINFO.endPage-3}">
						<a href="${pageContext.request.contextPath}/question/list/corp.com?nowPage=${PINFO.nowPage+3}">»</a>
					</c:if>
					<c:if test="${PINFO.nowPage >= PAGEINFO.endPage-2}">
						<a href="${pageContext.request.contextPath}/question/list/corp.com?nowPage=${PINFO.endPage}">»</a>
					</c:if>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>