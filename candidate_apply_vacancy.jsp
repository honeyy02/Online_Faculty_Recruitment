<%@page import="dto.aplliedvacancy" %>
<%@page import="dao.appliedvacancydao"%>

<%
    String candidateemail = request.getParameter("email");
    String recruiteremail = request.getParameter("remail");
    String post = request.getParameter("post");
    int vid = Integer.parseInt(request.getParameter("vid"));
    String status = "Received";

    appliedvacancydao dao = new appliedvacancydao();
    int i = dao.candidateapplyvacancy(vid,candidateemail,recruiteremail,post,status);
    if(i>0)
    {
%>
<script>alert("Candidate Applied Vacancy Successfully")</script>
<jsp:include page="candidatehome.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while Applying for Vacancy")</script>
<jsp:include page="vacancylist.jsp"></jsp:include>
<%}%>