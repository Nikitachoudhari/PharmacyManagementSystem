<%@page import="com.javatpoint.dao.MedicineDao"%>
<%@page import="com.javatpoint.dao.PharmacyDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Medicine"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
MedicineDao.delete(u);
response.sendRedirect("viewMedicine.jsp");
%>