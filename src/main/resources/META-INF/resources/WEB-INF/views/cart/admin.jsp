<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <h2>장바구니</h2>
    <hr>
    <c:forEach var="dto" items="${cartList}">
        <div class="card mb-3">
            <div class="card-body">
                   <div class="col-md-2">
                        <label class="form-label">아이디</label>
                        <input type="text" class="form-control" value="${cartList.userid}" disabled>
                    </div>
                   <div class="col-md-2">
                        <label class="form-label">상품번호</label>
                        <input type="text" class="form-control" value="${cartList.ponum}" disabled>
                    </div>                                       
                    <div class="col-md-2">
                        <label class="form-label">상품명</label>
                        <input type="text" class="form-control" value="${cartList.poname}" disabled>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">가격</label>
                        <input type="text" class="form-control" value="${cartList.price}" disabled>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">헬스기간</label>
                        <input type="text" class="form-control" value="${cartList.period}" disabled>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">P.T횟수</label>
                        <input type="text" class="form-control" value="${cartList.pt_count}" disabled>
                    </div>
              		<div class="col-md-2">
                        <label class="form-label">날짜</label>
                        <input type="text" class="form-control" value="${cartList.cart_date}" disabled>
                    </div>                    
                </div>
            </div>
    </c:forEach>
</div>


