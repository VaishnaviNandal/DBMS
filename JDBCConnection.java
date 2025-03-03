//To establish JDBCConnection

package ANP_D0453;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anudip","root","security");
			System.out.println(con);
			//3.Create statement
			Statement stmt=con.createStatement();
			//4.Execute queries
			ResultSet rs=stmt.executeQuery("select * from person");
			while(rs.next())
			{
				System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
			}
			//5.Close connection
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}

/*Output:
com.mysql.cj.jdbc.ConnectionImpl@4009e306
1 Raj 22
2 Shubham 24
3 Akash 25
4 Vaishnavi 21
5 Uday 28
 */
