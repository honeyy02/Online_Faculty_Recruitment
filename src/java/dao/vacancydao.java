package dao;
import dto.vacancydto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import myconn.GetConnection;
import java.util.ArrayList;

public class vacancydao 
{
     public int addvacancy(vacancydto obj)
    {
        int i=0;
        Connection con = GetConnection.getConnect();
        String query = "insert into add_vacancy(post,subject,location,criteria,vacancy,salary,adv_date,lastdate,email,recruiter,nameofrecruiter) values (?,?,?,?,?,?,?,?,?,?,?)";
        try
        {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, obj.getPost());
            ps.setString(2, obj.getSubject());
            ps.setString(3, obj.getLocation());
            ps.setString(4, obj.getCriteria());
            ps.setString(5, obj.getVacancy());
            ps.setString(6, obj.getSalary());
            ps.setString(7, obj.getAdvdate());
            ps.setString(8, obj.getLastdate());
            ps.setString(9, obj.getEmail());
            ps.setString(10, obj.getRecruiter());
            ps.setString(11, obj.getRecruitername());
            
            i = ps.executeUpdate();
            con.close();
        }catch(SQLException e)
        {
            System.out.println("Exception : "+e);
        }
        return i;
    }
     public ArrayList<vacancydto> getvacancylist()
     {
         ArrayList<vacancydto> list = new ArrayList();
         Connection con = GetConnection.getConnect();
         String query ="select * from add_vacancy";
         try
         {
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery();
             while(rs.next())
             {
                 vacancydto dto = new vacancydto();
                 dto.setVid(rs.getInt(1));
                 dto.setPost(rs.getString(2));
                 dto.setSubject(rs.getString(3));
                 dto.setLocation(rs.getString(4));
                 dto.setCriteria(rs.getString(5));
                 dto.setVacancy(rs.getString(6));
                 dto.setSalary(rs.getString(7));
                 dto.setAdvdate(rs.getString(8));
                 dto.setLastdate(rs.getString(9));
                 dto.setEmail(rs.getString(10));
                 dto.setRecruiter(rs.getString(11));
                 dto.setRecruitername(rs.getString(12));
                 list.add(dto);
                 
                 
                 
             }
             
         }
         catch(SQLException e)
                     {
                     System.out.println("Exception "+e);
                     }return list;
         
     }
}
