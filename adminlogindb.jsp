<%@page import="dao.admindao" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    admindao dao = new admindao();
    int i = dao.checkAdmin(email,password);
    if(i>0){
            session.setAttribute("email",email);
%>
<script>alert("Admin Login successfull")</script>
<jsp:include page="adminhome.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while login")</script>
<jsp:include page="adminlogin.html"></jsp:include>
<%}%>