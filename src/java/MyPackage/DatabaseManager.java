package MyPackage;

import java.sql.*;

public class DatabaseManager {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public void getConnection()throws ClassNotFoundException, SQLException
    {
        Class.forName("oracle.jdbc.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","epsdb","epsdb");
    }
    
    public boolean executeNonQuery(String query) throws ClassNotFoundException, SQLException
    {
        getConnection();
        ps=con.prepareStatement(query);
        int res=ps.executeUpdate();
        if (res>0)
            return true;
        else 
            return false;
    }
    public ResultSet selectQuery(String query) throws ClassNotFoundException, SQLException
    {
        getConnection();
        ps=con.prepareStatement(query);
        rs=ps.executeQuery();
        return rs;
    }
}
