<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<c:url var="home" value="/"/>

${script}
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
        Kakao.init("e787d06915fe1f7afc8b4209f6cc2c14");
        function kakaoLogin(){
            window.Kakao.Auth.login({
                scope:'profile, account_email, gender, birthday',
                success: function(authObj){
                    console.log(authObj);
                    window.Kakao.API.request({
                        url:'/v2/user/me',
                        success: res =>{
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account);
                            console.log(kakao_account.email);
                            console.log(kakao_account.profile.nickname);
                            var id = document.getElementById("user_id").value = kakao_account.email;
                         	var pw = document.getElementById("user_password").value = '1';
                         	var addr = document.getElementById("address").value = '미입력';
                         	var zipcode = document.getElementById("zipcode").value = '미입력';
                         	var name = document.getElementById("name").value = kakao_account.profile.nickname;
                 
                         	location.href="${home}membership/CmemberProc?cid="+id+"&cpw="+pw+"&zipcode="+zipcode+"&name="+name+"&address="+addr;
                        }
                    });
                }
            });
        }
    </script>

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
		    
		        <form name="form" action="${home}login/CloginProc" method="post" class="ng-pristine ng-invalid ng-touched" style="
				margin: 0;
			    padding: 0;">
			    <a id="kakaoProc" href="${home }membership/CmemberProc"></a>
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
		                    <input _type="text" name="cid" id="user_id" placeholder="아이디" class="ng-pristine ng-invalid ng-touched" style="
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
		    			<input _type="password" name="cpw" id="user_password" placeholder="비밀번호" class="ng-untouched ng-pristine ng-invalid" style="
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
		 -->	<div>
		            <button _type="submit" id="clogin" class="btn btn_login ng-star-inserted" style="
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
		 <a type="button" href="javascript:kakaoLogin();"><img src = "https://gb.go.kr/Main/Images/ko/member/certi_kakao_login.png" style="width: 100%; height: auto;margin-bottom: 10px;"  ></a>
		        
		        </form>
	<input type="hidden" id="address" name="address" />
	<input type="hidden" id="zipcode" name="zipcode" />
	<input type="hidden" id="name" name="name" />
		        <a href="${home }membership/moveCustomer" class="member_go" style="
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
