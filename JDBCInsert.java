//Insert into the person table using JDBC

package ANP_D0453;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCInsert {

	public static void main(String[] args) {

		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anudip","root","security");
			System.out.println(con);
			//3.create statement
			PreparedStatement ps=con.prepareStatement("insert into person values(?,?,?)");
			ps.setInt(1,6);
			ps.setString(2,"Harsh");
			ps.setInt(3,2);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record inserted sucessfully");
			//5.Close connection
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}

/*Output:
com.mysql.cj.jdbc.ConnectionImpl@4009e306
1record inserted successfully
 */
