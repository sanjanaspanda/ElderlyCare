package carenconnect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;

import carenconnect.user;
public class userdao {
	public int registeruser(user u) throws ClassNotFoundException{
		String Insert_into_sql="INSERT INTO Credentials (username, passwd) VALUES (?,?)";
		int result=0;
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/carenconnect?useSSL=false", "root", "root");
		  PreparedStatement preparedStatement = connection.prepareStatement(Insert_into_sql); 
		  
	            preparedStatement.setString(1, u.getUsername());
	            preparedStatement.setString(2, u.getPasswd());
	            result= preparedStatement.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
	}


		return result;
		
	
		
	}
	public int loginuser(user u)  throws ClassNotFoundException{
		String Insert_into_sql=" SELECT * from credentials where username=? and passwd=?";
		int result=0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/carenconnect?useSSL=false", "root", "root");
		  PreparedStatement preparedStatement = connection.prepareStatement(Insert_into_sql); 
		  
	            preparedStatement.setString(1, u.getUsername());
	            preparedStatement.setString(2, u.getPasswd());
	            ResultSet rs = preparedStatement.executeQuery();
	            result=rs.next() ? 1 :0;
	}
	catch (Exception e) {
		e.printStackTrace();
	}


		return result;
	
	

}
}