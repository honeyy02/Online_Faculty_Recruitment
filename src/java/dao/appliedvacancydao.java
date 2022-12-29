
package dao;
import java.util.*;
import java.sql.*;
import myconn.GetConnection;
import dto.aplliedvacancy;

public class appliedvacancydao
{
    public int candidateapplyvacancy(int id ,String email ,String remail ,String post ,String status)
            {
                int i=0;
                Connection con = GetConnection.getConnect();
                String query = "insert into applied_vacancy (id,candidate_email,recruiter_email,post,status) values (?,?,?,?,?)";
                 try
        {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, email);
            ps.setString(3, remail);
            ps.setString(4, post);
            ps.setString(5, status);
            
            i = ps.executeUpdate();
            con.close();
        }catch(SQLException e)
        {
            System.out.println("Exception : "+e);
        }
        return i;
            }
    public ArrayList<aplliedvacancy> getappliedcandidatelist(String email)
     {
         ArrayList<aplliedvacancy> list = new ArrayList();
         Connection con = GetConnection.getConnect();
         String query ="select * from applied_vacancy where recruiter_email=?";
         try
         {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1, email);
             ResultSet rs = ps.executeQuery();
             while(rs.next())
             {
                 aplliedvacancy dto = new aplliedvacancy();
                 dto.setAid(rs.getInt(1));
                 dto.setVid(rs.getInt(2));
                 dto.setemail(rs.getString(3));
                 dto.setRemail(rs.getString(4));
                 dto.setPost(rs.getString(5));
                 dto.setStatus(rs.getString(6));
            
                 list.add(dto);
                 
                 
                 
             }
             
         }
         catch(SQLException e)
                     {
                     System.out.println("Exception "+e);
                     }return list;
         
}
    public ArrayList<aplliedvacancy> getmyappliedlist(String email)
     {
         ArrayList<aplliedvacancy> list = new ArrayList();
         Connection con = GetConnection.getConnect();
         String query ="select * from applied_vacancy where candidate_email=?";
         try
         {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1, email);
             ResultSet rs = ps.executeQuery();
             while(rs.next())
             {
                 aplliedvacancy dto = new aplliedvacancy();
                 dto.setAid(rs.getInt(1));
                 dto.setVid(rs.getInt(2));
                 dto.setemail(rs.getString(3));
                 dto.setRemail(rs.getString(4));
                 dto.setPost(rs.getString(5));
                 dto.setStatus(rs.getString(6));
            
                 list.add(dto);
                 
                 
                 
             }
             
         }
         catch(SQLException e)
                     {
                     System.out.println("Exception "+e);
                     }return list;
         
}
}
