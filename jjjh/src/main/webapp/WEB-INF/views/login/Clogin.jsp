<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
-webkit-text-size-adjust: none;
font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '�����ٸ����', Malgun Gothic, '���� ���', dotum, sans-serif;
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
	    text-align: center;">�α���</h2><!---->
	
	    
	    <div _ngcontent-baf-c57="" class="tab_cnt ng-star-inserted">
	        <form _ngcontent-baf-c57="" novalidate="" class="ng-pristine ng-invalid ng-touched">
	            <div _ngcontent-baf-c57="" class="inpbx">
	                    <input _ngcontent-baf-c57="" type="text" id="user_id" formcontrolname="user_id" placeholder="���̵� (�̸���)" autocorrect="off" autocapitalize="none" class="ng-pristine ng-invalid ng-touched">
	                <!---->
	    		</div>
	    		<div _ngcontent-baf-c57="" class="inpbx">
	    			<input _ngcontent-baf-c57="" type="password" id="user_password" formcontrolname="user_password" placeholder="��й�ȣ" class="ng-untouched ng-pristine ng-invalid">
	                <!---->
	    		</div>
	
	            <span _ngcontent-baf-c57="" class="txt_warning ng-star-inserted">���̵� �Է��ϼ���.</span><!---->
	
	            <button _ngcontent-baf-c57="" type="submit" class="btn btn_login ng-star-inserted">�α����ϱ�</button><!---->
	            <!---->
	
	        </form>
	
<!-- 	        <div _ngcontent-baf-c57="" class="sns_login">
	            <h3 _ngcontent-baf-c57="">SNS�������� �α����ϱ�</h3>
	            
	            <div _ngcontent-baf-c57="" class="sns_btn">
	                <ruler-social-login-naver _ngcontent-baf-c57="" titletext="���̹��� �α����ϱ�" _nghost-baf-c51=""><div _ngcontent-baf-c51="" id="naverIdLogin" style="display: none;" class="ng-star-inserted"><a id="naverIdLogin_loginButton" href="#"><img src="https://static.nid.naver.com/oauth/big_w.PNG?version=js-2.0.0" height="50"></a></div>
					<div _ngcontent-baf-c51="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c51="" class="button naver-login">���̹��� �α����ϱ�</button>
					</div>
					</ruler-social-login-naver>
					                <ruler-social-login-kakao _ngcontent-baf-c57="" titletext="īī���� �α����ϱ�" _nghost-baf-c54=""><div _ngcontent-baf-c54="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c54="" class="button kakao-login">īī���� �α����ϱ�</button>
					</div>
					</ruler-social-login-kakao>
					                <ruler-social-login-facebook _ngcontent-baf-c57="" titletext="���̽������� �α����ϱ�" _nghost-baf-c55=""><div _ngcontent-baf-c55="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c55="" class="button facebook-login">���̽������� �α����ϱ�</button>
					</div>
					</ruler-social-login-facebook>
					                <ruler-social-login-facebook _ngcontent-baf-c57="" titletext="���̽������� �α����ϱ�" stealthmode="" _nghost-baf-c55="">
					</ruler-social-login-facebook>
					                <ruler-social-login-apple _ngcontent-baf-c57="" titletext="Apple�� ����ϱ�" _nghost-baf-c56="">
					<div _ngcontent-baf-c56="" class="container ng-star-inserted">
					    <button _ngcontent-baf-c56="" class="button apple-login">Apple�� ����ϱ�</button>
					</div>
					</ruler-social-login-apple>
	            </div>
	        </div> -->
	        <a _ngcontent-baf-c57="" href="/member/join" class="member_go">������ �����Ű���? �������ϱ�</a>
	        <ul _ngcontent-baf-c57="" class="linkarea">
	            <li _ngcontent-baf-c57=""><a _ngcontent-baf-c57="" href="./find?findType=id">���̵� (�̸���) ã��</a></li>
	            <li _ngcontent-baf-c57=""><a _ngcontent-baf-c57="" href="./find?findType=password">��й�ȣ ã��</a></li>
	            <li _ngcontent-baf-c57=""><a _ngcontent-baf-c57="" href="javascript:void(0);" class="non_member">2018�� 2�� ���� ��ȸ�� �ֹ���ȸ</a></li>
	        </ul>
	    </div><!---->
	
	    
	    <!---->
	</div>
	<!---->
	<!---->
</ui-login>
</section>