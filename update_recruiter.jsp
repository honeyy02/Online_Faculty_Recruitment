<%@page import="dao.recruiterdao" %>
<%@page import="dto.recruiterdto" %>

<jsp:useBean id="obj" class="dto.recruiterdto" ></jsp:useBean> 
<jsp:setProperty name="obj" property="*"></jsp:setProperty>

<%
        recruiterdao dao = new recruiterdao();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String type = request.getParameter("recruiter_type");
        String address= request.getParameter("address");
        String contact = request.getParameter("contact");
        String status = request.getParameter("status");
        String password = request.getParameter("password");
        
        
       int i = dao.updaterecruiter(name,type,email,contact,address,password,status);
    if(i>0){
%>
<script>alert("Updatation is  successfull");</script>
<jsp:include page="recruiterhome.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while updating");</script>
<jsp:include page="recruiter_profile.jsp"></jsp:include>
<%}%>
%>