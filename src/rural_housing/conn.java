package rural_housing;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 * 
 * 
 */
import java.sql.*;
public class conn {
    
    public Connection getconn()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tp1?autoReconnect=true&useSSL=false", "root","csd@3398" );
            return con;
        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
    return null;
}
}
