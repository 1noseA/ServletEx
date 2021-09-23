<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grape Land</title>
<link rel="stylesheet" href="css/comment.css" type="text/css" />
</head>
<body>
	<header>
		<h1>一瀬ぶどう園</h1>
	</header>

	<div class="show">
		<img src="./images/budou.jpg" alt="ぶどう園" title="ぶどう園">
	</div>

	<h2>● ぶどうの品種 ●</h2>

	<div class="kind">
		<div class="wrap">
			<img src="./images/kyohou.jpg" alt="巨峰" title="巨峰">
			<div class="box">
				<h3>巨峰</h3>
				<p>果肉はしまっていて多汁。<br>
				香りがよく、甘みが強くてやさしい酸味。<br>
				「巨峰」は商標名（商品名）で、品種名は「石原センテニアル」。</p>
			</div>
		</div>

		<div class="wrap">
			<img src="./images/shain.jpg" alt="シャイン" title="シャイン">
			<div class="box">
				<h3>シャインマスカット</h3>
				<p>皮ごと食べられるのが特徴。<br>
				パリッとした歯ごたえで、ジューシーで上品な甘みと高貴な香り。</p>
			</div>
		</div>

		<div class="wrap">
			<img src="./images/kaiji.jpg" alt="甲斐路" title="甲斐路">
			<div class="box">
				<h3>甲斐路</h3>
				<p>「紅いマスカット」ともいわれる。<br>
				ほのかにマスカットのような香りがあり、深みのある甘さとみずみずしさが特徴。</p>
			</div>
		</div>
	</div>

	<h2>● お客さまからのコメント ●</h2>
	<!-- コメント表示 -->
	<div  class="comment-lists">
		<c:forEach items="${ sessionScope.list }" var="com">
			<div class="com-list">
				<fmt:formatDate value="${ com.date }"/>
				★<c:out value="${ com.name }"/>さん★
				<br>
				<c:out value="${ com.content }"/>
				<br>
			</div>
		</c:forEach>
	</div>

	<h4>＊＊コメントお待ちしております＊＊</h4>
	<!-- コメント入力フォーム -->
	<div class="comment-form">
		<form action="comment" method="post">
			<p>お名前<br><input type="text" name="name" class="name" /></p>
			<p>コメント<br><textarea name="content" class="content"></textarea></p>
			<input type="submit" value="送信" />
		</form>
	</div>

	<footer>
		<h3>ぶどう狩りしようぜ！！</h3>
	</footer>
</body>
</html>