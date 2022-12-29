

<%@page import="dao.candidatedao" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    candidatedao dao = new candidatedao();
    int i = dao.checkcandidate(email,password);
    if(i>0){
            session.setAttribute("email",email);
%>
<script>alert("Candidate Login successfull")</script>
<jsp:include page="candidatehome.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while login")</script>
<jsp:include page="candidatelogin.html"></jsp:include>
<%}%>