<%@include file="candidateheader.jsp" %>
<%@page import="dao.appliedvacancydao" %>
<%@page import="dto.aplliedvacancy" %>
<%@page import="java.util.*" %>
<br><br><br><br>
<center><h2>Applied Candidate List</h2></center>

<%
    String email1 = (String)session.getAttribute("email");
    appliedvacancydao dao = new appliedvacancydao();
    ArrayList<aplliedvacancy> list = dao.getmyappliedlist(email1);
%>
<table width="90%" align="center" border="1" bgcolor="black" cellspacing="20" cellpadding="20">

    <thead >
        <tr bgcolor="black">
            <th>AId</th>
            <th>Vid</th>
            <th>Candidate_email</th>
            <th>Recruiter_email</th>
            <th>Post</th>
            <th>Status</th>
            

        </tr>
    </thead>
    <tbody>
        <%for(aplliedvacancy rec : list){%>
       <tr bgcolor="white">
           <td><%=rec.getAid() %></td>
           <td><%= rec.getVid()%></td>
            <td><%= rec.getemail()%></td>
            <th><%= rec.getRemail()%></th>
            <td><%= rec.getPost()%></td>
            <th><%=rec.getStatus() %></th>
        
          
        </tr>
        <%}%>
    </tbody>
    <tfoot >
        <tr bgcolor="black">
            <tr bgcolor="black">
            <th>AId</th>
           
                <th>Vid</th>
            <th>Candidate_email</th>
            <th>Recruiter_email</th>
            <th>Post</th>
            <th>Status</th>
            

        </tr>
      
    </tfoot>
</table>