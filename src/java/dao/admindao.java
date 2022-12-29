package dao;
import java.sql.*;
import java.sql.Connection;
import myconn.GetConnection;
public class admindao 
{
    public int checkAdmin(String email,String password)
    {
        int i=0;
        Connection con = GetConnection.getConnect();
        String query = "select * from admin where email=? and password=?";
        try
        {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next())
                i=1;
            con.close();
        }catch(SQLException e)
        {
            System.out.println("Exception : "+e);
        }
        return i;
        
    }
    public int approveRecruiter(String email)
    {
        int i=0;
        Connection con =GetConnection.getConnect();
        String query = "update recruiter set status=? where email=?";
        try
        {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "active");
            ps.setString(2, email);
            
            i=ps.executeUpdate();
            con.close();
        }catch(SQLException e)
        {
            System.out.println("Exception "+e);
        }
        return i;
    }
}
