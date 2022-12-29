<%@page import="dao.recruiterdao" %>
<%@page import="dto.recruiterdto" %>

<jsp:useBean id="obj" class="dto.recruiterdto" ></jsp:useBean> 
<jsp:setProperty name="obj" property="*"></jsp:setProperty>

<%
        recruiterdao dao = new recruiterdao();
    int i = dao.addRecruiter(obj);
    if(i>0){
%>
<script>alert("Recruiter Registration successfull");</script>
<jsp:include page="recruiterlogin.html"></jsp:include>
<%}else{%>
<script>alert("Error while Registration");</script>
<jsp:include page="recruiterlogin.html"></jsp:include>
<%}%>
%>