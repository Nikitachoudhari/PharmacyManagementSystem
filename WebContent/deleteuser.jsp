<%@page import="com.javatpoint.dao.PharmacyDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Pharmacy"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	PharmacyDao.delete(u);
response.sendRedirect("viewPatient.jsp");
%>