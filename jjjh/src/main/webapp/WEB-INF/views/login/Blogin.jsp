<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<c:url var="home" value="/"/>
${script}
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
		    text-align: center;">기업 로그인</h2><!---->
		
		    
		    <div _class="tab_cnt ng-star-inserted" style="
			margin: 0;
		    padding: 0;
		    padding-top: 16px;
		    border-top: 0;">
		    
		        <form action="${home}login/BloginProc" method="post"_novalidate="" class="ng-pristine ng-invalid ng-touched" style="
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
		                    <input _type="text" name="bid" id="user_id" formcontrolname="user_id" placeholder="아이디" autocorrect="off" autocapitalize="none" class="ng-pristine ng-invalid ng-touched" style="
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
		    			<input _type="password" name="bpw" id="user_password" formcontrolname="user_password" placeholder="비밀번호" class="ng-untouched ng-pristine ng-invalid" style="
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
