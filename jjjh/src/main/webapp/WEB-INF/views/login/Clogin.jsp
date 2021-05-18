<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
-webkit-text-size-adjust: none;
font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
</style>
 
<section _ngcontent-baf-c50="" class="member global_wrap" style="
    margin: 0;
    padding: 0;
    display: block;
    transition: padding-top .25s ease-out;
    min-width: 1000px;
    padding-top: 316px;">
<router-outlet _ngcontent-baf-c50=""></router-outlet>
<ui-login _nghost-baf-c57="" class="ng-star-inserted" >
	<div _ngcontent-baf-c57="" class="login_wrap" >
	    <h2 _ngcontent-baf-c57="" class="member_title ng-star-inserted" style="
	    margin: 0;
	    padding: 0;
	    margin-bottom: 20px;
	    color: #000;
	    font-size: 44px;
	    font-weight: 500;
	    text-align: center;">로그인</h2><!---->
	
	    
	    <div _ngcontent-baf-c57="" class="tab_cnt ng-star-inserted">
	        <form _ngcontent-baf-c57="" novalidate="" class="ng-pristine ng-invalid ng-touched">
	            <div _ngcontent-baf-c57="" class="inpbx">
	                    <input _ngcontent-baf-c57="" type="text" id="user_id" formcontrolname="user_id" placeholder="아이디 (이메일)" autocorrect="off" autocapitalize="none" class="ng-pristine ng-invalid ng-touched">
	                <!---->
	    		</div>
	    		<div _ngcontent-baf-c57="" class="inpbx">
	    			<input _ngcontent-baf-c57="" type="password" id="user_password" formcontrolname="user_password" placeholder="비밀번호" class="ng-untouched ng-pristine ng-invalid">
	                <!---->
	    		</div>
	
	            <span _ngcontent-baf-c57="" class="txt_warning ng-star-inserted">아이디를 입력하세요.</span><!---->
	
	            <button _ngcontent-baf-c57="" type="submit" class="btn btn_login ng-star-inserted">로그인하기</button><!---->
	            <!---->
	
	        </form>
	
<!-- 	        <div _ngcontent-baf-c57="" class="sns_login">
	            <h3 _ngcontent-baf-c57="">SNS계정으로 로그인하기</h3>
	            
	            <div _ngcontent-baf-c57="" class="sns_btn">
	                <ruler-social-login-naver _ngcontent-baf-c57="" titletext="네이버로 로그인하기" _nghost-baf-c51=""><div _ngcontent-baf-c51="" id="naverIdLogin" style="display: none;" class="ng-star-inserted"><a id="naverIdLogin_loginButton" href="#"><img src="https://static.nid.naver.com/oauth/big_w.PNG?version=js-2.0.0" height="50"></a></div>
					<div _ngcontent-baf-c51="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c51="" class="button naver-login">네이버로 로그인하기</button>
					</div>
					</ruler-social-login-naver>
					                <ruler-social-login-kakao _ngcontent-baf-c57="" titletext="카카오로 로그인하기" _nghost-baf-c54=""><div _ngcontent-baf-c54="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c54="" class="button kakao-login">카카오로 로그인하기</button>
					</div>
					</ruler-social-login-kakao>
					                <ruler-social-login-facebook _ngcontent-baf-c57="" titletext="페이스북으로 로그인하기" _nghost-baf-c55=""><div _ngcontent-baf-c55="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c55="" class="button facebook-login">페이스북으로 로그인하기</button>
					</div>
					</ruler-social-login-facebook>
					                <ruler-social-login-facebook _ngcontent-baf-c57="" titletext="페이스북으로 로그인하기" stealthmode="" _nghost-baf-c55="">
					</ruler-social-login-facebook>
					                <ruler-social-login-apple _ngcontent-baf-c57="" titletext="Apple로 계속하기" _nghost-baf-c56="">
					<div _ngcontent-baf-c56="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c56="" class="button apple-login">Apple로 계속하기</button>
					</div>
					</ruler-social-login-apple>
	            </div>
	        </div> -->
	        <a _ngcontent-baf-c57="" href="/member/join" class="member_go">계정이 없으신가요? 간편가입하기</a>
	        <ul _ngcontent-baf-c57="" class="linkarea">
	            <li _ngcontent-baf-c57=""><a _ngcontent-baf-c57="" href="./find?findType=id">아이디 (이메일) 찾기</a></li>
	            <li _ngcontent-baf-c57=""><a _ngcontent-baf-c57="" href="./find?findType=password">비밀번호 찾기</a></li>
	            <li _ngcontent-baf-c57=""><a _ngcontent-baf-c57="" href="javascript:void(0);" class="non_member">2018년 2월 이전 비회원 주문조회</a></li>
	        </ul>
	    </div><!---->
	
	    
	    <!---->
	</div>
	<!---->
	<!---->
</ui-login>
</section>