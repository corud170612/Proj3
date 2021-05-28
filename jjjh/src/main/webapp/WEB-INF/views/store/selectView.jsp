<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:url var="home" value="/" />
 <ul id="productUl">
            <c:forEach var="List" items="${selectLst}">
           
            <li id="productLi"><a href="${home}store/${List.prodname }">    
               <div class="productBox">
                  <div class="productImgBox">
                     <img src="${home }resources/upload/${List.prodimg1}"
                     class="productImg">
                  </div>
                  <div class="productGuide">
                     <strong>${List.flavor }</strong><br/>
                     <strong>${List.prodname }</strong><br/>
                     <strong>₩ ${List.price }</strong>
                  </div>
                  <div class="storeBox">
                     <img src="${home }resources/upload/${List.storelogo2}"
                     class="storeImg">
                     <br/>
                     <strong>${List.storename }</strong>
                  </div>
               </div>
            </a></li>
            </c:forEach>
      </ul>
      <p style="text-align: center; font-size: 30px; margin-left: 350px; margin-top: 250px;">${NoProduct }</p>