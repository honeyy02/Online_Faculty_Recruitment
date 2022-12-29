<%@include file="adminheader.jsp" %>
<%@page import="dao.recruiterdao" %>
<%@page import="dto.recruiterdto" %>
<%@page import="java.util.*" %>

<br><br><br><br>
<center><h2>Recruiter List</h2></center>

<%
    recruiterdao dao = new recruiterdao();
    ArrayList<recruiterdto> list = dao.getrecruiterlist();
%>
<table width="90%" align="center" border="1" bgcolor="black" cellspacing="20" cellpadding="20">

    <thead >
        <tr bgcolor="black">
            <th>Name</th>
            <th>Recruiter</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <%for(recruiterdto rec : list){%>
       <tr bgcolor="white">
            <td><%= rec.getName() %></td>
            <td><%= rec.getRecruiter_type()%></td>
            <td><%= rec.getEmail()%></td>
            <td><%= rec.getContact()%></td>
            <td><%= rec.getAddress()%></td>
            <td><a href="admin_approve_recruiter.jsp?email=<%=rec.getEmail()%>"><%= rec.getStatus()%></a></td>
        </tr>
        <%}%>
    </tbody>
    <tfoot >
        <tr bgcolor="black">
            <th>Name</th>
            <th>Recruiter</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Status</th>
        </tr>
    </tfoot>
</table>