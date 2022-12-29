<%@page import="dao.admindao" %>
<%
    String email = request.getParameter("email");
    
    admindao dao = new admindao();
    int i = dao.approveRecruiter(email);
    if(i>0){
%>
<script>alert("Admin Approved  successfull")</script>
<jsp:include page="recruiterlist.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while approving")</script>
<jsp:include page="recruiterlist.jsp"></jsp:include>
<%}%>