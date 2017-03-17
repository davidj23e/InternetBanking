

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckServlet
 */
@WebServlet("/check")
public class CheckServlet extends HttpServlet {
	
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=request.getQueryString();
		String query=url.substring(url.lastIndexOf("=") + 1);
		String date="";
		String email="";
		PrintWriter pw=response.getWriter();
		SimpleDateFormat formatter = new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdatabase","root","ANUJ");
			Statement s=con.createStatement();
		    ResultSet rs=s.executeQuery("Select * from tempdata"); 
		    		    while(rs.next())
		    {	
		    	if(query.equals(rs.getString(1)))
		    	{
		    		date=rs.getString(4);
		    		email=rs.getString(2);
		    	}
		    	
		    } 
		    
			
			
			Date nowdate = formatter.parse(date);  
			Date dNow = new Date( );
	         
	        long difference=dNow.getTime() - nowdate.getTime() ;
	        
	        
	        if(difference>100000000)
	        {
	        	request.getRequestDispatcher("blank.html").include(request, response);

	        	pw.print("<br>The link has expired!!! Register again");
	        	String sql3="delete from tempdata where token = ? ";
	        	PreparedStatement ps3=con.prepareStatement(sql3);
				ps3.setString(1,query);
				ps3.executeUpdate();
				pw.print("<h3 style='color:black'>You will be redirected to registration page within 5 seconds</h3>");
	    		pw.print("<META HTTP-EQUIV='refresh' CONTENT='5;URL=index.html'>");
	        }
	        else
	        {
	        	request.getRequestDispatcher("Register.jsp?mail="+email+"").include(request, response);
	        }
	        
	        
	        con.close();
		
		}catch(Exception e){
			
		}
		
	}

}
