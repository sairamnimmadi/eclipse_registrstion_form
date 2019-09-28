package register;

import java.sql.*;

public class Login {
	
	public boolean show(String email,String pwd) {
		int flag=0;
		
		try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registrationform", "root", "root");
	//here sonoo is database name, root is username and password
	        Statement stmt = con.createStatement();
	        //ResultSet rs = stmt.executeQuery("select * from registration");
	       // while (rs.next())
	            //System.out.println(rs.getString(1) + "  " + rs.getString(2) + "  " + rs.getString(3)+rs.getString());
	       String query="SELECT * FROM registration where email = '"+ email +"' and pwd = '"+ pwd +"'";
	       ResultSet rs = stmt.executeQuery(query);
	       if(rs.next()) flag=1;
	       con.close();
	    } catch (Exception e) {
	        flag=0;
	    }
		if(flag>0) return true;
		else return false;
	}
	

}
