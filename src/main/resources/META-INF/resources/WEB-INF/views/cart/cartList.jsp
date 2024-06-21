<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <h2>장바구니</h2>
    <hr>
    <c:forEach var="dto" items="${cartList}">
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2">
                        <label class="form-label">번호</label>
                        <input type="text" class="form-control" value="${dto.num}" disabled>
                    </div>
                   <div class="col-md-2">
                        <label class="form-label">아이디</label>
                        <input type="text" class="form-control" value="${dto.userid}" disabled>
                    </div>
                   <div class="col-md-2">
                        <label class="form-label">상품번호</label>
                        <input type="text" class="form-control" value="${dto.ponum}" disabled>
                    </div>                                       
                    <div class="col-md-2">
                        <label class="form-label">상품명</label>
                        <input type="text" class="form-control" value="${dto.poname}" disabled>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">가격</label>
                        <input type="text" class="form-control" value="${dto.price}" disabled>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">헬스기간</label>
                        <input type="text" class="form-control" value="${dto.period}" disabled>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">P.T횟수</label>
                        <input type="text" class="form-control" value="${dto.pt_count}" disabled>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">날짜</label>
                        <input type="text" class="form-control" value="${dto.cart_date}" disabled>
                    </div>                    
                    <div class="col-md-2">
                        <form action="cartDelete" method="post">
                            <input type="hidden" name="num" value="${dto.num}"/>
                            <button type="submit" class="btn btn-primary mt-4">삭제</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    <form action="buy" method="post">
       	<c:forEach var="dto" items="${cartList}">
          	<input type="hidden" name="num" value="${dto.num}">  
       	</c:forEach>
       	<button type="submit" class="btn btn-primary mt-4">구매</button>
    </form>    
</div>
