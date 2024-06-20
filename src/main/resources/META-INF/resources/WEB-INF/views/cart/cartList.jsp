<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
${cartList}

<div class="container">
<c:forEach var="dto" items="${cartList}">
    <form class="row g-3 m-4">
		  <div class="row mb-3">
		    <label for="num" class="col-sm-2 col-form-label">	번호</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" id="num" name="num" 
		       value="${dto.num}"
		       disabled="disabled">
		    </div>
		  </div>		  
		  <div class="row mb-3">
		    <label for="userid" class="col-sm-2 col-form-label">	아이디</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" id="userid" name="userid" 
		       value="${dto.userid}"
		       disabled="disabled">
		    </div>
		  </div>
		
		  <div class="row mb-3">
		    <label for="ponum" class="col-sm-2 col-form-label">상품번호</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="ponum" 
		      id="ponum"
		       value="${dto.ponum}"
		       disabled="disabled">
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="poname" class="col-sm-2 col-form-label">상품이름</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="poname" 
		      id="ponum"
		       value="${dto.poname}"
		       disabled="disabled">
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="price" class="col-sm-2 col-form-label">가격</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="price" 
		      id="price"
		       value="${dto.price}"
		       disabled="disabled">
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="period" class="col-sm-2 col-form-label">헬스기간</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="period" 
		      id="period"
		       value="${dto.period}"
		       disabled="disabled">
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="pt_count" class="col-sm-2 col-form-label">P.T횟수</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="pt_count" 
		      id="pt_count"
		       value="${dto.pt_count}"
		       disabled="disabled">
		    </div>
		  </div>			  		  		  		  		  
		  <hr>
 </form>
</c:forEach>	
</div>
