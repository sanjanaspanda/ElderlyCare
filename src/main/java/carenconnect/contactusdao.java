package carenconnect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
public class contactusdao {
	public int registercontact(contactus cu) throws ClassNotFoundException{
		String Insert_into_sql="INSERT INTO contactinfo (FirstName, LastName,city,sub) VALUES (?,?,?,?)";
		int result=0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/carenconnect?useSSL=false", "root", "root");
		  PreparedStatement preparedStatement = connection.prepareStatement(Insert_into_sql); 
		  
	            preparedStatement.setString(1, cu.getFirstName());
	            preparedStatement.setString(2, cu.getLastName());
	            preparedStatement.setString(3, cu.getCity());
	            preparedStatement.setString(4, cu.getSub());
	            result= preparedStatement.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
	}


		return result;
		
	
		
	}
}
