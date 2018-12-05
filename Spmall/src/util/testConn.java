package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
public class testConn {
 
	Connection connection = null;
    Statement stm = null;
    PreparedStatement pstmt;
    ResultSet resultSet = null;
 
    public void connection() throws ClassNotFoundException, SQLException {
 
            String str = "jdbc:mysql://192.168.116.131/SPM";
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(str, "jun", "1234");
            
    }

    public ResultSet select(String sql) throws SQLException {
		pstmt = connection.prepareStatement(sql);
		resultSet = pstmt.executeQuery();
        return resultSet;
    }
    
    public void insert(String sql) throws SQLException {
		pstmt = connection.prepareStatement(sql);
		pstmt.execute();
		connection.commit();	
    }
    
    public void Close () throws SQLException {
        if (connection != null) {
        	pstmt.close();
    		connection.close();
        }
    }
}