

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	
	
private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
//Function for random String generation
	public static String randomAlphaNumeric(int count) {
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
		int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
		builder.append(ALPHA_NUMERIC_STRING.charAt(character));
		}
		return builder.toString();
	}

	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mail=request.getParameter("umail");
		String pass=request.getParameter("upass");
		String tk=RegisterServlet.randomAlphaNumeric(10);
		PrintWriter pw=response.getWriter();
		Date dNow = new Date( );
		String date=dNow.toString();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdatabase","root","ANUJ");
			String sql="insert into tempdata(token,email,password,datetime)values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,tk);
			ps.setString(2,mail);
			ps.setString(3,pass);
			
			String to = mail;
			String subject = "Activation Mail";
	        String message = "Click on below link to activate your account.\nhttp://localhost:1234/PreRegd/check?token=";
	        message=message+tk;
	        message=message+"\nThe link will be alive for 4 minutes";
	        String user = "tdmosby30@gmail.com";
	        String password = "Starwars";
	        SendMail.send(to,subject, message, user, password);
	        pw.print("<br>An Activation link has been sent to you in mail");
			ps.setString(4,date);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
