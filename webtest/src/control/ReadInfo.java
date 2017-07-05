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
 * Servlet implementation class ReadInfo
 */
public class ReadInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  
        
        HttpSession session=request.getSession();
        
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://localhost:3306/Bigdata";
		String userName="root";
		String userPwd="123456789";

		String role=(String) session.getAttribute("role");
		String handle=(String) session.getAttribute("handle");
		String from=(String) session.getAttribute("from");
		
		try
		{
			Class.forName(driverName);
			Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);

			if (role.equals("Student"))
			{
				PreparedStatement ps=dbConn.prepareStatement("select * from student where s_handle='"+handle+"';");
				ResultSet rs=ps.executeQuery();
				rs.next();
				session.setAttribute("name", rs.getString(2));
				session.setAttribute("sex",rs.getString(3));
				session.setAttribute("birth", rs.getString(4));
				session.setAttribute("Id", rs.getString(7));
				//session.setAttribute("handle", rs.getString(5));
				session.setAttribute("pwd", rs.getString(6));
				session.setAttribute("Rid", rs.getString(1));
			
			}
			else if (role.equals("Teacher"))
			{
				PreparedStatement ps=dbConn.prepareStatement("select * from teacher where t_handle='"+handle+"';");
				ResultSet rs=ps.executeQuery();
				rs.next();
				session.setAttribute("name", rs.getString(2));
				session.setAttribute("sex",rs.getString(3));
				session.setAttribute("birth", rs.getString(4));
				session.setAttribute("Id", rs.getString(5));
				//session.setAttribute("handle", rs.getString(6));
				session.setAttribute("pwd", rs.getString(7));
				session.setAttribute("Rid", rs.getString(1));
			}
			if (from.equals("login"))   response.sendRedirect("index.jsp");
			else if (from.equals("person"))   response.sendRedirect("person.jsp");
			else  response.sendRedirect("index.jsp");
			return ;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}
