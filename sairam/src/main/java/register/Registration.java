package register;
import java.sql.*;
public class Registration {
	public int fun(String fn,String ln,String email,String pwd) {
		try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registrationform", "root", "root");
	//here  is database name, root is  and password
	        Statement stmt = con.createStatement();
	        //ResultSet  = stmt.executeQuery("select * from registration");
	       // while (rs.next())
	            //System.out.println(rs.getString(1) + "  " + rs.getString(2) + "  " + rs.getString(3)+rs.getString());
	       stmt.executeUpdate("INSERT INTO registration (firstname, lastname, email, pwd) " + "VALUES('"+ fn +"','"+ ln +"','"+email+"','"+pwd+"')");
	        con.close();
	    } catch (Exception e) {
	        return -1;
	    }
		return 1;
	}

}
