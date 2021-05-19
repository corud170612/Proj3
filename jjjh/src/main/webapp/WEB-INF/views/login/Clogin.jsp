<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<c:url var="home" value="/"/>
<%-- <h3><font color="white" style="text-align: center;">${msg }</font></h3>
 --%>
	<section _class="member global_wrap" style="
	    margin: 0;
	    padding: 0;
	    display: block;
	    transition: padding-top .25s ease-out;
	    min-width: 1000px;
	    padding-top: 316px;">
	<ui-login _class="ng-star-inserted" >
		<div _class="login_wrap" style="
		padding: 0;
	    max-width: 400px;
	    margin: 0 auto 50px;">
		    <h2 _class="member_title ng-star-inserted" style="
		    margin: 0;
		    padding: 0;
		    margin-bottom: 20px;
		    color: #fff;
		    font-size: 44px;
		    font-weight: 500;
		    text-align: center;">개인 로그인</h2><!---->
		
		    
		    <div _class="tab_cnt ng-star-inserted" style="
			margin: 0;
		    padding: 0;
		    padding-top: 16px;
		    border-top: 0;">
		    
		        <form action="${home}login/CloginProc" method="post"_novalidate="" class="ng-pristine ng-invalid ng-touched" style="
				margin: 0;
			    padding: 0;">
		            <div _class="inpbx" style="
					margin: 0;
				    padding: 0;
				    position: relative;
				    height: 48px;
				    background: #fff;
				    vertical-align: top;
				    box-sizing: border-box;
				    margin-top: 8px;
				    margin-bottom: 8px;">
		                    <input _type="text" name="Cid" id="user_id" formcontrolname="user_id" placeholder="아이디" autocorrect="off" autocapitalize="none" class="ng-pristine ng-invalid ng-touched" style="
							margin: 0;
						    appearance: none;
						    vertical-align: top;
						    box-sizing: border-box;
						    display: block;
						    width: 100%;
						    height: 100%;
						    padding: 0 14px;
						    font-size: 14px;
						    color: #1a1a1a;
						    background: transparent;
						    outline: none;
						    border: 1px solid #d4d4d4;
						    border-radius: 2px;">
		                <!---->
		    		</div>
		            <div _class="inpbx" style="
					margin: 0;
				    padding: 0;
				    position: relative;
				    height: 48px;
				    background: #fff;
				    vertical-align: top;
				    box-sizing: border-box;
				    margin-top: 8px;
				    margin-bottom: 8px;">
		    			<input _type="password" name="Cpw" id="user_password" formcontrolname="user_password" placeholder="비밀번호" class="ng-untouched ng-pristine ng-invalid" style="
						margin: 0;
					    appearance: none;
					    vertical-align: top;
					    box-sizing: border-box;
					    display: block;
					    width: 100%;
					    height: 100%;
					    padding: 0 14px;
					    font-size: 14px;
					    color: #1a1a1a;
					    background: transparent;
					    outline: none;
					    border: 1px solid #d4d4d4;
					    border-radius: 2px;">
		                <!---->
		    		</div>
	<!-- 	
		            <span _ngcontent-baf-c57="" class="txt_warning ng-star-inserted">아이디를 입력하세요.</span>
		 -->
		            <button _type="submit" class="btn btn_login ng-star-inserted" style="
					padding: 0;
				    outline: none;
				    vertical-align: top;
				    box-sizing: border-box;
				    display: inline-block;
				    position: relative;
				    text-align: center;
				    cursor: pointer;
				    border: 1px solid #fff;
				    width: 100%;
				    height: 56px;
				    margin: 12px 0 10px;
				    background: #000;
				    border-radius: 2px;
				    color: #fff;
				    font-size: 16px;
				    line-height: 56px;
				    font-weight: 600;">로그인하기</button><!---->
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
		        <a _href="#" class="member_go" style="
				margin: 0;
			    padding: 0;
			    text-decoration: none;
			    outline: none;
			    display: block;
			    height: 56px;
			    border: 1px solid #5d5d5d;
			    border-radius: 28px;
			    box-sizing: border-box;
			    font-weight: 600;
			    font-size: 14px;
			    color: #fff;
			    text-align: center;
			    line-height: 56px;">계정이 없으신가요?  가입하러 가기</a>
		    </div><!---->
		
		    
		    <!---->
		</div>
		<!---->
		<!---->
	</ui-login>
	</section>
