<%@page import="dao.recruiterdao" %>
<%
    recruiterdao dao =new recruiterdao();
    int aid = Integer.parseInt(request.getParameter("aid"));
    int i= dao.updateCandidateStatus(aid);
    if(i>0){%> 
    <script>alert("Status Updated Successfully");</script>
    <jsp:include page="applied_candidate.jsp"></jsp:include>
    <%}else{%>
    <script>alert("Error !! while updating status ");</script>
    <jsp:include page="applied_candidate.jsp"></jsp:include>
<%}
    
    
%>