
<%@page import="dao.recruiterdao" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    recruiterdao dao = new recruiterdao();
    int i = dao.checkrecruiter(email,password);
    if(i>0){
            session.setAttribute("email",email);
%>
<script>alert("Recuiter Login successfull")</script>
<jsp:include page="recruiterhome.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while login")</script>
<jsp:include page="recruiterlogin.html"></jsp:include>
<%}%>