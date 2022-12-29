<%@page import="dao.vacancydao" %>
<%@page import="dto.vacancydto" %>

<jsp:useBean id="obj" class="dto.vacancydto" ></jsp:useBean> 
<jsp:setProperty name="obj" property="*"></jsp:setProperty>

<%
        vacancydao dao = new vacancydao();
    int i = dao.addvacancy(obj);
    if(i>0){
%>
<script>alert("Vacancy added successfull");</script>
<jsp:include page="recruiterhome.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while Adding vacancy");</script>
<jsp:include page="addvacancy.jsp"></jsp:include>
<%}%>
%>