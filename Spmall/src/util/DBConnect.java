package util;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.naming.Context;
import javax.naming.NamingException;
public class DBConnect extends Object {
	static private DBConnect instance;
    static private DBConnectionPool pool;

    private DBConnect() {
        init();
    }
    
    private void init() {
        loadDrivers();
        createPools();
    }
    
    public void destroy() {
    }
    
    static synchronized public DBConnect getInstance()     {
        
        if (instance == null) {
            instance = new DBConnect();
        }
        return instance;
    }
    
    public void freeConnection(Connection con) {
        pool.freeConnection(con);
    }
    
    public Connection getConnection() {
        return pool.getConnection();
    }
    
    public synchronized void release() {
        pool.release();
    }

    private void createPools() {
		    String url = "jdbc:mysql://192.168.116.131/SPM";
            String user = "jun";
            String password = "1234";
            pool =  new DBConnectionPool(url, user, password);
    }
     
    private void loadDrivers() {
        try {
			    Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (Exception e) {
                System.out.println("Can't register JDBC driver: " + e.getMessage());
        }
    }

//inner class

    class DBConnectionPool {

        private Vector freeConnections = new Vector();
        private String url;
        private String password;
        private String user;
	
        public DBConnectionPool(String url, String user, String password){
            this.url = url;
            this.user = user;
            this.password = password;
        }

        public synchronized void freeConnection(Connection con) {
            if (con != null) {
            	freeConnections.addElement(con);
                notifyAll();
            }
        }

        public synchronized Connection getConnection() {
            Connection con=null;
   
            if (freeConnections.size() > 0) {
                con = (Connection) freeConnections.firstElement();
            	freeConnections.removeElementAt(0);

    	        try {
                    if (con.isClosed()) {
                        con = getConnection();
                    }
        	    } catch (SQLException e) {
                    con = getConnection();
        	    }

            }else {
                con = newConnection();
            }
            return con;
        }//getconnection
        
        public synchronized void release() {
            Enumeration allConnections = freeConnections.elements();
            while (allConnections.hasMoreElements()) {
                Connection con = (Connection) allConnections.nextElement();
                try {
                    System.out.println("all connection close...");
                    con.close();
                } catch (SQLException e) {
                    System.out.println("Can't close connection for pool ");
                }
            }
            freeConnections.removeAllElements();
        }
        
        private Connection newConnection() {
         
            Connection con = null;
            
            try {
                 con = DriverManager.getConnection(url, user, password);
            } catch (SQLException e) {
                System.out.println("Can't create a new connection for " + url);
                return null;
            }
            return con;
        }
    }//inner class dbconnectionpool
}
