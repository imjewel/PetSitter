<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
	<link href="/css/Board.css" rel="stylesheet">
</head>
<article class="detail">
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<c:if test="${board.member.id==principal.member.id }">
		<button id="btn-delete" class="btn btn-danger">삭제</button>
		<a href="/board/${board.id}/updateForm" class="btn btn-warning">수정</a>
	</c:if>
	<br /> <br />
	<div>
		글 번호 : <span id="id"><i>${board.id} </i></span> 
		작성자 : <span><i>${board.member.username}</i></span>
		작성일자 : <fmt:formatDate value="${board.createDate}" pattern="yyyy-MM-dd  hh:mm" />
	</div>
	<br />
	<div>
		<h3>${board.title}</h3>
	</div>
	<hr />
	<div>
		<div>${board.content}</div>
		<br />
		<br />
		<br />
		<br />
		<br />
	</div>
	<hr />
	<div class="card">	<!-- 댓글 작성하기 -->
		<form>
			<input type="hidden" id="boardId" value="${board.id}"/>
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>			
				<button type="button" id="btn-reply-save" class="btn btn-primary">등록</button>
			</div>
		</form>
	</div>
	<br />
	<div class="card">	<!-- 댓글 리스트 -->
		<div class="card-header">댓글 리스트</div>
		<ul id="reply-box" class="list-group">
			<c:forEach var="reply" items="${board.reply}">
				<li id="reply-${reply.id}" class="list-group-item d-flex justify-content-between">
				<div>${reply.content}</div>
				<div class="d-flex">
					<div class="font-italic">작성자 : ${reply.member.username}&nbsp;</div>
					<c:if test="${board.member.id==principal.member.id }">
						<button onClick="index.replyDelete(${board.id},${reply.id})" class="badge btn-secondary">삭제</button>
					</c:if>
				</div>
			</li>
			</c:forEach>
		</ul>
	</div>
</article>	
<script type="text/javascript" src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>

