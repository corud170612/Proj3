<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%@ include file="common/header.jspf" %> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="home" value="/"/>
<html style="background: #111;">
<body >



<%@ include file="common/top.jsp" %>

<c:import url="${home }${formpath }"/>

 
</body>

</html>