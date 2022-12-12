<%@page import="com.javatpoint.dao.PharmacyDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Pharmacy"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=PharmacyDao.save(u);
if(i>0){
	response.sendRedirect("/mini/addPatient.jsp?q=1");
}else{
	response.sendRedirect("/mini/addPatient.jsp?q=0");
}
%>