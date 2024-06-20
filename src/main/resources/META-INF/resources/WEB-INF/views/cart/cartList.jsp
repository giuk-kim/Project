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
                    <div class="col-md-1">
                        <label class="form-label">번호</label>
                        <input type="text" class="form-control" value="${dto.num}" disabled>
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
                </div>
            </div>
        </div>
    </c:forEach>
   <!--   <a href="buyGoods" class="btn btn-primary mt-2">구매</a> -->
    <a href="cartDelete?num=${dto.num}" class="btn btn-primary mt-2">삭제</a>
    
</div>
