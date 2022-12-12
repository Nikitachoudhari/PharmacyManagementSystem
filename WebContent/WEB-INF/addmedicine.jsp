<%@page import="com.javatpoint.dao.MedicineDao"%>
<%@page import="com.javatpoint.dao.PharmacyDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Medicine"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=MedicineDao.save(u);
if(i>0){
	response.sendRedirect("/mini/addMedicine.jsp?q=1");
}else{
	response.sendRedirect("/mini/addMedicine.jsp?q=0");
}
%>