package dao;
import dto.recruiterdto;
import java.sql.*;
import java.util.ArrayList;
import myconn.GetConnection;

public class recruiterdao 
{
    public int addRecruiter(recruiterdto obj)
    {
        int i=0;
        Connection con = GetConnection.getConnect();
        String query = "insert into recruiter(name,recruiter_type,email,password,contact,address,status) values(?,?,?,?,?,?,?)";
        try
        {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, obj.getName());
            ps.setString(2, obj.getRecruiter_type());
            ps.setString(3, obj.getEmail());
            ps.setString(4, obj.getPassword());
            ps.setString(5, obj.getContact());
            ps.setString(6, obj.getAddress());
            ps.setString(7, "inactive");
            
            i = ps.executeUpdate();
            con.close();
        }catch(SQLException e)
        {
            System.out.println("Exception : "+e);
        }
        return i;
    }
     public ArrayList<recruiterdto> getrecruiterlist()
     {
         ArrayList<recruiterdto> list = new ArrayList();
         Connection con = GetConnection.getConnect();
         String query = "select * from recruiter";
         try 
         {
             PreparedStatement ps =  con.prepareStatement(query);
             ResultSet rs = ps.executeQuery();
             while(rs.next())
                     {
                        recruiterdto recruiter = new recruiterdto();
                        recruiter.setName(rs.getString(1));
                        recruiter.setRecruiter_type(rs.getString(2));
                        recruiter.setEmail(rs.getString(3));
                        recruiter.setContact(rs.getString(5));
                        recruiter.setAddress(rs.getString(6));
                        recruiter.setStatus(rs.getString(7));
                        list.add(recruiter);
                        
                     }
         }
         catch(SQLException e)
         {
             System.out.println("Exception "+e);
         }
         return list;
     }
     public int checkrecruiter(String email ,String password)
     {
         int i=0;
         Connection con =GetConnection.getConnect();
         String query = "select * from recruiter where email=? and password=? and status=?";
         try
         {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1, email);
             ps.setString(2, password);
             ps.setString(3, "active");
              
             ResultSet rs = ps.executeQuery();
             if(rs.next())
                 i=1;
              
              con.close();
         }
         catch(SQLException e)
         {
             System.out.println("Exception " +e);
         }
         return i;
     }
    
        public recruiterdto getTypeName(String email)
      {
          Connection con = GetConnection.getConnect();
          String query = "select * from recruiter where email=?";
             recruiterdto recruiter=new recruiterdto();
          try
          {
          PreparedStatement ps = con.prepareStatement(query);
          ps.setString(1, email);
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
             
                recruiter.setName(rs.getString(1));
                recruiter.setRecruiter_type(rs.getString(2));
          }
          }catch(SQLException e)
          {
              System.out.println("Excepion : "+e);
          }
          return recruiter;
      }
 
    public int updateCandidateStatus(int aid)
    {
        int i=0;
        Connection con =GetConnection.getConnect();
        String query = "update applied_vacancy set status=? where aid=?";
        try
        {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "shortlisted");
            ps.setInt(2, aid);
            
            i=ps.executeUpdate();
            con.close();
        }catch(SQLException e)
        {
            System.out.println("Exception "+e);
        }
        return i;
    }
    public recruiterdto getdetails(String email)
      {
          Connection con = GetConnection.getConnect();
          String query = "select * from recruiter where email=?";
             recruiterdto recruiter=new recruiterdto();
          try
          {
          PreparedStatement ps = con.prepareStatement(query);
          ps.setString(1, email);
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
                recruiter.setName(rs.getString(1));
                recruiter.setRecruiter_type(rs.getString(2));
                recruiter.setPassword(rs.getString(4));
                recruiter.setContact(rs.getString(5));
                recruiter.setAddress(rs.getString(6));
                recruiter.setStatus(rs.getString(7));
          }
          }catch(SQLException e)
          {
              System.out.println("Excepion : "+e);
          }
          return recruiter;
      }
     public int updaterecruiter(String name,String type,String email,String password,String contact,String address,String status)
    {
        int i=0;
        Connection con = GetConnection.getConnect();
        String query = "update recruiter set name=? , recruiter_type=? ,email=?, password=? , contact=?, address=? status=? where email=?";
        try
        {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, type );
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, contact);
            ps.setString(6, address);
            ps.setString(7, status);
            
            i = ps.executeUpdate();
            con.close();
        }catch(SQLException e)
        {
            System.out.println("Exception : "+e);
        }
        return i;
 

}
}

