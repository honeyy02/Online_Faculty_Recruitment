<%@include file="candidateheader.jsp" %>
<%@page import="dao.vacancydao" %>
<%@page import="dto.vacancydto" %>
<%@page import="java.util.*" %>

<br><br><br><br>
<center><h2>Vacancy List</h2></center>

<%
    vacancydao dao = new vacancydao();
    ArrayList<vacancydto> list = dao.getvacancylist();
%>
<table width="90%" align="center" border="1" bgcolor="black" cellspacing="20" cellpadding="20">

    <thead >
        <tr bgcolor="black">
            <th>Vid</th>
            <th>Post</th>
            <th>Subject</th>
            <th>Location</th>
            <th>Criteria</th>
            <th>Vacancy</th>
            <th>Salary</th>
            <th>Adv_date</th>
            <th>Last date</th>
            <th>Email</th>
            <th>Recruiter</th>
            <th>Name_of_Recruiter</th>
            <th>Status</th>
            

        </tr>
    </thead>
    <tbody>
        <%for(vacancydto rec : list){%>
       <tr bgcolor="white">
           <td><%= rec.getVid()%></td>
            <td><%= rec.getPost()%></td>
            <th><%= rec.getSubject()%></th>
            <td><%= rec.getLocation()%></td>
            <td><%= rec.getCriteria()%></td>
            <td><%= rec.getVacancy()%></td>
            <td><%= rec.getSalary()%></td>
            <td><%= rec.getAdvdate()%></td>
            <td><%= rec.getLastdate()%></td>
            <td><%= rec.getEmail()%></td>
            <td><%= rec.getRecruiter()%></td>
            <td><%= rec.getRecruitername()%></td>
            <th><a href="candidate_apply_vacancy.jsp?email=<%=email%>&vid=<%=rec.getVid()%>&remail=<%=rec.getEmail()%>&post=<%=rec.getPost()%>">Apply</a></th>
        
          
        </tr>
        <%}%>
    </tbody>
    <tfoot >
        <tr bgcolor="black">
            <th>Vid</th>
            <th>Post</th>
            <th>Subject</th>
            <th>Location</th>
            <th>Criteria</th>
            <th>Vacancy</th>
            <th>Salary</th>
            <th>Adv_date</th>
            <th>Last date</th>
            <th>Email</th>
            <th>Recruiter</th>
            <th>Name_of_Recruiter</th>
            <th>Status</th>
            

        </tr>
    </tfoot>
</table>