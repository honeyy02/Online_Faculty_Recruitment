<%@page import="dao.candidatedao" %>
<%@page import="dto.candidatedto" %>

<jsp:useBean id="obj" class="dto.candidatedto" ></jsp:useBean> 
<jsp:setProperty name="obj" property="*"></jsp:setProperty>

<%
        candidatedao dao = new candidatedao();
    int i = dao.addcandidate(obj);
    if(i>0){
%>
<script>alert("Candidate Registration successfull");</script>
<jsp:include page="candidatelogin.html"></jsp:include>
<%}else{%>
<script>alert("Error while Registration");</script>
<jsp:include page="candidatelogin.html"></jsp:include>
<%}%>
%>