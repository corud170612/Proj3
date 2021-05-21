<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>
<style type="text/css">
#statusFrame {
   width: 1400px;
   height: auto;
   background: #D8D8D8;
   position: absolute;
   top: 50%;
   left: 50%;
   margin-left: -700px;
   margin-top: -300px;
   padding: 15px;
   margin-bottom: 150px;
}
#FrameTitle{
   font-size: 20px;
   color: #fff;
   font-weight: bold;
   margin: 0;
   position: absolute;
   left: 15%;
   margin-top: 130px;
}
#selectCate {
   width: auto;
   height: 150px;
   background: #fff;
   padding: 5px;
}
#categoryBox {
   width: 1000px;
   height: 150px;
   border-right: 1px solid #BDBDBD;
   float: left;
}
#searchBox{
   width: 390px;
   height: 150px;
   float: right;
   margin-top: -150px;
   }
input[type=text], select {
padding: 8px; 
margin: 8px 0; 
isplay: inline-block; 
border: 1px solid #ccc; 
border-radius: 4px;
 box-sizing: border-box; 
 }
label {
   margin-right: 5px;
}
button {
   background: #1C1C1C;
   color: #fff;
   font-size: 15px;
   font-weight: bold;
   width: 80px;
   height: 40px;
   border-radius: 10px;
}
button:hover {
   background: #D8D8D8;
   color: #111;
}
p{
    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    list-style: none;
    -webkit-text-size-adjust: none;
    -webkit-font-smoothing: subpixel-antialiased;
    font-variant-ligatures: none;
    word-break: keep-all;
    vertical-align: top;
    margin: 0;
    padding: 0;
    border: 0;
    box-sizing: border-box;
    font-style: normal;
    display: inline-block;
    font-family: 'NanumSquare';
    font-weight: 900;
    letter-spacing: -0.5px;
    color: #fff;
    min-width: 7.5px;
    height: 60px;
    line-height: 60px;
    text-align: center;
    position: absolute;
    font-size: 20px;
    }
#viewList {
   height: auto;
   background: #fff;
   margin-top: 20px;
   padding: 30px;
}
table {
   width: 100%;
   text-align: center;
}
td, tr{
border-bottom: 1px solid #444444;
   border-collapse : collapse;
   padding-top: 10px;
   padding-bottom: 10px;
}
tr:hover {
   background: #A4A4A4;
}
</style>
<form>
<div style="width: 100%; height: 1600px;">
   <p id="FrameTitle">판매현황</p>
   <div id="statusFrame">
      <div id="selectCate">
         <div id="categoryBox">
            <strong style="font-size: 20px; color: #848484; font-weight: bold; margin: 0;"   >검색 분류</strong><br/>
            <label>상품명 검색</label><input style="width: 200px; margin-top: 20px; margin-right: 10px;" type="text"
               name="searchProd" placeholder="상품명 입력" value="">
               <label>구독개월별 검색</label><select name="month">
               <option value="">구독 개월선택</option>
               <option value="1">1개월</option>
               <option value="3">3개월</option>
               <option value="6">6개월</option>
               <option value="12">12개월</option>
               <option value="*">전체</option>
            </select><br/>
            <div style="margin-top: 20px;">
               <label>처리 상태 :</label> 
               <input type="radio" name="process" value="완료" />처리완료 
               <input type="radio" name="process" value="처리중" /> 처리중
               <label style="margin-left: 30px;"> 검색 결과 : ${searchNum } 건</label>
            </div>
         </div>
         <div id="searchBox">
            <center>
            <button style="margin-top: 50px;" formaction="${home }status/ConditionSearch">검색</button>
            <button style="margin-top: 50px;"><a onClick="window.location.reload()" >초기화</a></button>   
            </center>
         </div>
      </div>
      <div id="viewList">
      
         <table>
            <tr style="background: #A4A4A4;">
               <td><label>상품번호</label></td>
               <td><label>상품명</label></td>
               <td><label>가격</label></td>
               <td><label>구독 개월</label></td>
               <td><label>구매자 이름</label></td>
               <td><label>구매자 주소</label></td>
               <td><label>구독 원두용량</label></td>
               <td><label>브랜드</label></td>
               <td><label>처리 상태</label></td>
               <td><label>상태변경</label></td>
            </tr>
            <c:forEach var="status" items="${saleLst }">
            <tr>
               <td><label>${status.no }</label></td>
               <td><label>${status.prodname }</label></td>
               <td><label>\ ${status.prodprice }</label></td>
               <td><label>${status.submon } 개월</label></td>
               <td><label>${status.name }</label></td>
               <td><label>${status.address }</label></td>
               <td><label>${status.volume } g</label></td>
               <td><label>${status.store }</label></td>
               <td><label>${status.condition }</label></td>
               <td><button>완료</button></td>
            </tr>
            </c:forEach>
           
         </table>
      </div>
   </div>
</div>
</form>