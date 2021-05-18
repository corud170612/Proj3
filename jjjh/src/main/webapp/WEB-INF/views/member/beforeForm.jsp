<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>
<form action="${home }membership/moveCustomer">
<div id="container" style="margin-top: 250px; margin-bottom: 150px;">
                
<div id="container" class="join-select-container" style="    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    font-size: 12px;
    color: #494949;
    padding: 0;
    position: relative;
    width: 960px;
    margin: 0 auto;">
    <div class="join-group" style="    font-size: 12px;
    color: #494949;
    padding: 0;
    margin: 0;
    text-align: center;
    width: 920px;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;">
        <div class="header-title" style="    font-size: 12px;
    color: #494949;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    text-align: center;
    width: 398px;
    margin: 88px auto 56px;">
            <p style="font-size: 30px;
    color: #494949;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    text-align: center;
    border: 0;
    vertical-align: top;
    font-weight: 15px;">카페에이콘 통합회원가입을 환영합니다.</p>
        </div>

        <div class="select-join-group" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    margin: 0;">
            <div class="member-item" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    margin: 0;
    border: 1px solid #e5e7ea;
    width: 438px;
    height: 490px;
    float: left;">
                <div class="personal-member" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    margin: 0;">
                    <p class="title" style="    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    color: #111;
    font-size: 40px;
    margin: 55px 0 30px;
    line-height: 28px;
    font-weight: 60px;
    font-size: 60px;">CUSTOMER</p>
                    <div class="visual" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    width: 200px;
    margin: 0 auto;">
                        <img src="https://kr.seaicons.com/wp-content/uploads/2015/10/Coffee-icon2.png" alt="" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    border: 0;
    vertical-align: top;
    width: 100%;">
                    </div>
                    <button class="orange" value="/Account/regist/write-m"  style="    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    overflow: visible;
    padding: 0;
    border: 0;
    background: #111;
    cursor: pointer;
    width: 280px;
    height: 52px;
    line-height: 52px;
    color: #fff;
    font-size: 16px;
    margin: 34px 0 22px;
    border-radius: 1px;
    background-color: #111;">개인회원가입</button>
                     
                </div>
              
            </div>

            <div class="member-item" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    margin: 0;
    border: 1px solid #e5e7ea;
    width: 438px;
    height: 490px;
    float: left;
    margin-left: 40px;">
                <div class="company-member" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    margin: 0;">
                    <p class="title" style="    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    color: #111;
    font-size: 40px;
    margin: 55px 0 30px;
    line-height: 28px;
    font-weght: 60px;
    font-size: 60px;">BUSINESS</p>
                    <div class="visual" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    padding: 0;
    width: 200px;
    margin: 0 auto;">
                        <img src="data:image/png;base64,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" alt="" style="    font-size: 12px;
    color: #494949;
    text-align: center;
    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    border: 0;
    vertical-align: top;
    width: 100%;">
                    </div>
                    <button  class="navy" value="/Account/regist/write-c"formaction="${home }membership/moveBusiness" style="    font-family: Malgun Gothic,맑은 고딕,dotum,돋움,arial,sans-serif;
    overflow: visible;
    padding: 0;
    border: 0;
    background: rgba(0,0,0,0);
    cursor: pointer;
    width: 280px;
    height: 52px;
    line-height: 52px;
    color: #fff;
    font-size: 16px;
    margin: 34px 0 22px;
    border-radius: 1px;
    background-color: #424d5d;">기업회원가입</button>

                </div>
            </div>
        </div>


    </div>
</div>







            </div>
            </form>