<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JQuery 설치 -->
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		// 비번 확인
		$("#access_pw2").on("keyup", function(){
			var access_pw = $("#access_pw").val();
			var access_pw2 = $("#access_pw2").val();
			var mesg = "비번일치"
			if(access_pw != access_pw2){
				mesg = "비번 불일치";
			}
			$("#pwdcheck").text(mesg);			
		}); // end 비번 확인
		
		
		
		// 회원가입 서브밋
		/* $("form").on("submit", function(){
			alert("form submit");
			this.action="MemberAddServlet"; // MemberAddServlet의 맵핑값
			this.method="post";		
		}); */
		
	
	
		
	}); // ready()
	
</script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
    <form:form class="row g-3 m-4" modelAttribute="memberDTO" method="post">
		  <div class="row mb-3">
		    <label for="name" class="col-sm-2 col-form-label">이름</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="name" />
		    </div>
		  </div>
		 <div class="row mb-3">
		    <label for="access_pw" class="col-sm-2 col-form-label">출입비밀번호</label>
		    <div class="col-auto">
		      <form:input type="password" class="form-control" path="access_pw" />
		      <form:errors path="access_pw"></form:errors>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="access_pw2" class="col-sm-2 col-form-label">비밀번호확인</label>
		    <div class="col-sm-5">
		      <input type="password" class="form-control" name="access_pw2" id="access_pw2">
		    </div>
		    <div class="col-sm-3">
		      <span id="pwdcheck" class="fs-5"></span>
		    </div>
		  </div>
		  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">성별</label>
    <div class="col-auto">
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" id="male" name="gender" value="남" required>
            <label class="form-check-label" for="male">남</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" id="female" name="gender" value="여" required>
            <label class="form-check-label" for="female">여</label>
        </div>
    </div>
</div>
		  
		  <hr>
		  <div class="row mb-3">
		      <div class="col-auto">
			    <label for="sample4_postcode" class="visually-hidden">post</label>
			    <input type="text" name="post" class="form-control" id="sample4_postcode" placeholder="우편번호">
			  </div>
			  <div class="col-auto">
			    <button type="button" class="btn btn-primary mb-3" onclick="sample4_execDaumPostcode()">우편번호 찾기</button>
  			  </div>
		  </div>
		   <div class="row mb-3">
		      <div class="col-sm-5">
			    <label for="sample4_roadAddress" class="visually-hidden">도로명주소</label>
			    <input type="text"  name="addr1" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
			  </div>
			 <div class="col-sm-5">
			    <label for="sample4_jibunAddress" class="visually-hidden">지번주소</label>
			    <input type="text" name="addr2" class="form-control" id="sample4_jibunAddress" placeholder="지번주소">
			    <span id="guide" style="color:#999"></span>
			  </div>
		  </div>
		  <hr>
		  <div class="row mb-3">
		      <label for="phone1" class="col-sm-2 col-form-label">전화번호</label>
		     <div class="col-auto">
		      <select name="phone1" class="form-control" id="phone1">
				 <option value="010">010</option>
				 <option value="011">011</option>
				</select>
			   </div>	
			<div class="col-auto">
			  <label for="phone2" class="visually-hidden">전화번호2</label>
			  <input type="text" name="phone2" class="form-control" id="phone2">
			</div>
			<div class="col-auto">
			  <label for="phone3" class="visually-hidden">전화번호3</label> 
			  <input type="text" name="phone3" class="form-control" id="phone3">
			</div>
		  </div>
		  <div class="row mb-3">
		    <label for="height" class="col-sm-2 col-form-label">키</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="height" />
		    </div>
		  <div class="row mb-3">
		    <label for="weight" class="col-sm-2 col-form-label">몸무게</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="weight" />
		    </div>
		  </div>
		  </div>
		  <div class="col-12">
		    <button type="submit" class="btn btn-primary">Sign in</button>
		    <button type="reset" class="btn btn-primary">cancel</button>
		  </div>
 </form:form>
	
</div>


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>