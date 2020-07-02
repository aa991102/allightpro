<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title/></title>
</head>

<body>
<div id="wrap">
	<div class="wrap-left">
		<div class="left_menu">
			<p class="left_tit"><a href="">마이페이지</a></p>
			<ul class="left_menu_box">
				<li class="left_menu_m1">주문관리</li>
				<li class="on"><a href="#">주문/배송조회</a></li>
				<li><a href="#">취소/반품조회</a></li>
				<li><a href="#">장바구니</a></li>
			</ul>
	
			<ul class="left_menu_box">
				<li class="left_menu_m1">활동관리</li>
				<li><a href="#">상품 문의</a></li>
				<li><a href="#">상품 리뷰</a></li>
				<li><a href="#">자유게시판</a></li>
				<li><a href="#">문의사항</a></li>
			</ul>
	
			<ul class="left_menu_box last">
				<li class="left_menu_m1">정보관리</li>
				<li><a href="#">개인정보 확인/수정</a></li>
				<li><a href="#">배송지 관리</a></li>
				<li><a href="#">회원탈퇴</a></li>
			</ul>
		</div>
	</div>
	
	<div class="wrap-right">
		<decorator:body />
	</div>
		
</div>
</body>

</html>