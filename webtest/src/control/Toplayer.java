package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Toplayer
 */
public class Toplayer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Toplayer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  

		//response.getWriter().append("Served at: ").append(request.getContextPath());
        
        //connect dbms
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://localhost:3306/Bigdata";
		String userName="root";
		String userPwd="123456789";

        
        
        String c_num=request.getParameter("num");
        try
        {
    	   Class.forName(driverName);
    	   Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
    	   
    	   PreparedStatement ps=dbConn.prepareStatement("select * from class where c_num='"+c_num+"';");
    	   ResultSet rs=ps.executeQuery();
    	   rs.next();
    	   String c_name=rs.getString(2);
    	   response.sendRedirect("player.jsp?Path="+c_num+c_name);
    	   return ;
    	   
        }
        catch (Exception e)
        {
        	e.printStackTrace();
        }
        
        
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
